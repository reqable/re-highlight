part of 're_highlight.dart';

const String _kDefaultKeywordScope = "keyword";
// keywords that should have no default relevance value
const List<String> _kCommonKeywords = [
  'of',
  'and',
  'for',
  'in',
  'not',
  'or',
  'if',
  'then',
  'parent', // common variable name
  'list', // common variable name
  'value', // common variable name
];

class _KeywordData {
  final String scopeName;
  final double score;

  const _KeywordData(this.scopeName, this.score);

  @override
  int get hashCode => Object.hashAll([scopeName, score]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! _KeywordData) {
      return false;
    }
    return other.scopeName == scopeName && other.score == score;
  }

  @override
  String toString() {
    return '[$scopeName, $score]';
  }
}

/// Given raw keywords from a language definition, compile them.
Map<String, _KeywordData> _compileKeywords(
  dynamic rawKeywords,
  bool? caseInsensitive, [
  scopeName = _kDefaultKeywordScope,
]) {
  final Map<String, _KeywordData> compiledKeywords = {};

  /// Compiles an individual list of keywords
  /// Ex: "for if when while|5"
  void compileList(String scopeName, List<String> keywordList) {
    if (caseInsensitive == true) {
      keywordList = keywordList.map((x) => x.toLowerCase()).toList();
    }
    for (final String keyword in keywordList) {
      final List<String> pair = keyword.split('|');
      compiledKeywords[pair[0]] = _KeywordData(
        scopeName,
        _scoreForKeyword(pair[0], pair.length > 1 ? pair[1] : null),
      );
    }
  }

  // input can be a string of keywords, an array of keywords, or a object with
  // named keys representing scopeName (which can then point to a string or array)
  if (rawKeywords is String) {
    compileList(scopeName, rawKeywords.split(' '));
  } else if (rawKeywords is List<String>) {
    compileList(scopeName, rawKeywords);
  } else if (rawKeywords is Map) {
    for (final MapEntry entry in rawKeywords.entries) {
      compiledKeywords.addAll(
        _compileKeywords(entry.value, caseInsensitive, entry.key),
      );
    }
  }
  return compiledKeywords;
}

/// Returns the proper score for a given keyword
/// Also takes into account comment keywords, which will be scored 0 UNLESS
/// another score has been manually assigned.
double _scoreForKeyword(String keyword, String? providedScore) {
  // manual scores always win over common keywords
  // so you can force a score of 1 if you really insist
  if (providedScore?.isNotEmpty ?? false) {
    return double.tryParse(providedScore!) ?? 0;
  }

  return _commonKeyword(keyword) ? 0 : 1;
}

/// Determines if a given keyword is common or not
bool _commonKeyword(String keyword) {
  return _kCommonKeywords.contains(keyword.toLowerCase());
}
