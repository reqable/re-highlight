// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langBnf = Mode(
    refs: {},
    name: "Backus–Naur Form",
    contains: <Mode>[
      Mode(className: 'attribute', begin: "<", end: ">"),
      Mode(begin: "::=", end: "\$", contains: <Mode>[
        Mode(begin: "<", end: ">"),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        APOS_STRING_MODE,
        QUOTE_STRING_MODE
      ])
    ]);
