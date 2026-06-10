part of '../re_highlight.dart';

/// allow beforeMatch to act as a "qualifier" for the match
/// the full match begin must be [beforeMatch][begin]
void _beforeMatchExt(Mode mode, Mode? parent) {
  if (mode.beforeMatch == null) {
    return;
  }
  // starts conflicts with endsParent which we need to make sure the child
  // rule is not matched multiple times
  if (mode.starts != null) {
    throw AssertionError("beforeMatch cannot be used with starts");
  }

  final Mode originalMode = mode.copyWith();
  mode.clean();

  mode.keywords = originalMode.keywords;
  mode.begin = _concat([
    originalMode.beforeMatch,
    _lookahead(originalMode.begin),
  ]);
  mode.starts = Mode(relevance: 0, contains: [originalMode]);
  mode.relevance = 0;
  originalMode.endsParent = true;
  originalMode.beforeMatch = null;
}
