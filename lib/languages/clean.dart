// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langClean = Mode(
    refs: {},
    name: "Clean",
    aliases: ["icl", "dcl"],
    keywords: {
      "keyword": [
        "if",
        "let",
        "in",
        "with",
        "where",
        "case",
        "of",
        "class",
        "instance",
        "otherwise",
        "implementation",
        "definition",
        "system",
        "module",
        "from",
        "import",
        "qualified",
        "as",
        "special",
        "code",
        "inline",
        "foreign",
        "export",
        "ccall",
        "stdcall",
        "generic",
        "derive",
        "infix",
        "infixl",
        "infixr"
      ],
      "built_in": "Int Real Char Bool",
      "literal": "True False"
    },
    contains: <Mode>[
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      C_NUMBER_MODE,
      Mode(begin: "->|<-[|:]?|#!?|>>=|\\{\\||\\|\\}|:==|=:|<>")
    ]);
