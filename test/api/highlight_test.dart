import 'package:flutter_test/flutter_test.dart';
import 'package:re_highlight/languages/all.dart';

import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  highlight.registerLanguages(builtinAllLanguages);

  group('.highlight()', () {
    test('should support ignoreIllegals', () {
      String code = "float # float";
      HighlightResult result = highlight.highlight(code: code, language: 'java', ignoreIllegals: true);
      expect(result.toHtml(), '<span class="hljs-type">float</span> # <span class="hljs-type">float</span>');

      code = 'float # float';
      result = highlight.highlight(code: code, language: 'java', ignoreIllegals: false);
      expect(result.toHtml(), 'float # float');
      expect(result.illegal, true);

      // defaults to true
      code = 'float # float';
      result = highlight.highlight(code: code, language: 'java');
      expect(result.toHtml(), '<span class="hljs-type">float</span> # <span class="hljs-type">float</span>');
      expect(result.illegal, false);
    });
    test('should use new API with options', () {
      const String code = 'public void moveTo(int x, int y, int z);';
      final HighlightResult result = highlight.highlight(code: code, language: 'java');

      expect(result.toHtml(),
        '<span class="hljs-keyword">public</span> '
        '<span class="hljs-keyword">void</span> <span class="hljs-title function_">moveTo</span>'
        '<span class="hljs-params">(<span class="hljs-type">int</span> x, '
        '<span class="hljs-type">int</span> y, '
        '<span class="hljs-type">int</span> z)</span>;'
      );
    });
    test('should works without continuation', () {
      const String code = "public void moveTo(int x, int y, int z);";
      final HighlightResult result = highlight.highlight(code: code, language: 'java');

      expect(result.toHtml(),
        '<span class="hljs-keyword">public</span> '
        '<span class="hljs-keyword">void</span> <span class="hljs-title function_">moveTo</span>'
        '<span class="hljs-params">(<span class="hljs-type">int</span> x, '
        '<span class="hljs-type">int</span> y, '
        '<span class="hljs-type">int</span> z)</span>;'
      );
    });
  });
}