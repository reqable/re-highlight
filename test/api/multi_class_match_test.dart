import 'package:flutter_test/flutter_test.dart';

import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  highlight.debugMode();
  setUpAll(() {
    final Mode grammar = Mode(
      contains: [
        Mode(
          begin: ["a", "b", "c"],
          className: {
            1: "a",
            3: "c"
          },
          contains: [
            Mode(
              match: "def",
              className: "def"
            )
          ]
        ),
        Mode(
          className: "carrot",
          begin: r'\^\^\^',
          end: r'\^\^\^',
          contains: [
            Mode(
              begin: ["a", "b", "c"],
              className: {
                1: "a",
                3: "c"
              }
            )
          ]
        ),
        Mode(
          match: [
            r'((func))',
            r'\(\)',
            r'{.*}'
          ],
          className: {
            1: "keyword",
            2: "params",
            3: "body"
          }
        )
      ]
    );
    highlight.registerLanguage("test", grammar);
  });
  tearDownAll(() {
    highlight.unregisterLanguage("test");
  });
  test('should support begin', () {
    const String code = "abcdef";
    final HighlightResult result = highlight.highlight(code: code, language: 'test');

    expect(result.toHtml(), '<span class="hljs-a">a</span>b<span class="hljs-c">c</span><span class="hljs-def">def</span>');
    expect(result.relevance, 2);
  });
  test('basic functionality', () {
    const String code = "func(){ test }";
    final HighlightResult result = highlight.highlight(code: code, language: 'test');

    expect(result.toHtml(), '<span class="hljs-keyword">func</span><span class="hljs-params">()</span><span class="hljs-body">{ test }</span>');
    expect(result.relevance, 1);
  });
  test('works inside a classified parent mode', () {
    const String code = "^^^what abc now^^^";
    final HighlightResult result = highlight.highlight(code: code, language: 'test');

    expect(result.toHtml(),
      '<span class="hljs-carrot">^^^what '
      '<span class="hljs-a">a</span>b<span class="hljs-c">c</span>'
      ' now^^^</span>');
  });
}