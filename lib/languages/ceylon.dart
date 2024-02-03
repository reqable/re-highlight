// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langCeylon = Mode(
    refs: {
      '~contains~3': Mode(
          className: 'string', begin: "\"\"\"", end: "\"\"\"", relevance: 10),
      '~contains~4':
          Mode(className: 'string', begin: "\"", end: "\"", contains: <Mode>[
        Mode(
            className: 'subst',
            excludeBegin: true,
            excludeEnd: true,
            begin: "``",
            end: "``",
            keywords: [
              "assembly",
              "module",
              "package",
              "import",
              "alias",
              "class",
              "interface",
              "object",
              "given",
              "value",
              "assign",
              "void",
              "function",
              "new",
              "of",
              "extends",
              "satisfies",
              "abstracts",
              "in",
              "out",
              "return",
              "break",
              "continue",
              "throw",
              "assert",
              "dynamic",
              "if",
              "else",
              "switch",
              "case",
              "for",
              "while",
              "try",
              "catch",
              "finally",
              "then",
              "let",
              "this",
              "outer",
              "super",
              "is",
              "exists",
              "nonempty"
            ],
            relevance: 10,
            contains: <Mode>[
              Mode(ref: '~contains~3'),
              Mode(ref: '~contains~4'),
              Mode(className: 'string', begin: "'", end: "'"),
              Mode(
                  className: 'number',
                  begin:
                      "#[0-9a-fA-F_]+|\\\$[01_]+|[0-9_]+(?:\\.[0-9_](?:[eE][+-]?\\d+)?)?[kMGTPmunpf]?",
                  relevance: 0)
            ])
      ]),
      '~contains~4~contains~0~contains~2':
          Mode(className: 'string', begin: "'", end: "'"),
      '~contains~4~contains~0~contains~3': Mode(
          className: 'number',
          begin:
              "#[0-9a-fA-F_]+|\\\$[01_]+|[0-9_]+(?:\\.[0-9_](?:[eE][+-]?\\d+)?)?[kMGTPmunpf]?",
          relevance: 0)
    },
    name: "Ceylon",
    keywords: {
      "keyword": [
        "assembly",
        "module",
        "package",
        "import",
        "alias",
        "class",
        "interface",
        "object",
        "given",
        "value",
        "assign",
        "void",
        "function",
        "new",
        "of",
        "extends",
        "satisfies",
        "abstracts",
        "in",
        "out",
        "return",
        "break",
        "continue",
        "throw",
        "assert",
        "dynamic",
        "if",
        "else",
        "switch",
        "case",
        "for",
        "while",
        "try",
        "catch",
        "finally",
        "then",
        "let",
        "this",
        "outer",
        "super",
        "is",
        "exists",
        "nonempty",
        "shared",
        "abstract",
        "formal",
        "default",
        "actual",
        "variable",
        "late",
        "native",
        "deprecated",
        "final",
        "sealed",
        "annotation",
        "suppressWarnings",
        "small"
      ],
      "meta": ["doc", "by", "license", "see", "throws", "tagged"]
    },
    illegal: "\\\$[^01]|#[^0-9a-fA-F]",
    contains: <Mode>[
      C_LINE_COMMENT_MODE,
      Mode(scope: 'comment', begin: "/\\*", end: "\\*/", contains: <Mode>[
        Mode(self: true),
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
      Mode(className: 'meta', begin: "@[a-z]\\w*(?::\"[^\"]*\")?"),
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~4'),
      Mode(ref: '~contains~4~contains~0~contains~2'),
      Mode(ref: '~contains~4~contains~0~contains~3')
    ]);
