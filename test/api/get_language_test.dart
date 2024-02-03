import 'package:flutter_test/flutter_test.dart';
import 'package:re_highlight/languages/all.dart';

import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  highlight.registerLanguages(builtinAllLanguages);

  group('.getLanguage()', () {
    test('should get an existing language', () {
      final Mode? result = highlight.getLanguage('python');

      expect(result != null, true);
    });

    test('should get an existing language by alias', () {
      final Mode? result = highlight.getLanguage('py');

      expect(result != null, true);
    });

    test('should be case insensitive', () {
      final Mode? result = highlight.getLanguage('pYTHOn');

      expect(result != null, true);
    });

    test('should return undefined', () {
      final Mode? result = highlight.getLanguage('-impossible-');

      expect(result == null, true);
    });

    test('should get the csharp language by c# alias', () {
      final Mode? result = highlight.getLanguage('c#');

      expect(result != null, true);
      expect(result, highlight.getLanguage('csharp'));
    });
  });

}