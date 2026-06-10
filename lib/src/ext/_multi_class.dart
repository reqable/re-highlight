part of '../re_highlight.dart';

class _CompiledScope {
  Map<int, String?>? positions;
  Map<int, bool>? emit;
  bool? multi;
  String? wrap;

  _CompiledScope({this.positions, this.emit, this.multi, this.wrap});
}

/// Renumbers labeled scope names to account for additional inner match
/// groups that otherwise would break everything.
///
/// Lets say we 3 match scopes:
///
///   { 1 => ..., 2 => ..., 3 => ... }
///
/// So what we need is a clean match like this:
///
///   (a)(b)(c) => [ "a", "b", "c" ]
///
/// But this falls apart with inner match groups:
///
/// (a)(((b)))(c) => ["a", "b", "b", "b", "c" ]
///
/// Our scopes are now "out of alignment" and we're repeating `b` 3 times.
/// What needs to happen is the numbers are remapped:
///
///   { 1 => ..., 2 => ..., 5 => ... }
///
/// We also need to know that the ONLY groups that should be output
/// are 1, 2, and 5.  This function handles this behavior.
_CompiledScope _remapScopeNames(
  Mode mode,
  List<String> regexes,
  Map<int, String> scope,
) {
  int offset = 0;
  final Map<int, bool> emit = {};
  final Map<int, String?> positions = {};
  for (int i = 1; i <= regexes.length; i++) {
    positions[i + offset] = scope[i];
    emit[i + offset] = true;
    offset += _countMatchGroups(regexes[i - 1]);
  }
  // we use _emit to keep track of which match groups are "top-level" to avoid double
  // output from inside match groups
  return _CompiledScope(positions: positions, emit: emit, multi: true);
}

void _beginMultiClass(Mode mode) {
  if (mode.begin is! List<String>) {
    return;
  }
  if (mode.skip != null ||
      mode.excludeBegin != null ||
      mode.returnBegin != null) {
    throw AssertionError(
      'skip, excludeBegin, returnBegin not compatible with beginScope: {}',
    );
  }
  if (mode.beginScope is! Map<int, String> || mode.beginScope == null) {
    throw AssertionError('beginScope must be Map<int, String>');
  }

  mode.beginScope = _remapScopeNames(mode, mode.begin, mode.beginScope);
  mode.begin = _rewriteBackreferences(mode.begin, joinWith: '');
}

void _endMultiClass(Mode mode) {
  if (mode.end is! List<String>) {
    return;
  }

  if (mode.skip != null || mode.excludeEnd != null || mode.returnEnd != null) {
    throw AssertionError(
      "skip, excludeEnd, returnEnd not compatible with endScope: {}",
    );
  }

  if (mode.endScope is! Map<int, String> || mode.endScope == null) {
    throw AssertionError('endScope must be Map<int, String>');
  }

  mode.endScope = _remapScopeNames(mode, mode.end, mode.endScope);
  mode.end = _rewriteBackreferences(mode.end, joinWith: '');
}

/// this exists only to allow `scope: {}` to be used beside `match:`
/// Otherwise `beginScope` would necessary and that would look weird
///
/// {
///   match: [ /def/, /\w+/ ]
///   scope: { 1: "keyword" , 2: "title" }
/// }
///
void _scopeSugar(Mode mode) {
  if (mode.scope != null && mode.scope is Map<int, String>) {
    mode.beginScope = mode.scope;
    mode.scope = null;
  }
}

void _multiClass(Mode mode, Mode? parent) {
  _scopeSugar(mode);

  if (mode.beginScope is String) {
    mode.beginScope = _CompiledScope(wrap: mode.beginScope);
  }
  if (mode.endScope is String) {
    mode.endScope = _CompiledScope(wrap: mode.endScope);
  }

  _beginMultiClass(mode);
  _endMultiClass(mode);
}
