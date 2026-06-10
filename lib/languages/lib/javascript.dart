import 'package:re_highlight/re_highlight.dart';

ModeCallback callbackOnBegin = (
  EnhancedMatch match,
  ModeCallbackResponse response,
) {
  final String? match0 = match[0];
  if (match0 == null) {
    return;
  }
  final int afterMatchIndex = match0.length + match.index;
  final String nextChar = match.input.substring(
    afterMatchIndex,
    afterMatchIndex + 1,
  );
  if (
  // HTML should not include another raw `<` inside a tag
  // nested type?
  // `<Array<Array<number>>`, etc.
  nextChar == "<" ||
      // the , gives away that this is not HTML
      // `<T, A extends keyof T, V>`
      nextChar == ",") {
    response.ignoreMatch();
    return;
  }

  // `<something>`
  // Quite possibly a tag, lets look for a matching closing tag...
  if (nextChar == ">") {
    // if we cannot find a matching closing tag, then we
    // will ignore it
    if (!_hasClosingTag(match, afterMatchIndex)) {
      response.ignoreMatch();
    }
  }

  // `<blah />` (self-closing)
  // handled by simpleSelfClosing rule
  final String afterMatch = match.input.substring(afterMatchIndex);

  // some more template typing stuff
  //  <T = any>(key?: string) => Modify<
  if (getRegExp(r'^\s*=').hasMatch(afterMatch)) {
    response.ignoreMatch();
    return;
  }

  // `<From extends string>`
  // technically this could be HTML, but it smells like a type
  // NOTE: This is ugh, but added specifically for https://github.com/highlightjs/highlight.js/issues/3276
  final RegExpMatch? m = getRegExp(r'^\s+extends\s+').firstMatch(afterMatch);
  if (m != null) {
    if (m.start == 0) {
      response.ignoreMatch();
      // eslint-disable-next-line no-useless-return
      return;
    }
  }
};

bool _hasClosingTag(EnhancedMatch match, int after) {
  final String tag = "</${match[0]!.substring(1)}";
  final int pos = match.input.indexOf(tag, after);
  return pos != -1;
}
