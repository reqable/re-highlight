// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langWren = Mode(
    refs: {
      '~contains~2':
          Mode(scope: 'string', begin: "\"", end: "\"", contains: <Mode>[
        Mode(scope: 'subst', begin: "%\\(", end: "\\)", contains: <Mode>[
          C_NUMBER_MODE,
          Mode(
              relevance: 0,
              match: "\\b[A-Z]+[a-z]+([A-Z]+[a-z]+)*",
              scope: 'title.class',
              keywords: {
                "_": [
                  "Bool",
                  "Class",
                  "Fiber",
                  "Fn",
                  "List",
                  "Map",
                  "Null",
                  "Num",
                  "Object",
                  "Range",
                  "Sequence",
                  "String",
                  "System"
                ]
              }),
          Mode(
              relevance: 0,
              match:
                  "\\b(?!(if|while|for|else|super)\\b)[a-zA-Z]\\w*(?=\\s*[({])",
              className: 'title.function'),
          Mode(relevance: 0, match: "\\b_[a-zA-Z]\\w*", scope: 'variable'),
          Mode(
              relevance: 0,
              match:
                  "(?:-|~|\\*|%|\\.\\.\\.|\\.\\.|\\+|<<|>>|>=|<=|<|>|\\^|!=|!|\\bis\\b|==|&&|&|\\|\\||\\||\\?:|=)",
              className: 'operator'),
          Mode(ref: '~contains~2')
        ]),
        Mode(scope: 'char.escape', variants: <Mode>[
          Mode(match: "\\\\\\\\|\\\\[\"0%abefnrtv]"),
          Mode(match: "\\\\x[0-9A-F]{2}"),
          Mode(match: "\\\\u[0-9A-F]{4}"),
          Mode(match: "\\\\U[0-9A-F]{8}")
        ])
      ]),
      '~contains~2~contains~0~contains~1': Mode(
          relevance: 0,
          match: "\\b[A-Z]+[a-z]+([A-Z]+[a-z]+)*",
          scope: 'title.class',
          keywords: {
            "_": [
              "Bool",
              "Class",
              "Fiber",
              "Fn",
              "List",
              "Map",
              "Null",
              "Num",
              "Object",
              "Range",
              "Sequence",
              "String",
              "System"
            ]
          }),
      '~contains~2~contains~0~contains~2': Mode(
          relevance: 0,
          match: "\\b(?!(if|while|for|else|super)\\b)[a-zA-Z]\\w*(?=\\s*[({])",
          className: 'title.function'),
      '~contains~2~contains~0~contains~4': Mode(
          relevance: 0,
          match:
              "(?:-|\x7e|\\*|%|\\.\\.\\.|\\.\\.|\\+|<<|>>|>=|<=|<|>|\\^|!=|!|\\bis\\b|==|&&|&|\\|\\||\\||\\?:|=)",
          className: 'operator'),
      '~contains~2~contains~0~contains~3':
          Mode(relevance: 0, match: "\\b_[a-zA-Z]\\w*", scope: 'variable')
    },
    name: "Wren",
    keywords: {
      "keyword": [
        "as",
        "break",
        "class",
        "construct",
        "continue",
        "else",
        "for",
        "foreign",
        "if",
        "import",
        "in",
        "is",
        "return",
        "static",
        "var",
        "while"
      ],
      "variable.language": ["this", "super"],
      "literal": ["true", "false", "null"]
    },
    contains: <Mode>[
      Mode(scope: 'comment', variants: <Mode>[
        Mode(begin: [
          "#!?",
          "[A-Za-z_]+(?=\\()"
        ], beginScope: <int, String>{}, keywords: {
          "literal": ["true", "false", "null"]
        }, contains: <Mode>[], end: "\\)"),
        Mode(
            begin: ["#!?", "[A-Za-z_]+"],
            beginScope: <int, String>{},
            end: "\$")
      ]),
      C_NUMBER_MODE,
      Mode(ref: '~contains~2'),
      Mode(className: 'string', begin: "\"\"\"", end: "\"\"\""),
      Mode(
          scope: 'comment',
          begin: "\\/\\*\\*",
          end: "\\*\\/",
          contains: <Mode>[
            Mode(match: "@[a-z]+", scope: 'doctag'),
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
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(ref: '~contains~2~contains~0~contains~1'),
      Mode(variants: <Mode>[
        Mode(
            match: ["class\\s+", "[a-zA-Z]\\w*", "\\s+is\\s+", "[a-zA-Z]\\w*"]),
        Mode(match: ["class\\s+", "[a-zA-Z]\\w*"])
      ], scope: <int, String>{
        2: 'title.class',
        4: 'title.class.inherited',
      }, keywords: [
        "as",
        "break",
        "class",
        "construct",
        "continue",
        "else",
        "for",
        "foreign",
        "if",
        "import",
        "in",
        "is",
        "return",
        "static",
        "var",
        "while"
      ]),
      Mode(match: [
        "[a-zA-Z]\\w*",
        "\\s*",
        "=",
        "\\s*",
        "\\(",
        "[a-zA-Z]\\w*",
        "\\)\\s*\\{"
      ], scope: <int, String>{
        1: 'title.function',
        3: 'operator',
        6: 'params',
      }),
      Mode(
          match:
              "(?:\\b(?!(if|while|for|else|super)\\b)[a-zA-Z]\\w*|(?:-|~|\\*|%|\\.\\.\\.|\\.\\.|\\+|<<|>>|>=|<=|<|>|\\^|!=|!|\\bis\\b|==|&&|&|\\|\\||\\||\\?:|=))(?=\\s*\\([^)]+\\)\\s*\\{)",
          className: 'title.function',
          starts: Mode(contains: <Mode>[
            Mode(begin: "\\(", end: "\\)", contains: <Mode>[
              Mode(relevance: 0, scope: 'params', match: "[a-zA-Z]\\w*")
            ])
          ])),
      Mode(ref: '~contains~2~contains~0~contains~2'),
      Mode(ref: '~contains~2~contains~0~contains~4'),
      Mode(ref: '~contains~2~contains~0~contains~3'),
      Mode(
          className: 'property',
          begin: "\\.(?=[a-zA-Z]\\w*)",
          end: "[a-zA-Z]\\w*",
          excludeBegin: true,
          relevance: 0),
      Mode(
          relevance: 0,
          match:
              "\\b(?!as|break|class|construct|continue|else|for|foreign|if|import|in|is|return|static|var|while|this|super|true|false|null\\b)[a-zA-Z_]\\w*(?:[?!]|\\b)",
          className: 'variable')
    ]);
