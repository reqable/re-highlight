// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langGolo = Mode(
    refs: {},
    name: "Golo",
    keywords: {
      "keyword": [
        "println",
        "readln",
        "print",
        "import",
        "module",
        "function",
        "local",
        "return",
        "let",
        "var",
        "while",
        "for",
        "foreach",
        "times",
        "in",
        "case",
        "when",
        "match",
        "with",
        "break",
        "continue",
        "augment",
        "augmentation",
        "each",
        "find",
        "filter",
        "reduce",
        "if",
        "then",
        "else",
        "otherwise",
        "try",
        "catch",
        "finally",
        "raise",
        "throw",
        "orIfNull",
        "DynamicObject|10",
        "DynamicVariable",
        "struct",
        "Observable",
        "map",
        "set",
        "vector",
        "list",
        "array"
      ],
      "literal": ["true", "false", "null"]
    },
    contains: <Mode>[
      HASH_COMMENT_MODE,
      QUOTE_STRING_MODE,
      C_NUMBER_MODE,
      Mode(className: 'meta', begin: "@[A-Za-z]+")
    ]);
