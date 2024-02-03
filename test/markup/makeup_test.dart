import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart';
import 'package:re_highlight/languages/all.dart';
import 'package:re_highlight/re_highlight.dart';

void main() {
  final Highlight highlight = Highlight();
  highlight.debugMode();
  highlight.registerLanguages(builtinAllLanguages);
  group('highlight() markup', () {
    final String markupPath = join('vendor', 'highlight.js', 'test', 'markup');
    Directory(markupPath).listSync().where((element) =>
      element.statSync().type == FileSystemEntityType.directory
    ).forEach((element) {
      testLanguage(highlight, basename(element.path), element.path);
    });
  });
}

void testLanguage(Highlight highlight, String language, String testDir) {
  group(language, () {
    final List<String> sourceFileNames = [];
    final List<String> expectedFileNames = [];
    Directory(testDir).listSync().where((element) =>
      element.statSync().type == FileSystemEntityType.file && element.path.endsWith('.expect.txt')
    ).forEach((element) {
      expectedFileNames.add(basename(element.path));
      sourceFileNames.add(basename(element.path.replaceAll('.expect.txt', '.txt')));
    });
    for (int i = 0; i < sourceFileNames.length; i++) {
      final String testName = sourceFileNames[i];
      test('should markup $testName', () {
        final String sourceFile = File(join(testDir, testName)).readAsStringSync();
        final String expectedFile = File(join(testDir, expectedFileNames[i])).readAsStringSync();
        final String actual = highlight.highlight(code: sourceFile, language: language).toHtml();
        expect(actual.trim(), expectedFile.trim());
      });
    }
  });
}