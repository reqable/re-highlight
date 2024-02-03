// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langNix = Mode(
    refs: {
      '~contains~3': Mode(className: 'string', contains: <Mode>[
        Mode(className: 'char.escape', begin: "''\\\$"),
        Mode(className: 'subst', begin: "\\\$\\{", end: "\\}", keywords: {
          "keyword": [
            "rec",
            "with",
            "let",
            "in",
            "inherit",
            "assert",
            "if",
            "else",
            "then"
          ],
          "literal": ["true", "false", "or", "and", "null"],
          "built_in": [
            "import",
            "abort",
            "baseNameOf",
            "dirOf",
            "isNull",
            "builtins",
            "map",
            "removeAttrs",
            "throw",
            "toString",
            "derivation"
          ]
        }, contains: <Mode>[
          NUMBER_MODE,
          HASH_COMMENT_MODE,
          C_BLOCK_COMMENT_MODE,
          Mode(ref: '~contains~3'),
          Mode(
              begin: "[a-zA-Z0-9-_]+(\\s*=)",
              returnBegin: true,
              relevance: 0,
              contains: <Mode>[
                Mode(className: 'attr', begin: "\\S+", relevance: 0.2)
              ])
        ])
      ], variants: <Mode>[
        Mode(begin: "''", end: "''"),
        Mode(begin: "\"", end: "\"")
      ]),
      '~contains~3~contains~1~contains~4': Mode(
          begin: "[a-zA-Z0-9-_]+(\\s*=)",
          returnBegin: true,
          relevance: 0,
          contains: <Mode>[
            Mode(className: 'attr', begin: "\\S+", relevance: 0.2)
          ])
    },
    name: "Nix",
    aliases: ["nixos"],
    keywords: {
      "keyword": [
        "rec",
        "with",
        "let",
        "in",
        "inherit",
        "assert",
        "if",
        "else",
        "then"
      ],
      "literal": ["true", "false", "or", "and", "null"],
      "built_in": [
        "import",
        "abort",
        "baseNameOf",
        "dirOf",
        "isNull",
        "builtins",
        "map",
        "removeAttrs",
        "throw",
        "toString",
        "derivation"
      ]
    },
    contains: <Mode>[
      NUMBER_MODE,
      HASH_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~3~contains~1~contains~4')
    ]);
