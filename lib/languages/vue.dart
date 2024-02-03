// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langVue = Mode(
    refs: {},
    subLanguage: "xml",
    contains: <Mode>[
      Mode(
          scope: 'comment',
          begin: "<!--",
          end: "-->",
          contains: <Mode>[
            Mode(
                scope: 'doctag',
                begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                excludeBegin: true,
                relevance: 0),
            Mode(
                begin:
                    "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
          ],
          relevance: 10),
      Mode(
          begin: "^(\\s*)(<script>)",
          end: "^(\\s*)(<\\/script>)",
          subLanguage: "javascript",
          excludeBegin: true,
          excludeEnd: true),
      Mode(
          begin: "^(?:\\s*)(?:<script\\s+lang=([\"'])ts\\1>)",
          end: "^(\\s*)(<\\/script>)",
          subLanguage: "typescript",
          excludeBegin: true,
          excludeEnd: true),
      Mode(
          begin: "^(\\s*)(<style(\\s+scoped)?>)",
          end: "^(\\s*)(<\\/style>)",
          subLanguage: "css",
          excludeBegin: true,
          excludeEnd: true),
      Mode(
          begin:
              "^(?:\\s*)(?:<style(?:\\s+scoped)?\\s+lang=([\"'])(?:s[ca]ss)\\1(?:\\s+scoped)?>)",
          end: "^(\\s*)(<\\/style>)",
          subLanguage: "scss",
          excludeBegin: true,
          excludeEnd: true),
      Mode(
          begin:
              "^(?:\\s*)(?:<style(?:\\s+scoped)?\\s+lang=([\"'])stylus\\1(?:\\s+scoped)?>)",
          end: "^(\\s*)(<\\/style>)",
          subLanguage: "stylus",
          excludeBegin: true,
          excludeEnd: true)
    ]);
