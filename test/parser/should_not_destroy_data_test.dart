import 'package:flutter_test/flutter_test.dart';

import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();

  group('a grammar with a mode that makes a 0 width match', () {
    test('should instead count it as a 1 character match', () {
      highlight.safeMode();
      highlight.registerLanguage('test-language', Mode(
        contains: [
        // broken regex from old Fortran ruleset
          Mode(
            className: 'number',
            begin: '(?=\\b|\\+|-|\\.)(?=\\.\\d|\\d)(?:\\d+)?(?:\\.?\\d*)(?:[de][+-]?\\d+)?\\b\\.?',
          )
        ]
      ));

      expect(highlight.highlight(code: 'The number is 123_longint yes.', language: 'test-language').toHtml(),
        // The whole number isn't highlighted (the rule doesn't handle the _type)
        // But the key thing is the "1" is registered as a match for the rule
        // instead of disappearing from the output completely, which is what
        // would happen previously.
        'The number is <span class="hljs-number">1</span>23_longint yes.'
        // Incorrect prior output:
        // 'The number is <span class="hljs-number"></span>23_longint yes.'
      );
      highlight.debugMode();
      expect(() => highlight.highlight(code: 'The number is 123_longint yes.', language: 'test-language').toHtml(),
        throwsA(predicate((e) => e is AnnotatedError && e.message.startsWith('0 width match regex') && e.languageName == 'test-language')));
    });
  });

}