// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langMonkey = Mode(
    refs: {},
    name: "Monkey",
    caseInsensitive: true,
    keywords: {
      "keyword": [
        "public",
        "private",
        "property",
        "continue",
        "exit",
        "extern",
        "new",
        "try",
        "catch",
        "eachin",
        "not",
        "abstract",
        "final",
        "select",
        "case",
        "default",
        "const",
        "local",
        "global",
        "field",
        "end",
        "if",
        "then",
        "else",
        "elseif",
        "endif",
        "while",
        "wend",
        "repeat",
        "until",
        "forever",
        "for",
        "to",
        "step",
        "next",
        "return",
        "module",
        "inline",
        "throw",
        "import",
        "and",
        "or",
        "shl",
        "shr",
        "mod"
      ],
      "built_in": [
        "DebugLog",
        "DebugStop",
        "Error",
        "Print",
        "ACos",
        "ACosr",
        "ASin",
        "ASinr",
        "ATan",
        "ATan2",
        "ATan2r",
        "ATanr",
        "Abs",
        "Abs",
        "Ceil",
        "Clamp",
        "Clamp",
        "Cos",
        "Cosr",
        "Exp",
        "Floor",
        "Log",
        "Max",
        "Max",
        "Min",
        "Min",
        "Pow",
        "Sgn",
        "Sgn",
        "Sin",
        "Sinr",
        "Sqrt",
        "Tan",
        "Tanr",
        "Seed",
        "PI",
        "HALFPI",
        "TWOPI"
      ],
      "literal": ["true", "false", "null"]
    },
    illegal: "\\/\\*",
    contains: <Mode>[
      Mode(scope: 'comment', begin: "#rem", end: "#end", contains: <Mode>[
        Mode(
            scope: 'doctag',
            begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
            end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
            excludeBegin: true,
            relevance: 0),
        Mode(
            begin:
                "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
      ]),
      Mode(
          scope: 'comment',
          begin: "'",
          end: "\$",
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
          relevance: 0),
      Mode(variants: <Mode>[
        Mode(match: ["(function|method)", "\\s+", "[a-zA-Z_]\\w*"])
      ], scope: <int, String>{
        1: 'keyword',
        3: 'title.function',
      }),
      Mode(variants: <Mode>[
        Mode(match: [
          "(class|interface|extends|implements)",
          "\\s+",
          "[a-zA-Z_]\\w*"
        ])
      ], scope: <int, String>{
        1: 'keyword',
        3: 'title.class',
      }),
      Mode(className: 'variable.language', begin: "\\b(self|super)\\b"),
      Mode(
          className: 'meta',
          begin: "\\s*#",
          end: "\$",
          keywords: {"keyword": "if else elseif endif end then"}),
      Mode(match: [
        "^\\s*",
        "strict\\b"
      ], scope: <int, String>{
        2: 'meta',
      }),
      Mode(
          beginKeywords: "alias",
          end: "=",
          contains: <Mode>[UNDERSCORE_TITLE_MODE]),
      QUOTE_STRING_MODE,
      Mode(
          className: 'number',
          relevance: 0,
          variants: <Mode>[Mode(begin: "[\$][a-fA-F0-9]+"), NUMBER_MODE])
    ]);
