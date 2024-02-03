// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langHaskell = Mode(
    refs: {
      '~contains~0~contains~0~contains~4': Mode(variants: <Mode>[
        Mode(scope: 'comment', begin: "--+", end: "\$", contains: <Mode>[
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
        Mode(className: 'meta', begin: "\\{-#", end: "#-\\}"),
        Mode(className: 'meta', begin: "^#", end: "\$"),
        Mode(
            className: 'type', begin: "\\b[A-Z][\\w]*(\\((\\.\\.|,|\\w+)\\))?"),
        Mode(scope: 'title', begin: "[_a-z][\\w']*", relevance: 0),
        Mode(variants: <Mode>[
          Mode(scope: 'comment', begin: "--+", end: "\$", contains: <Mode>[
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
      '~contains~0~contains~0~contains~0':
          Mode(className: 'meta', begin: "\\{-#", end: "#-\\}"),
      '~contains~2~contains~0':
          Mode(className: 'type', begin: "\\b[A-Z][\\w']*", relevance: 0),
      '~contains~0~contains~0~contains~1':
          Mode(className: 'meta', begin: "^#", end: "\$"),
      '~contains~0~contains~0~contains~2': Mode(
          className: 'type', begin: "\\b[A-Z][\\w]*(\\((\\.\\.|,|\\w+)\\))?"),
      '~contains~0~contains~0~contains~3':
          Mode(scope: 'title', begin: "[_a-z][\\w']*", relevance: 0)
    },
    name: "Haskell",
    aliases: ["hs"],
    keywords:
        "let in if then else case of where do module import hiding qualified type data newtype deriving class instance as default infix infixl infixr foreign export ccall stdcall cplusplus jvm dotnet safe unsafe family forall mdo proc rec",
    unicodeRegex: true,
    contains: <Mode>[
      Mode(
          beginKeywords: "module",
          end: "where",
          keywords: "module where",
          contains: <Mode>[
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~4')
          ],
          illegal: "\\W\\.|;"),
      Mode(
          begin: "\\bimport\\b",
          end: "\$",
          keywords: "import qualified as hiding",
          contains: <Mode>[
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~4')
          ],
          illegal: "\\W\\.|;"),
      Mode(
          className: 'class',
          begin: "^(\\s*)?(class|instance)\\b",
          end: "where",
          keywords: "class family instance where",
          contains: <Mode>[
            Mode(ref: '~contains~2~contains~0'),
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~4')
          ]),
      Mode(
          className: 'class',
          begin: "\\b(data|(new)?type)\\b",
          end: "\$",
          keywords: "data family type newtype deriving",
          contains: <Mode>[
            Mode(ref: '~contains~0~contains~0~contains~0'),
            Mode(ref: '~contains~2~contains~0'),
            Mode(ref: '~contains~0~contains~0'),
            Mode(begin: "\\{", end: "\\}", contains: <Mode>[
              Mode(ref: '~contains~0~contains~0~contains~0'),
              Mode(ref: '~contains~0~contains~0~contains~1'),
              Mode(ref: '~contains~0~contains~0~contains~2'),
              Mode(ref: '~contains~0~contains~0~contains~3'),
              Mode(ref: '~contains~0~contains~0~contains~4')
            ]),
            Mode(ref: '~contains~0~contains~0~contains~4')
          ]),
      Mode(beginKeywords: "default", end: "\$", contains: <Mode>[
        Mode(ref: '~contains~2~contains~0'),
        Mode(ref: '~contains~0~contains~0'),
        Mode(ref: '~contains~0~contains~0~contains~4')
      ]),
      Mode(beginKeywords: "infix infixl infixr", end: "\$", contains: <Mode>[
        C_NUMBER_MODE,
        Mode(ref: '~contains~0~contains~0~contains~4')
      ]),
      Mode(
          begin: "\\bforeign\\b",
          end: "\$",
          keywords:
              "foreign import export ccall stdcall cplusplus jvm dotnet safe unsafe",
          contains: <Mode>[
            Mode(ref: '~contains~2~contains~0'),
            QUOTE_STRING_MODE,
            Mode(ref: '~contains~0~contains~0~contains~4')
          ]),
      Mode(
          className: 'meta',
          begin: "#!\\/usr\\/bin\\/env runhaskell",
          end: "\$"),
      Mode(ref: '~contains~0~contains~0~contains~0'),
      Mode(ref: '~contains~0~contains~0~contains~1'),
      Mode(
          scope: 'string',
          begin: "'(?=\\\\?.')",
          end: "'",
          contains: <Mode>[Mode(scope: 'char.escape', match: "\\\\.")]),
      QUOTE_STRING_MODE,
      Mode(className: 'number', relevance: 0, variants: <Mode>[
        Mode(
            match:
                "\\b(([0-9]_*)+)(\\.(([0-9]_*)+))?([eE][+-]?(([0-9]_*)+))?\\b"),
        Mode(
            match:
                "\\b0[xX]_*(([0-9a-fA-F]_*)+)(\\.(([0-9a-fA-F]_*)+))?([pP][+-]?(([0-9]_*)+))?\\b"),
        Mode(match: "\\b0[oO](([0-7]_*)+)\\b"),
        Mode(match: "\\b0[bB](([01]_*)+)\\b")
      ]),
      Mode(ref: '~contains~2~contains~0'),
      Mode(scope: 'title', begin: "^[_a-z][\\w']*", relevance: 0),
      Mode(
          begin:
              "(?!-)([!#\$%&*+.\\/<=>?@\\\\^~-]|(?!([(),;\\[\\]`|{}]|[_:\"']))(\\p{S}|\\p{P}))--+|--+(?!-)([!#\$%&*+.\\/<=>?@\\\\^~-]|(?!([(),;\\[\\]`|{}]|[_:\"']))(\\p{S}|\\p{P}))"),
      Mode(ref: '~contains~0~contains~0~contains~4'),
      Mode(begin: "->|<-")
    ]);
