part of 're_highlight.dart';

const int _kNoMatch = -1;
const int _kMaxKeywordHits = 7;

class Highlight {
  final List<HLPlugin> _plugins;
  final Map<String, Mode> _languages;
  final Map<String, String> _aliases;
  // safe/production mode - swallows more errors, tries to keep running
  // even if a single syntax or parse hits a fatal error
  bool _safeMode;

  Highlight() : _plugins = [], _languages = {}, _aliases = {}, _safeMode = true;

  void debugMode() {
    _safeMode = false;
  }

  void safeMode() {
    _safeMode = true;
  }

  HighlightResult highlight({
    required String code,
    required String language,
    bool ignoreIllegals = true,
  }) {
    final BeforeHighlightContext context = BeforeHighlightContext(
      code: code,
      language: language,
    );
    // the plugin can change the desired language or the code to be highlighted
    // just be changing the object it was passed
    for (HLPlugin plugin in _plugins) {
      plugin.beforeHighlight(context);
    }

    // a before plugin can usurp the result completely by providing it's own
    // in which case we don't even need to call highlight
    final HighlightResult result =
        context.result ??
        _highlight(context.language, context.code, ignoreIllegals);

    result.code = context.code;
    // the plugin can change anything in result to suite it
    for (HLPlugin plugin in _plugins) {
      plugin.afterHighlight(result);
    }
    return result;
  }

  void addPlugin(HLPlugin plugin) {
    _plugins.add(plugin);
  }

  void removePlugin(HLPlugin plugin) {
    _plugins.remove(plugin);
  }

  /// returns a valid highlight result, without actually doing any actual work,
  /// auto highlight starts with this and it's possible for small snippets that
  /// auto-detection may not find a better match
  HighlightResult justTextHighlightResult(String code) {
    final HighlightResult result = HighlightResult(
      code: code,
      illegal: false,
      relevance: 0,
      emitter: _TokenTreeEmitter(),
      top: Mode(disableAutodetect: true, name: 'Plain text', contains: []),
    );
    result._emitter.addText(code);
    return result;
  }

  /// Highlighting with language detection. Accepts a string with the code to
  /// highlight. Returns an object with the following properties:
  ///
  /// - language (detected language)
  /// - relevance (int)
  /// - value (an HTML string with highlighting markup)
  /// - secondBest (object with the same structure for second-best heuristically
  ///   detected language, may be absent)
  AutoHighlightResult highlightAuto(
    String code, [
    List<String>? languageSubset,
  ]) {
    final List<String> languages = languageSubset ?? _languages.keys.toList();
    final HighlightResult plaintext = justTextHighlightResult(code);
    final List<HighlightResult> results =
        languages
            .where((e) => getLanguage(e) != null)
            .where((e) => autoDetection(e))
            .map((name) => _highlight(name, code, false))
            .toList();
    results.insert(0, plaintext); // plaintext is always an option
    // Dart's list.sort() is not stable, here we need a stable sort
    mergeSort<HighlightResult>(
      results,
      compare: (a, b) {
        // sort base on relevance
        if (a.relevance != b.relevance) {
          return b.relevance - a.relevance < 0 ? -1 : 1;
        }

        // always award the tie to the base language
        // ie if C++ and Arduino are tied, it's more likely to be C++
        if (a.language != null && b.language != null) {
          if (getLanguage(a.language!)?.supersetOf == b.language) {
            return 1;
          } else if (getLanguage(b.language!)?.supersetOf == a.language) {
            return -1;
          }
        }

        // otherwise say they are equal, which has the effect of sorting on
        // relevance while preserving the original ordering - which is how ties
        // have historically been settled, ie the language that comes first always
        // wins in the case of a tie
        return 0;
      },
    );
    return AutoHighlightResult(
      best: results[0],
      secondBest: results.length > 1 ? results[1] : null,
    );
  }

  /// Register a language grammar module
  void registerLanguage(String languageName, Mode lang) {
    // give it a temporary name if it doesn't have one in the meta-data
    lang.name ??= languageName;
    _languages[languageName] = lang;
    if (lang.aliases != null) {
      registerAliases(lang.aliases, languageName);
    }
  }

  /// Remove a language grammar module
  void unregisterLanguage(String languageName) {
    _languages.remove(languageName);
    _aliases.removeWhere((key, value) => value == languageName);
  }

  void registerLanguages(Map<String, Mode> languages) {
    languages.forEach(registerLanguage);
  }

  List<String> listLanguages() {
    return _languages.keys.toList();
  }

  Mode? getLanguage(String name) {
    name = name.toLowerCase();
    return _languages[name] ?? _languages[_aliases[name]];
  }

  void registerAliases(dynamic aliasList, String languageName) {
    if (aliasList is String) {
      aliasList = [aliasList];
    }
    aliasList.forEach((alias) => _aliases[alias.toLowerCase()] = languageName);
  }

  /// Determines if a given language has auto-detection enabled
  bool autoDetection(String name) {
    final Mode? lang = getLanguage(name);
    return lang != null && lang.disableAutodetect != true;
  }

  /// private highlight that's used internally and does not fire callbacks
  HighlightResult _highlight(
    String languageName,
    String codeToHighlight,
    bool ignoreIllegals, [
    Mode? continuation,
  ]) {
    final Map<String, int> keywordHits = {};
    final Mode? language = getLanguage(languageName);
    if (language == null) {
      throw AssertionError('Unknown language: "$languageName"');
    }
    final Mode md = _compileLanguage(language);
    Mode top = continuation ?? md;
    final Map<String, Mode?> continuations = {};
    final Emitter emitter = _TokenTreeEmitter();
    String modeBuffer = '';
    double relevance = 0;
    int index = 0;
    int iterations = 0;
    bool resumeScanAtSamePosition = false;

    /// Return keyword data if a match is a keyword
    _KeywordData? keywordData(Mode mode, String matchText) {
      return mode.keywords[matchText];
    }

    void emitKeyword(String keyword, String scope) {
      if (keyword.isEmpty) {
        return;
      }
      emitter.startScope(scope);
      emitter.addText(keyword);
      emitter.endScope();
    }

    void processKeywords() {
      if (top.keywords == null) {
        emitter.addText(modeBuffer);
        return;
      }
      int lastIndex = 0;
      RegExpMatch? match = top.keywordPatternRe!.firstMatch(modeBuffer);
      String buf = '';
      while (match != null) {
        buf += modeBuffer.substring(lastIndex, match.start);
        final String match0 = match[0]!;
        final String word =
            language.caseInsensitive == true ? match0.toLowerCase() : match0;
        final _KeywordData? data = keywordData(top, word);
        if (data != null) {
          final String kind = data.scopeName;
          final double keywordRelevance = data.score;
          emitter.addText(buf);
          buf = '';

          keywordHits[word] = (keywordHits[word] ?? 0) + 1;
          if (keywordHits[word]! <= _kMaxKeywordHits) {
            relevance += keywordRelevance;
          }
          if (kind.startsWith('_')) {
            // _ implied for relevance only, do not highlight
            // by applying a class name
            buf += match0;
          } else {
            final String cssClass = language.classNameAliases?[kind] ?? kind;
            emitKeyword(match0, cssClass);
          }
        } else {
          buf += match0;
        }
        lastIndex = match.end;
        match =
            top.keywordPatternRe!.allMatches(modeBuffer, lastIndex).firstOrNull;
      }
      buf += modeBuffer.substring(lastIndex);
      emitter.addText(buf);
    }

    void processSubLanguage() {
      if (modeBuffer.isEmpty) {
        return;
      }
      final HighlightResult result;
      if (top.subLanguage is String) {
        if (_languages[top.subLanguage] == null) {
          emitter.addText(modeBuffer);
          return;
        }
        result = _highlight(
          top.subLanguage,
          modeBuffer,
          true,
          continuations[top.subLanguage],
        );
        continuations[top.subLanguage] = result._top;
      } else if (top.subLanguage is List<String>) {
        result = highlightAuto(
          modeBuffer,
          top.subLanguage.isEmpty ? null : top.subLanguage,
        );
      } else {
        throw AssertionError(
          'Illegal subLanguage type ${top.subLanguage.runtimeType}',
        );
      }

      // Counting embedded language score towards the host language may be disabled
      // with zeroing the containing mode relevance. Use case in point is Markdown that
      // allows XML everywhere and makes every XML snippet to have a much larger Markdown
      // score.
      if ((top.relevance ?? 0) > 0) {
        relevance += result.relevance;
      }
      emitter._addSublanguage(result._emitter, result.language);
    }

    void processBuffer() {
      if (top.subLanguage != null) {
        processSubLanguage();
      } else {
        processKeywords();
      }
      modeBuffer = '';
    }

    void emitMultiClass(_CompiledScope scope, EnhancedMatch match) {
      int i = 1;
      final int max = match.length - 1;
      while (i <= max) {
        if (scope.emit?[i] != true) {
          i++;
          continue;
        }
        final String? position = scope.positions?[i];
        final String? klass = language.classNameAliases?[position] ?? position;
        final String text = match[i]!;
        if (klass != null) {
          emitKeyword(text, klass);
        } else {
          modeBuffer = text;
          processKeywords();
          modeBuffer = '';
        }
        i++;
      }
    }

    Mode startNewMode(Mode mode, EnhancedMatch match) {
      if (mode.scope != null &&
          mode.scope is String &&
          mode.scope!.isNotEmpty) {
        emitter.openNode(language.classNameAliases?[mode.scope!] ?? mode.scope);
      }
      if (mode.beginScope != null) {
        final _CompiledScope scope = mode.beginScope;
        // beginScope just wraps the begin match itself in a scope
        if (scope.wrap?.isNotEmpty ?? false) {
          emitKeyword(
            modeBuffer,
            language.classNameAliases?[scope.wrap!] ?? scope.wrap!,
          );
          modeBuffer = '';
        } else if (scope.multi == true) {
          // at this point modeBuffer should just be the match
          emitMultiClass(scope, match);
          modeBuffer = '';
        }
      }
      top = mode.copyWith(Mode(parent: top));
      return top;
    }

    Mode? endOfMode(Mode mode, EnhancedMatch match, String matchPlusRemainder) {
      bool matched =
          mode.endRe != null && matchPlusRemainder.startsWith(mode.endRe!);
      if (matched) {
        if (mode.onEnd != null) {
          final ModeCallbackResponse resp = ModeCallbackResponse(mode);
          mode.onEnd!(match, resp);
          if (resp.isMatchIgnored) {
            matched = false;
          }
        }

        if (matched) {
          while (mode.endsParent == true && mode.parent != null) {
            mode = mode.parent!;
          }
          return mode;
        }
      }
      // even if on:end fires an `ignore` it's still possible
      // that we might trigger the end node because of a parent mode
      if (mode.endsWithParent == true) {
        return endOfMode(mode.parent!, match, matchPlusRemainder);
      }
      return null;
    }

    /// Handle matching but then ignoring a sequence of text
    int doIgnore(String lexeme) {
      if ((top.matcher! as _ResumableMultiRegex).regexIndex == 0) {
        // no more regexes to potentially match here, so we move the cursor forward one
        // space
        modeBuffer += lexeme[0];
        return 1;
      } else {
        // no need to move the cursor, we still have additional regexes to try and
        // match at this very spot
        resumeScanAtSamePosition = true;
        return 0;
      }
    }

    /// Handle the start of a new potential mode match
    int doBeginMatch(EnhancedMatch match) {
      final String lexeme = match[0]!;
      final Mode newMode = match.rule!;

      final ModeCallbackResponse resp = ModeCallbackResponse(newMode);
      // first internal before callbacks, then the public ones
      final List<ModeCallback?> beforeCallbacks = [
        newMode.beforeBegin,
        newMode.onBegin,
      ];
      for (final ModeCallback? cb in beforeCallbacks) {
        if (cb == null) {
          continue;
        }
        cb(match, resp);
        if (resp.isMatchIgnored) {
          return doIgnore(lexeme);
        }
      }

      if (newMode.skip == true) {
        modeBuffer += lexeme;
      } else {
        if (newMode.excludeBegin == true) {
          modeBuffer += lexeme;
        }
        processBuffer();
        if (newMode.returnBegin != true && newMode.excludeBegin != true) {
          modeBuffer = lexeme;
        }
      }
      startNewMode(newMode, match);
      return newMode.returnBegin == true ? 0 : lexeme.length;
    }

    /// Handle the potential end of mode
    int doEndMatch(EnhancedMatch match) {
      final String lexeme = match[0]!;
      final String matchPlusRemainder = codeToHighlight.substring(match.start);

      final Mode? endMode = endOfMode(top, match, matchPlusRemainder);
      if (endMode == null) {
        return _kNoMatch;
      }

      final Mode origin = top;
      if (top.endScope?.wrap?.isNotEmpty ?? false) {
        processBuffer();
        emitKeyword(lexeme, top.endScope!.wrap!);
      } else if (top.endScope?.multi == true) {
        processBuffer();
        emitMultiClass(top.endScope, match);
      } else if (origin.skip != null) {
        modeBuffer += lexeme;
      } else {
        if (!(origin.returnEnd == true || origin.excludeEnd == true)) {
          modeBuffer += lexeme;
        }
        processBuffer();
        if (origin.excludeEnd == true) {
          modeBuffer = lexeme;
        }
      }
      do {
        if (top.scope != null) {
          emitter.closeNode();
        }
        if (top.skip != true && top.subLanguage == null) {
          relevance += top.relevance!;
        }
        top = top.parent!;
      } while (top != endMode.parent);
      if (endMode.starts != null) {
        startNewMode(endMode.starts!, match);
      }
      return origin.returnEnd == true ? 0 : lexeme.length;
    }

    void processContinuations() {
      final List<String> list = [];
      for (
        Mode? current = top;
        current != language;
        current = current?.parent
      ) {
        if (current?.scope?.isNotEmpty ?? false) {
          list.insert(0, current!.scope);
        }
      }
      for (final String item in list) {
        emitter.openNode(item);
      }
    }

    EnhancedMatch? lastMatch;

    /// Process an individual match
    int processLexeme(String textBeforeMatch, [EnhancedMatch? match]) {
      String? lexeme = match != null ? match[0] : null;
      // add non-matched text to the current mode buffer
      modeBuffer += textBeforeMatch;

      if (lexeme == null) {
        processBuffer();
        return 0;
      }

      // we've found a 0 width match and we're stuck, so we need to advance
      // this happens when we have badly behaved rules that have optional matchers to the degree that
      // sometimes they can end up matching nothing at all
      // Ref: https://github.com/highlightjs/highlight.js/issues/2140
      if (lastMatch?.type == "begin" &&
          match?.type == "end" &&
          lastMatch?.index == match!.index &&
          lexeme.isEmpty) {
        // spit the "skipped" character that our regex choked on back into the output sequence
        modeBuffer += codeToHighlight.substring(match.index, match.index + 1);
        if (!_safeMode) {
          final AnnotatedError err = AnnotatedError(
            '0 width match regex ($languageName)',
            languageName: languageName,
            badRule: lastMatch!.rule,
          );
          throw err;
        }
        return 1;
      }
      lastMatch = match;

      if (match?.type == "begin") {
        return doBeginMatch(match!);
      } else if (match?.type == "illegal" && !ignoreIllegals) {
        // illegal match, we do not continue processing
        final err = AnnotatedError(
          'Illegal lexeme "$lexeme" for mode "${top.scope ?? '<unnamed>'}"',
          mode: top,
        );
        throw err;
      } else if (match?.type == "end") {
        final int processed = doEndMatch(match!);
        if (processed != _kNoMatch) {
          return processed;
        }
      }

      // edge case for when illegal matches $ (end of line) which is technically
      // a 0 width match but not a begin/end match so it's not caught by the
      // first handler (when ignoreIllegals is true)
      if (match?.type == "illegal" && lexeme.isEmpty) {
        // advance so we aren't stuck in an infinite loop
        return 1;
      }

      // infinite loops are BAD, this is a last ditch catch all. if we have a
      // decent number of iterations yet our index (cursor position in our
      // parsing) still 3x behind our index then something is very wrong
      // so we bail
      if (iterations > 100000 && iterations > match!.index * 3) {
        final AssertionError err = AssertionError(
          'potential infinite loop, way more iterations than matches',
        );
        throw err;
      }

      /*
      Why might be find ourselves here?  An potential end match that was
      triggered but could not be completed.  IE, `doEndMatch` returned NO_MATCH.
      (this could be because a callback requests the match be ignored, etc)

      This causes no real harm other than stopping a few times too many.
      */

      modeBuffer += lexeme;
      return lexeme.length;
    }

    processContinuations();

    try {
      (top.matcher! as _ResumableMultiRegex).considerAll();

      for (;;) {
        final _ResumableMultiRegex matcher =
            top.matcher! as _ResumableMultiRegex;
        iterations++;
        if (resumeScanAtSamePosition) {
          // only regexes not matched previously will now be
          // considered for a potential match
          resumeScanAtSamePosition = false;
        } else {
          matcher.considerAll();
        }
        matcher.lastIndex = index;
        final EnhancedMatch? match = matcher.exec(codeToHighlight);

        if (match == null) {
          break;
        }

        final String beforeMatch = codeToHighlight.substring(
          index,
          match.index,
        );
        final int processedCount = processLexeme(beforeMatch, match);
        index = match.index + processedCount;
      }
      processLexeme(codeToHighlight.substring(index));
      emitter.finalize();
      return HighlightResult(
        code: codeToHighlight,
        language: languageName,
        relevance: relevance,
        illegal: false,
        emitter: emitter,
        top: top,
      );
    } on Error catch (err) {
      if (err is AnnotatedError && err.message.contains('Illegal')) {
        return HighlightResult(
          code: codeToHighlight,
          language: languageName,
          illegal: true,
          relevance: 0,
          illegalBy: IllegalData(
            message: err.message,
            index: index,
            context: codeToHighlight.substring(
              max(0, index - 100),
              min(index + 100, codeToHighlight.length),
            ),
            mode: err.mode,
          ),
          emitter: emitter,
        );
      } else if (_safeMode) {
        return HighlightResult(
          code: codeToHighlight,
          language: languageName,
          illegal: false,
          relevance: 0,
          errorRaised: err,
          emitter: emitter,
          top: top,
        );
      } else {
        rethrow;
      }
    }
  }
}

abstract class HLPlugin {
  void afterHighlight(HighlightResult result);

  void beforeHighlight(BeforeHighlightContext context);
}

class BeforeHighlightContext {
  String code;
  String language;
  HighlightResult? result;

  BeforeHighlightContext({
    required this.code,
    required this.language,
    this.result,
  });
}

class HighlightResult {
  String code;
  double relevance;
  String? language;
  bool illegal;
  Error? errorRaised;
  // private
  final IllegalData? _illegalBy;
  final Emitter _emitter;
  final Mode? _top;

  HighlightResult({
    required this.code,
    required this.relevance,
    this.language,
    required this.illegal,
    this.errorRaised,
    IllegalData? illegalBy,
    required Emitter emitter,
    Mode? top,
  }) : _illegalBy = illegalBy,
       _emitter = emitter,
       _top = top;

  void render(HighlightRenderer renderer) {
    (_emitter as _TokenTree).walk(renderer);
  }

  String toHtml([String classPrefix = 'hljs-']) {
    final String value =
        _HTMLRenderer(_emitter as _TokenTree, classPrefix).value();
    return value.isEmpty ? _escapeHTML(code) : value;
  }
}

class AutoHighlightResult extends HighlightResult {
  HighlightResult? secondBest;

  AutoHighlightResult({required HighlightResult best, this.secondBest})
    : super(
        code: best.code,
        relevance: best.relevance,
        language: best.language,
        illegal: best.illegal,
        errorRaised: best.errorRaised,
        illegalBy: best._illegalBy,
        emitter: best._emitter,
        top: best._top,
      );
}

class IllegalData {
  final String message;
  final String context;
  final int index;
  final Mode? mode;

  IllegalData({
    required this.message,
    required this.context,
    required this.index,
    this.mode,
  });
}

class AnnotatedError extends Error {
  final String message;
  final Mode? mode;
  final String? languageName;
  final Mode? badRule;

  AnnotatedError(this.message, {this.mode, this.languageName, this.badRule});
}
