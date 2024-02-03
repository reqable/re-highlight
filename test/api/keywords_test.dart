import 'package:flutter_test/flutter_test.dart';

import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  group('computing the relevance score of a language', () {
    test('should ignore common keywords', () {
      final Mode grammar = Mode(
        keywords:
            'farmer river weeds'
            ' and of' // keywords that happen to also be common
      );
      const String code = "farmer and of river weeds";
      highlight.registerLanguage("test", grammar);
      final HighlightResult result = highlight.highlight(code: code, language: 'test');
      expect(result.relevance, 3);
    });
    test('should not ignore weighted common keywords', () {
      final Mode grammar = Mode(
        keywords:
            'farmer river weeds'
            ' and of|10' // keywords that happen to also be common
      );
      const String code = 'farmer and of river weeds';
      highlight.registerLanguage("test", grammar);
      final HighlightResult result = highlight.highlight(code: code, language: 'test');
      expect(result.relevance, 13);
    });
    test('should not ignore weighted common keywords (if 1 is forced)', () {
      final Mode grammar = Mode(
        keywords:
          'farmer river weeds'
          ' and of|1' // keywords that happen to also be common
      );
      const String code = 'farmer and of river weeds';
      highlight.registerLanguage("test", grammar);
      final HighlightResult result = highlight.highlight(code: code, language: 'test');
      expect(result.relevance, 4);
    });
  });
}