// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langProfile = Mode(
    refs: {},
    name: "Python profiler",
    contains: <Mode>[
      C_NUMBER_MODE,
      Mode(
          begin: "[a-zA-Z_][\\da-zA-Z_]+\\.[\\da-zA-Z_]{1,3}",
          end: ":",
          excludeEnd: true),
      Mode(
          begin: "(ncalls|tottime|cumtime)",
          end: "\$",
          keywords: "ncalls tottime|10 cumtime|10 filename",
          relevance: 10),
      Mode(
          begin: "function calls",
          end: "\$",
          contains: <Mode>[C_NUMBER_MODE],
          relevance: 10),
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      Mode(
          className: 'string',
          begin: "\\(",
          end: "\\)\$",
          excludeBegin: true,
          excludeEnd: true,
          relevance: 0)
    ]);
