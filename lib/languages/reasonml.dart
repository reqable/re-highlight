// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langReasonml = Mode(
    refs: {},
    name: "ReasonML",
    aliases: ["re"],
    keywords: {
      "\$pattern": "[a-z_]\\w*!?",
      "keyword": [
        "and",
        "as",
        "asr",
        "assert",
        "begin",
        "class",
        "constraint",
        "do",
        "done",
        "downto",
        "else",
        "end",
        "esfun",
        "exception",
        "external",
        "for",
        "fun",
        "function",
        "functor",
        "if",
        "in",
        "include",
        "inherit",
        "initializer",
        "land",
        "lazy",
        "let",
        "lor",
        "lsl",
        "lsr",
        "lxor",
        "mod",
        "module",
        "mutable",
        "new",
        "nonrec",
        "object",
        "of",
        "open",
        "or",
        "pri",
        "pub",
        "rec",
        "sig",
        "struct",
        "switch",
        "then",
        "to",
        "try",
        "type",
        "val",
        "virtual",
        "when",
        "while",
        "with"
      ],
      "built_in": [
        "array",
        "bool",
        "bytes",
        "char",
        "exn|5",
        "float",
        "int",
        "int32",
        "int64",
        "list",
        "lazy_t|5",
        "nativeint|5",
        "ref",
        "string",
        "unit"
      ],
      "literal": ["true", "false"]
    },
    illegal: "(:-|:=|\\\$\\{|\\+=)",
    contains: <Mode>[
      Mode(scope: 'literal', match: "\\[(\\|\\|)?\\]|\\(\\)", relevance: 0),
      C_LINE_COMMENT_MODE,
      Mode(
          scope: 'comment',
          begin: "\\/\\*",
          end: "\\*\\/",
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
          illegal: "^(#,\\/\\/)"),
      Mode(scope: 'symbol', match: "\\'[A-Za-z_](?!\\')[\\w\\']*"),
      Mode(scope: 'type', match: "`[A-Z][\\w\\']*"),
      Mode(scope: 'type', match: "\\b[A-Z][\\w\\']*", relevance: 0),
      Mode(match: "[a-z_]\\w*\\'[\\w\\']*", relevance: 0),
      Mode(
          scope: 'operator',
          match:
              "\\s+(\\|\\||\\+[\\+\\.]?|\\*[\\*\\/\\.]?|\\/[\\.]?|\\.\\.\\.|\\|>|&&|===?)\\s+",
          relevance: 0),
      Mode(
          scope: 'string',
          begin: "'",
          end: "'",
          illegal: "\\n",
          contains: <Mode>[BACKSLASH_ESCAPE],
          relevance: 0),
      Mode(
          scope: 'string',
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: <Mode>[BACKSLASH_ESCAPE]),
      Mode(
          scope: 'number',
          variants: <Mode>[
            Mode(match: "\\b0[xX][a-fA-F0-9_]+[Lln]?"),
            Mode(match: "\\b0[oO][0-7_]+[Lln]?"),
            Mode(match: "\\b0[bB][01_]+[Lln]?"),
            Mode(
                match:
                    "\\b[0-9][0-9_]*([Lln]|(\\.[0-9_]*)?([eE][-+]?[0-9_]+)?)")
          ],
          relevance: 0)
    ]);
