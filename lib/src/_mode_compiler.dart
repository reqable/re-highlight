part of 're_highlight.dart';

Map<String, RegExp> _cache = {};
RegExp getLangRegEx(String value, Mode language) {
  final String key =
      '${language.name}/${language.caseInsensitive ?? false}/${language.unicodeRegex ?? false}/$value';

  if (_cache[key] == null) {
    _cache[key] = RegExp(
      value,
      multiLine: true,
      caseSensitive: !(language.caseInsensitive ?? false),
      unicode: language.unicodeRegex ?? false,
    );
  }

  return _cache[key]!;
}

/// Builds a regex with the case sensitivity of the current language
RegExp _langRe(Mode language, String value, bool global) {
  return getLangRegEx(value, language);
}

/// Compiles a language definition result
/// Given the raw result of a language definition (Language), compiles this so
/// that it is ready for highlighting code.
Mode _compileLanguage(Mode language) {
  RegExp langRe(String value, [bool global = false]) {
    return _langRe(language, value, global);
  }

  _ResumableMultiRegex buildModeRegex(Mode language, Mode mode) {
    final _ResumableMultiRegex mm = _ResumableMultiRegex(language);

    mode.contains?.forEach(
      (term) => mm.addRule(term.begin, _RegexOption(rule: term, type: 'begin')),
    );

    if (mode.terminatorEnd != null) {
      mm.addRule(mode.terminatorEnd!, _RegexOption(type: 'end'));
    }
    if (mode.illegal != null) {
      mm.addRule(mode.illegal, _RegexOption(type: 'illegal'));
    }

    return mm;
  }

  Mode findRef(Mode mode) {
    if (mode.ref == null) {
      return mode;
    }
    final Mode? ref = language.refs?[mode.ref];
    if (ref == null) {
      throw AssertionError('No ref ${mode.ref} is found!');
    }
    if (ref.ref != null) {
      throw AssertionError('A ref mode should not have ref: ${ref.ref}');
    }
    return ref;
  }

  void extractRef(Mode mode, Mode? parent) {
    mode.contains =
        mode.contains?.cast<Mode>().map((m) {
          m = findRef(m);
          m.variants = m.variants?.cast<Mode>().map(findRef).toList();
          return m;
        }).toList();
    mode.variants = mode.variants?.cast<Mode>().map(findRef).toList();
    mode.starts = mode.starts != null ? findRef(mode.starts!) : null;
  }

  Mode compileMode(Mode mode, [Mode? parent]) {
    final Mode cmode = mode;
    if (mode.isCompiled == true) {
      return cmode;
    }
    for (CompilerExt ext in [
      extractRef,
      _scopeClassName,
      // do this early so compiler extensions generally don't have to worry about
      // the distinction between match/begin
      _compileMatch,
      _multiClass,
      _beforeMatchExt,
    ]) {
      ext(mode, parent);
    }

    language.compilerExtensions?.forEach((ext) => ext(mode, parent));

    // __beforeBegin is considered private API, internal use only
    mode.beforeBegin = null;

    for (CompilerExt ext in [
      _beginKeywords,
      // do this later so compiler extensions that come earlier have access to the
      // raw array if they wanted to perhaps manipulate it, etc.
      _compileIllegal,
      // default to 1 relevance if not specified
      _compileRelevance,
    ]) {
      ext(mode, parent);
    }

    if (mode.ref != null) {
      throw AssertionError('Ref \'${mode.ref}\' should not be here!');
    }

    mode.isCompiled = true;

    String? keywordPattern;
    if (mode.keywords is Map<String, dynamic> &&
        mode.keywords['\$pattern'] != null) {
      // we need a copy because keywords might be compiled multiple times
      // so we can't go deleting $pattern from the original on the first
      // pass
      mode.keywords = Map.of(mode.keywords);
      keywordPattern = mode.keywords['\$pattern'];
      mode.keywords.remove('\$pattern');
    }
    keywordPattern ??= r'\w+';

    if (mode.keywords != null) {
      mode.keywords = _compileKeywords(mode.keywords, language.caseInsensitive);
    }

    cmode.keywordPatternRe = langRe(keywordPattern, true);
    if (parent != null) {
      mode.begin ??= r'\B|\b';
      cmode.beginRe = langRe(cmode.begin);
      if (mode.end == null && mode.endsWithParent != true) {
        mode.end = r'\B|\b';
      }
      if (mode.end != null) {
        cmode.endRe = langRe(cmode.end);
      }
      cmode.terminatorEnd = cmode.end ?? '';
      if (mode.endsWithParent == true && parent.terminatorEnd != null) {
        cmode.terminatorEnd =
            cmode.terminatorEnd! +
            (mode.end != null ? '|' : '') +
            parent.terminatorEnd!;
      }
    }
    if (mode.illegal != null) {
      cmode.illegalRe = langRe(mode.illegal);
    }
    final List<Mode> expandContains = [];
    mode.contains?.forEach((c) {
      expandContains.addAll(_expandOrCloneMode(c.self == true ? mode : c));
    });
    mode.contains = expandContains;
    for (Mode c in mode.contains!) {
      compileMode(c, cmode);
    }

    if (mode.starts != null) {
      compileMode(mode.starts!, parent);
    }
    cmode.matcher = buildModeRegex(language, cmode);
    return cmode;
  }

  language.compilerExtensions ??= [];

  // self is not valid at the top-level
  if (language.contains != null &&
      language.contains!.indexWhere((element) => element.self == true) != -1) {
    throw AssertionError(
      'ERR: contains `self` is not supported at the top-level of a language.  See documentation.',
    );
  }

  // we need a null object, which inherit will guarantee
  language.classNameAliases = Map.of(language.classNameAliases ?? {});

  return compileMode(language);
}

/// Determines if a mode has a dependency on it's parent or not
///
/// If a mode does have a parent dependency then often we need to clone it if
/// it's used in multiple places so that each copy points to the correct parent,
/// where-as modes without a parent can often safely be re-used at the bottom of
/// a mode chain.
bool dependencyOnParent(Mode? mode) {
  if (mode == null) {
    return false;
  }
  return mode.endsWithParent == true || dependencyOnParent(mode.starts);
}

/// Expands a mode or clones it if necessary
///
/// This is necessary for modes with parental dependenceis (see notes on
/// `dependencyOnParent`) and for nodes that have `variants` - which must then be
/// exploded into their own individual modes at compile time.
List<Mode> _expandOrCloneMode(Mode mode) {
  if (mode.variants != null && mode.cachedVariants == null) {
    mode.cachedVariants =
        mode.variants!
            .cast<Mode>()
            .map((variant) {
              return mode.copyWith(variant)..variants = null;
            })
            .toList()
            .cast<Mode>();
  }

  // EXPAND
  // if we have variants then essentially "replace" the mode with the variants
  // this happens in compileMode, where this function is called from
  if (mode.cachedVariants != null) {
    return mode.cachedVariants!;
  }

  // CLONE
  // if we have dependencies on parents then we need a unique
  // instance of ourselves, so we can be reused with many
  // different parents without issue
  if (dependencyOnParent(mode)) {
    return [mode.copyWith(Mode(starts: mode.starts?.copyWith()))];
  }
  // no special dependency issues, just return ourselves
  return [mode];
}

/// Stores multiple regular expressions and allows you to quickly search for
/// them all in a string simultaneously - returning the first match.  It does
/// this by creating a huge (a|b|c) regex - each individual item wrapped with ()
/// and joined by `|` - using match groups to track position.  When a match is
/// found checking which position in the array has content allows us to figure
/// out which of the original regexes / match groups triggered the match.
///
/// The match object itself (the result of `Regex.exec`) is returned but also
/// enhanced by merging in any meta-data that was registered with the regex.
/// This is how we keep track of which mode matched, and what type of rule
/// (`illegal`, `begin`, end, etc).
class _MultiRegex {
  final Mode language;
  final Map<int, _RegexOption> matchIndexes;
  final List<List<dynamic>> regexes;
  int matchAt;
  int position;
  int? lastIndex;
  _MatcherRe? matcherRe;

  _MultiRegex(this.language)
    : matchIndexes = {},
      regexes = [],
      matchAt = 1,
      position = 0;

  // @ts-ignore
  void addRule(String re, _RegexOption opts) {
    opts.position = position++;
    // @ts-ignore
    matchIndexes[matchAt] = opts;
    regexes.add([opts, re]);
    matchAt += _countMatchGroups(re) + 1;
  }

  void compile() {
    List<String> terminators =
        regexes.map((e) => e.last).cast<String>().toList();
    matcherRe = _MatcherRe(
      _langRe(
        language,
        _rewriteBackreferences(terminators, joinWith: '|'),
        true,
      ),
    );
    lastIndex = 0;
  }

  EnhancedMatch? exec(s) {
    if (regexes.isEmpty) {
      return null;
    }
    matcherRe?.lastIndex = lastIndex;
    final RegExpMatch? match = matcherRe?.exec(s);
    if (match == null) {
      return null;
    }
    int index = 1;
    for (; index <= match.groupCount; index++) {
      if (match[index] != null) {
        break;
      }
    }
    List<String?> matches = [];
    for (int i = index; i <= match.groupCount; i++) {
      matches.add(match[i]);
    }
    _RegexOption option = matchIndexes[index]!;
    return EnhancedMatch(
      match: matches,
      input: match.input,
      start: match.start,
      end: match.end,
      rule: option.rule,
      type: option.type,
      position: option.position,
    );
  }
}

/// Created to solve the key deficiently with MultiRegex - there is no way to
/// test for multiple matches at a single location.  Why would we need to do
/// that?  In the future a more dynamic engine will allow certain matches to be
/// ignored.  An example: if we matched say the 3rd regex in a large group but
/// decided to ignore it - we'd need to started testing again at the 4th
/// regex... but MultiRegex itself gives us no real way to do that.
///
/// So what this class creates MultiRegexs on the fly for whatever search
/// position they are needed.
///
/// NOTE: These additional MultiRegex objects are created dynamically.  For most
/// grammars most of the time we will never actually need anything more than the
/// first MultiRegex - so this shouldn't have too much overhead.
///
/// Say this is our search group, and we match regex3, but wish to ignore it.
///
///     regex1 | regex2 | regex3 | regex4 | regex5    ' ie, startAt = 0
///
/// What we need is a new MultiRegex that only includes the remaining
/// possibilities:
///
///     regex4 | regex5                               ' ie, startAt = 3
///
/// This class wraps all that complexity up in a simple API... `startAt` decides
/// where in the array of expressions to start doing the matching. It
/// auto-increments, so if a match is found at position 2, then startAt will be
/// set to 3.  If the end is reached startAt will return to 0.
///
/// MOST of the time the parser will be setting startAt manually to 0.
class _ResumableMultiRegex {
  final Mode language;
  final Map<int, _MultiRegex> multiRegexes;
  final List<List<dynamic>> rules;
  int count;
  int lastIndex;
  int regexIndex;

  _ResumableMultiRegex(this.language)
    : multiRegexes = {},
      rules = [],
      count = 0,
      lastIndex = 0,
      regexIndex = 0;

  _MultiRegex getMatcher(int index) {
    if (multiRegexes[index] != null) {
      return multiRegexes[index]!;
    }
    final _MultiRegex matcher = _MultiRegex(language);
    rules.sublist(min(index, rules.length)).forEach((e) {
      matcher.addRule(e.first, e.last);
    });
    matcher.compile();
    multiRegexes[index] = matcher;
    return matcher;
  }

  bool resumingScanAtSamePosition() {
    return regexIndex != 0;
  }

  void considerAll() {
    regexIndex = 0;
  }

  addRule(String re, _RegexOption opts) {
    rules.add([re, opts]);
    if (opts.type == 'begin') {
      count++;
    }
  }

  EnhancedMatch? exec(s) {
    final _MultiRegex m = getMatcher(regexIndex);
    m.lastIndex = lastIndex;
    EnhancedMatch? result = m.exec(s);
    // The following is because we have no easy way to say "resume scanning at the
    // existing position but also skip the current rule ONLY". What happens is
    // all prior rules are also skipped which can result in matching the wrong
    // thing. Example of matching "booger":

    // our matcher is [string, "booger", number]
    //
    // ....booger....

    // if "booger" is ignored then we'd really need a regex to scan from the
    // SAME position for only: [string, number] but ignoring "booger" (if it
    // was the first match), a simple resume would scan ahead who knows how
    // far looking only for "number", ignoring potential string matches (or
    // future "booger" matches that might be valid.)

    // So what we do: We execute two matchers, one resuming at the same
    // position, but the second full matcher starting at the position after:

    //     /--- resume first regex match here (for [number])
    //     |/---- full match here for [string, "booger", number]
    //     vv
    // ....booger....

    // Which ever results in a match first is then used. So this 3-4 step
    // process essentially allows us to say "match at this position, excluding
    // a prior rule that was ignored".
    //
    // 1. Match "booger" first, ignore. Also proves that [string] does non match.
    // 2. Resume matching for [number]
    // 3. Match at index + 1 for [string, "booger", number]
    // 4. If #2 and #3 result in matches, which came first?
    if (resumingScanAtSamePosition()) {
      if (result != null && result.index == lastIndex) {
        // result is position +0 and therefore a valid
        // "resume" match so result stays result
      } else {
        // use the second matcher result
        final _MultiRegex m2 = getMatcher(0);
        m2.lastIndex = lastIndex + 1;
        result = m2.exec(s);
      }
    }

    if (result != null) {
      regexIndex += result.position + 1;
      if (regexIndex == count) {
        // wrap-around to considering all matches again
        considerAll();
      }
    }
    return result;
  }
}

class _RegexOption {
  final Mode? rule;
  final String type;
  late int position;

  _RegexOption({this.rule, required this.type});
}

class EnhancedMatch extends _RegexOption {
  final List<String?> match;
  final String input;
  final int start;
  final int end;

  EnhancedMatch({
    required this.match,
    required this.input,
    required this.start,
    required this.end,
    super.rule,
    required super.type,
    required int position,
  }) {
    super.position = position;
  }

  String? operator [](int group) => match[group];

  int get index => start;

  int get length => match.length;
}

class _MatcherRe {
  RegExp regex;
  int? lastIndex;

  _MatcherRe(this.regex);

  RegExpMatch? exec(String input) {
    return regex.allMatches(input, lastIndex ?? 0).firstOrNull;
  }
}
