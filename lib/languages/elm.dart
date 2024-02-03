// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langElm = Mode(
    refs: {
      '~contains~0~contains~0~contains~1': Mode(variants: <Mode>[
        Mode(scope: 'comment', begin: "--", end: "\$", contains: <Mode>[
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
        Mode(scope: 'comment', begin: "\\{-", end: "-\\}", contains: <Mode>[
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
        ])
      ]),
      '~contains~0~contains~0':
          Mode(begin: "\\(", end: "\\)", illegal: "\"", contains: <Mode>[
        Mode(
            className: 'type', begin: "\\b[A-Z][\\w]*(\\((\\.\\.|,|\\w+)\\))?"),
        Mode(variants: <Mode>[
          Mode(scope: 'comment', begin: "--", end: "\$", contains: <Mode>[
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
          Mode(scope: 'comment', begin: "\\{-", end: "-\\}", contains: <Mode>[
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
          ])
        ])
      ]),
      '~contains~0~contains~0~contains~0': Mode(
          className: 'type', begin: "\\b[A-Z][\\w]*(\\((\\.\\.|,|\\w+)\\))?"),
      '~contains~2~contains~0':
          Mode(className: 'type', begin: "\\b[A-Z][\\w']*", relevance: 0)
    },
    name: "Elm",
    keywords: [
      "let",
      "in",
      "if",
      "then",
      "else",
      "case",
      "of",
      "where",
      "module",
      "import",
      "exposing",
      "type",
      "alias",
      "as",
      "infix",
      "infixl",
      "infixr",
      "port",
      "effect",
      "command",
      "subscription"
    ],
    contains: <Mode>[
      Mode(
          beginKeywords: "port effect module",
          end: "exposing",
          keywords: "port effect module where command subscription exposing",
          contains: <Mode>[
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~1')
          ],
          illegal: "\\W\\.|;"),
      Mode(
          begin: "import",
          end: "\$",
          keywords: "import as exposing",
          contains: <Mode>[
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~1')
          ],
          illegal: "\\W\\.|;"),
      Mode(begin: "type", end: "\$", keywords: "type alias", contains: <Mode>[
        Mode(ref: '~contains~2~contains~0'),
        Mode(ref: '~contains~0~contains~0'),
        Mode(begin: "\\{", end: "\\}", contains: <Mode>[
          Mode(ref: '~contains~0~contains~0~contains~0'),
          Mode(ref: '~contains~0~contains~0~contains~1')
        ]),
        Mode(ref: '~contains~0~contains~0~contains~1')
      ]),
      Mode(beginKeywords: "infix infixl infixr", end: "\$", contains: <Mode>[
        C_NUMBER_MODE,
        Mode(ref: '~contains~0~contains~0~contains~1')
      ]),
      Mode(
          begin: "port",
          end: "\$",
          keywords: "port",
          contains: <Mode>[Mode(ref: '~contains~0~contains~0~contains~1')]),
      Mode(className: 'string', begin: "'\\\\?.", end: "'", illegal: "."),
      QUOTE_STRING_MODE,
      C_NUMBER_MODE,
      Mode(ref: '~contains~2~contains~0'),
      Mode(scope: 'title', begin: "^[_a-z][\\w']*", relevance: 0),
      Mode(ref: '~contains~0~contains~0~contains~1'),
      Mode(begin: "->|<-")
    ],
    illegal: ";");
