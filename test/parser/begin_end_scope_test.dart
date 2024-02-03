import 'package:flutter_test/flutter_test.dart';

import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  highlight.debugMode();
  setUpAll(() {
    final Mode grammar = Mode(
      contains: [
        Mode(
          begin: 'xyz',
          end: '123',
          scope: 'string',
          beginScope: 'red',
          endScope: 'green'
        ),
        Mode(
          begin: '123',
          end: ['a', '((b))', 'c', 'd'],
          endScope: { 1: 'apple', 2: 'boy', 4: 'delta' }
        ),
        Mode(
          begin: 'dumb',
          end: 'luck',
          beginScope: 'red',
          endScope: 'green'
        ),
        Mode(
          begin: 'abc',
          beginScope: 'letters',
          contains: [
            Mode( match: 'def', scope: 'more' )
          ]
        ),
      ]
    );
    highlight.registerLanguage('test', grammar);
  });

  tearDownAll(() {
    highlight.unregisterLanguage('test');
  });
  group('beginScope and endScope', () {
    test('should support multi-class', () {
      const String code = "123 abcd";
      final HighlightResult result = highlight.highlight(code: code, language: 'test');
      expect(result.toHtml(), '123 <span class="hljs-apple">a</span><span class="hljs-boy">b</span>c<span class="hljs-delta">d</span>');
    });
    test('should support an outer scope wrapper', () {
      const String code = "xyz me 123";
      final HighlightResult result = highlight.highlight(code: code, language: 'test');

      expect(result.toHtml(),
        '<span class="hljs-string">'
        '<span class="hljs-red">xyz</span> me <span class="hljs-green">123</span>'
        '</span>');
    });
    test('should support textual beginScope & endScope pair', () {
      const String code = "dumb really luck";
      final HighlightResult result = highlight.highlight(code: code, language: 'test');

      expect(result.toHtml(), '<span class="hljs-red">dumb</span> really <span class="hljs-green">luck</span>');
    });
    test('should support textual beginScope', () {
      const String code = "abcdef";
      final HighlightResult result = highlight.highlight(code: code, language: 'test');

      expect(result.toHtml(), '<span class="hljs-letters">abc</span><span class="hljs-more">def</span>');
    });
  });
}