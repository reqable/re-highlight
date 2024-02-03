import 'package:flutter_test/flutter_test.dart';

import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  group('a grammar with look-ahead end matchers', () {
    test('should match successfully', () {
      highlight.registerLanguage('test-language', Mode(
        contains: [
          // broken regex from old Fortran ruleset
          Mode(
            className: "pattern",
            begin: '[A-Z]{3}',
            // followed by at least one space
            end: '\\d{3}(?=\\s+)'
          )
        ]
      ));
      expect(highlight.highlight(code: 'ABC123 is the secret. XYZ123. End of string: ABC123', language: 'test-language').toHtml(),
        // one full match at beginning, other match begins with XYZ but then never terminates,
        // so the end of the parsing finally closes the span tag
        '<span class="hljs-pattern">ABC123</span> is the secret. <span class="hljs-pattern">XYZ123. End of string: ABC123</span>'
      );
    });
  });
}