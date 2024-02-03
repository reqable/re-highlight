import 'package:flutter_test/flutter_test.dart';

import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  group('max keyword hits', () {
    test('should count a keyword 7 times for relevance, no more', () {
      highlight.registerLanguage('test-language', Mode(
        keywords: 'bob suzy|2'
      ));

      HighlightResult result = highlight.highlight(code: 'bob bob bob bob bob bob bob bob bob bob bob bob bob', language: 'test-language');
      expect(result.relevance, 7);

      result = highlight.highlight(code: 'suzy suzy suzy suzy suzy suzy suzy suzy suzy suzy suzy suzy suzy', language: 'test-language');
      expect(result.relevance, 14);

      highlight.unregisterLanguage('test-language');
    });
  });
}