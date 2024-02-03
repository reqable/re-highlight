import 'package:flutter_test/flutter_test.dart';

import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  group("modes containing 'endsWithParent'", () {
    test('should be allowed to be reused', () {
      final Mode TAG_CONTENTS = Mode(className: 'name', begin: r'\w+', starts: Mode(endsWithParent: true));
      final Mode PAREN_TAG = Mode(className: 'tag', begin: r'\(', end: r'\)', contains: [TAG_CONTENTS]);
      final Mode SQUARE_BRACKET_TAG = Mode(className: 'tag', begin: r'\[', end: r'\]', contains: [TAG_CONTENTS]);
      highlight.registerLanguage('test-language', Mode(
        contains: [PAREN_TAG, SQUARE_BRACKET_TAG]
      ));

      expect(highlight.highlight(code: '(abc 123) [abc 123] (abc 123)', language: 'test-language').toHtml(),
        '<span class="hljs-tag">(<span class="hljs-name">abc</span> 123)</span> '
        '<span class="hljs-tag">[<span class="hljs-name">abc</span> 123]</span> '
        '<span class="hljs-tag">(<span class="hljs-name">abc</span> 123)</span>'
      );
    });
  });
}