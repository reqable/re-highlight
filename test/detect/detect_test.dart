import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart';
import 'package:re_highlight/languages/all.dart';
import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  highlight.debugMode();
  highlight.registerLanguages(builtinAllLanguages);
  group('hljs.highlightAuto()', () {
    final List<String> languages = highlight.listLanguages();
    languages.where(highlight.autoDetection).forEach((language) {
      test('should be detected as $language', () {
        final String detectPath = join('vendor', 'highlightjs', 'test', 'detect', language);
        final Directory dir = Directory(detectPath);
        if (!dir.existsSync()) {
          return;
        }
        dir.listSync().where((element) =>
          element.statSync().type == FileSystemEntityType.file
        ).forEach((path) {
          final String content = File(path.path).readAsStringSync();
          final String? detectedLanguage = highlight.highlightAuto(content).language;
          expect(detectedLanguage, language);
        });
      });
    });
  });
  test('compiling the grammars', () {
    final List<String> languages = highlight.listLanguages();
    for (final String lang in languages) {
      highlight.highlight(code: "", language: lang);
    }
  });
}
