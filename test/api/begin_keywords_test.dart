import 'package:flutter_test/flutter_test.dart';

import 'package:re_highlight/re_highlight.dart';

Mode grammar = Mode(
  contains: [
    Mode(
      beginKeywords: 'class'
    )
  ]
);

Mode grammarWithFollowupRule = Mode(
  contains: [
    Mode(beginKeywords: 'class'),
    Mode(begin: 'class', className: 'found'),
  ]
);

void main() {
  final Highlight highlight = Highlight();
  setUp(() {
    highlight.registerLanguage('test', grammar);
    highlight.registerLanguage('has-followup', grammarWithFollowupRule);
  });
  group('beginKeywords', () {
    test('should allow subsequence matches to still succeed', () {
      const String content = 'A.class = self';
      final HighlightResult res = highlight.highlight(code: content, language: 'has-followup');
      expect(res.toHtml(), 'A.<span class="hljs-found">class</span> = self');
    });

    test('should ignore a preceeding .', () {
      const String content = 'A.class = self';
      final HighlightResult res = highlight.highlight(code: content, language: 'test');
      expect(res.toHtml(), 'A.class = self');
    });

    test('should ignore a trailing .', () {
      const String content = 'class.config = true';
      final HighlightResult res = highlight.highlight(code: content, language: 'test');
      expect(res.toHtml(), 'class.config = true');
    });

    test('should detect keywords', () {
      const String content = 'I have a class yes I do.';
      final HighlightResult res = highlight.highlight(code: content, language: 'test');
      expect(res.toHtml(), 'I have a <span class="hljs-keyword">class</span> yes I do.');
    });
  });
}
