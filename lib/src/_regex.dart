part of 're_highlight.dart';

// BACKREF_RE matches an open parenthesis or backreference. To avoid
// an incorrect parse, it additionally matches the following:
// - [...] elements, where the meaning of parentheses and escapes change
// - other escape sequences, so we do not misparse escape sequences as
//   interesting elements
// - non-matching or lookahead parentheses, which do not capture. These
//   follow the '(' with a '?'.
const String _backrefRe = r'\[(?:[^\\\]]|\\.)*\]|\(\??|\\([1-9][0-9]*)|\\.';
RegExp backrefRegExp = RegExp(_backrefRe);

String _concat(List<String?> values) {
  return values.join();
}

String _lookahead(String re) {
  return _concat(['(?=', re, ')']);
}

/// Any of the passed expresssions may match
/// Creates a huge this | this | that | that match
String _either(List<String> args) {
  return args.join('|');
}

int _countMatchGroups(String re) {
  return getRegExp('$re|').allMatches('').first.groupCount;
}

Map<String, RegExp> _regExpCache = {};
RegExp getRegExp(String re) {
  if (_regExpCache.containsKey(re)) {
    return _regExpCache[re]!;
  }
  final RegExp result = RegExp(re);
  _regExpCache[re] = result;
  return result;
}

// **INTERNAL** Not intended for outside usage
// join logically computes regexps.join(separator), but fixes the
// backreferences so they continue to match.
// it also places each individual regular expression into it's own
// match group, keeping track of the sequencing of those match groups
// is currently an exercise for the caller. :-)
String _rewriteBackreferences(
  List<String> regexps, {
  required String joinWith,
}) {
  int numCaptures = 0;
  return regexps
      .map((regex) {
        numCaptures += 1;
        final int offset = numCaptures;
        String out = '';
        while (regex.isNotEmpty) {
          final RegExpMatch? match = backrefRegExp.firstMatch(regex);
          if (match == null) {
            out += regex;
            break;
          }
          final String match0 = match[0]!;
          final String? match1 = match[1];
          out += regex.substring(0, match.start);
          regex = regex.substring(match.start + match0.length);
          if (match0[0] == '\\' && match1 != null) {
            // Adjust the backreference.
            out += '\\${int.parse(match1) + offset}';
          } else {
            out += match0;
            if (match0 == '(') {
              numCaptures++;
            }
          }
        }
        return out;
      })
      .map((re) => '($re)')
      .join(joinWith);
}
