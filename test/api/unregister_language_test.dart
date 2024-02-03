import 'package:flutter_test/flutter_test.dart';

import 'package:re_highlight/re_highlight.dart';

final Mode jQuery = Mode(
  name: "jQuery",
  contains: [
    Mode(
      beginKeywords: "class"
    )
  ]
);

void main() {
  final Highlight highlight = Highlight();
  setUp(() {
    highlight.registerLanguage('test', jQuery);
  });

  group('.unregisterLanguage()', () {
    test('should remove an existing language', () {
      highlight.unregisterLanguage('test');
      final Mode? result = highlight.getLanguage('test');
      expect(result, null);
    });

    test('should remove an existing language and its aliases', () {
      highlight.registerAliases(['jquery', 'jqueryui'], 'test');
      {
        final Mode? result = highlight.getLanguage("jquery");
        expect(result?.name, 'jQuery');
      }
      highlight.unregisterLanguage('test');
      {
        final Mode? result = highlight.getLanguage("jquery");
        expect(result, null);
      }
    });
  });
}