part of 're_highlight.dart';

typedef CompilerExt = void Function(Mode mode, Mode? parent);

/// TODO: We need negative look-behind support to do this properly
///
/// Skip a match if it has a preceding dot
///
/// This is used for `beginKeywords` to prevent matching expressions such as
/// `bob.keyword.do()`. The mode compiler automatically wires this up as a
/// special _internal_ 'on:begin' callback for modes with `beginKeywords`
///
void _skipIfHasPrecedingDot(
  EnhancedMatch match,
  ModeCallbackResponse response,
) {
  final String? before = match.start > 0 ? match.input[match.start - 1] : null;
  if (before == '.') {
    response.ignoreMatch();
  }
}

void _scopeClassName(Mode mode, Mode? parent) {
  // Added by reqable, delete className value before using.
  if (mode.className == 'delete') {
    mode.className = null;
  }
  // eslint-disable-next-line no-undefined
  if (mode.className != null) {
    mode.scope = mode.className;
    mode.className = null;
  }
}

/// `beginKeywords` syntactic sugar
void _beginKeywords(Mode mode, Mode? parent) {
  if (parent == null) {
    return;
  }
  if (mode.beginKeywords == null) {
    return;
  }

  // for languages with keywords that include non-word characters checking for
  // a word boundary is not sufficient, so instead we check for a word boundary
  // or whitespace - this does no harm in any case since our keyword engine
  // doesn't allow spaces in keywords anyways and we still check for the boundary
  // first
  mode.begin =
      '\\b(${mode.beginKeywords!.split(' ').join('|')})(?!\\.)(?=\\b|\\s)';
  mode.beforeBegin = _skipIfHasPrecedingDot;
  mode.keywords = mode.keywords ?? mode.beginKeywords;
  mode.beginKeywords = null;
  // prevents double relevance, the keywords themselves provide
  // relevance, the mode doesn't need to double it
  // eslint-disable-next-line no-undefined
  mode.relevance ??= 0;
}

/// Allow `illegal` to contain an array of illegal values
void _compileIllegal(Mode mode, Mode? parent) {
  if (mode.illegal is! List<String>) {
    return;
  }
  mode.illegal = _either(mode.illegal);
}

void _compileMatch(Mode mode, Mode? parent) {
  if (mode.match == null) {
    return;
  }
  if (mode.begin != null || mode.end != null) {
    throw AssertionError("begin & end are not supported with match");
  }
  mode.begin = mode.match;
  mode.match == null;
}

void _compileRelevance(Mode mode, Mode? parent) {
  // eslint-disable-next-line no-undefined
  mode.relevance ??= 1;
}
