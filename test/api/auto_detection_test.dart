import 'package:flutter_test/flutter_test.dart';
import 'package:re_highlight/languages/all.dart';

import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  highlight.registerLanguages(builtinAllLanguages);

  group('.autoDetection()', () {
    test('should get an existing language', () {
      final bool result = highlight.autoDetection('python');

      expect(result, true);
    });

    test('should get an existing language by alias', () {
      final bool result = highlight.autoDetection('py');

      expect(result, true);
    });

    test('should be case insensitive', () {
      final bool result = highlight.autoDetection('pYTHOn');

      expect(result, true);
    });

    test('should return undefined', () {
      final bool result = highlight.autoDetection('-impossible-');

      expect(result, false);
    });
  });

}