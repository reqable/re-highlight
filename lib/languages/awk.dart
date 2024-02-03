// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langAwk = Mode(
    refs: {},
    name: "Awk",
    keywords: {
      "keyword":
          "BEGIN END if else while do for in break continue delete next nextfile function func exit|10"
    },
    contains: <Mode>[
      Mode(className: 'variable', variants: <Mode>[
        Mode(begin: "\\\$[\\w\\d#@][\\w\\d_]*"),
        Mode(begin: "\\\$\\{(.*?)\\}")
      ]),
      Mode(className: 'string', contains: <Mode>[
        BACKSLASH_ESCAPE
      ], variants: <Mode>[
        Mode(begin: "(u|b)?r?'''", end: "'''", relevance: 10),
        Mode(begin: "(u|b)?r?\"\"\"", end: "\"\"\"", relevance: 10),
        Mode(begin: "(u|r|ur)'", end: "'", relevance: 10),
        Mode(begin: "(u|r|ur)\"", end: "\"", relevance: 10),
        Mode(begin: "(b|br)'", end: "'"),
        Mode(begin: "(b|br)\"", end: "\""),
        APOS_STRING_MODE,
        QUOTE_STRING_MODE
      ]),
      REGEXP_MODE,
      HASH_COMMENT_MODE,
      NUMBER_MODE
    ]);
