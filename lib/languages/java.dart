// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langJava = Mode(
    refs: {
      '~contains~12~contains~0~contains~3': Mode(
          className: 'number',
          variants: <Mode>[
            Mode(
                begin:
                    "(\\b([0-9](_*[0-9])*)((\\.([0-9](_*[0-9])*))|\\.)?|(\\.([0-9](_*[0-9])*)))[eE][+-]?([0-9](_*[0-9])*)[fFdD]?\\b"),
            Mode(
                begin:
                    "\\b([0-9](_*[0-9])*)((\\.([0-9](_*[0-9])*))[fFdD]?\\b|\\.([fFdD]\\b)?)"),
            Mode(begin: "(\\.([0-9](_*[0-9])*))[fFdD]?\\b"),
            Mode(begin: "\\b([0-9](_*[0-9])*)[fFdD]\\b"),
            Mode(
                begin:
                    "\\b0[xX](([0-9a-fA-F](_*[0-9a-fA-F])*)\\.?|([0-9a-fA-F](_*[0-9a-fA-F])*)?\\.([0-9a-fA-F](_*[0-9a-fA-F])*))[pP][+-]?([0-9](_*[0-9])*)[fFdD]?\\b"),
            Mode(begin: "\\b(0|[1-9](_*[0-9])*)[lL]?\\b"),
            Mode(begin: "\\b0[xX]([0-9a-fA-F](_*[0-9a-fA-F])*)[lL]?\\b"),
            Mode(begin: "\\b0(_*[0-7])*[lL]?\\b"),
            Mode(begin: "\\b0[bB][01](_*[01])*[lL]?\\b")
          ],
          relevance: 0),
      '~contains~12~contains~0~contains~0': Mode(
          className: 'meta',
          begin: "@[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*",
          contains: <Mode>[
            Mode(begin: "\\(", end: "\\)", contains: <Mode>[Mode(self: true)])
          ])
    },
    name: "Java",
    aliases: ["jsp"],
    keywords: {
      "keyword": [
        "synchronized",
        "abstract",
        "private",
        "var",
        "static",
        "if",
        "const ",
        "for",
        "while",
        "strictfp",
        "finally",
        "protected",
        "import",
        "native",
        "final",
        "void",
        "enum",
        "else",
        "break",
        "transient",
        "catch",
        "instanceof",
        "volatile",
        "case",
        "assert",
        "package",
        "default",
        "public",
        "try",
        "switch",
        "continue",
        "throws",
        "protected",
        "public",
        "private",
        "module",
        "requires",
        "exports",
        "do",
        "sealed",
        "yield",
        "permits"
      ],
      "literal": ["false", "true", "null"],
      "type": [
        "char",
        "boolean",
        "long",
        "float",
        "int",
        "byte",
        "short",
        "double"
      ],
      "built_in": ["super", "this"]
    },
    illegal: "<\\/|#",
    contains: <Mode>[
      Mode(
          scope: 'comment',
          begin: "/\\*\\*",
          end: "\\*/",
          contains: <Mode>[
            Mode(begin: "\\w+@", relevance: 0),
            Mode(className: 'doctag', begin: "@[A-Za-z]+"),
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
      Mode(begin: "import java\\.[a-z]+\\.", keywords: "import", relevance: 2),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(
          begin: "\"\"\"",
          end: "\"\"\"",
          className: 'string',
          contains: <Mode>[BACKSLASH_ESCAPE]),
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      Mode(match: [
        "\\b(?:class|interface|enum|extends|implements|new)",
        "\\s+",
        "[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*"
      ], className: <int, String>{
        1: 'keyword',
        3: 'title.class',
      }),
      Mode(match: "non-sealed", scope: 'keyword'),
      Mode(begin: [
        "(?!else)[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*",
        "\\s+",
        "[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*",
        "\\s+",
        "=(?!=)"
      ], className: <int, String>{
        1: 'type',
        3: 'variable',
        5: 'operator',
      }),
      Mode(begin: [
        "record",
        "\\s+",
        "[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*"
      ], className: <int, String>{
        1: 'keyword',
        3: 'title.class',
      }, contains: <Mode>[
        Mode(
            className: 'params',
            begin: "\\(",
            end: "\\)",
            keywords: {
              "keyword": [
                "synchronized",
                "abstract",
                "private",
                "var",
                "static",
                "if",
                "const ",
                "for",
                "while",
                "strictfp",
                "finally",
                "protected",
                "import",
                "native",
                "final",
                "void",
                "enum",
                "else",
                "break",
                "transient",
                "catch",
                "instanceof",
                "volatile",
                "case",
                "assert",
                "package",
                "default",
                "public",
                "try",
                "switch",
                "continue",
                "throws",
                "protected",
                "public",
                "private",
                "module",
                "requires",
                "exports",
                "do",
                "sealed",
                "yield",
                "permits"
              ],
              "literal": ["false", "true", "null"],
              "type": [
                "char",
                "boolean",
                "long",
                "float",
                "int",
                "byte",
                "short",
                "double"
              ],
              "built_in": ["super", "this"]
            },
            relevance: 0,
            contains: <Mode>[C_BLOCK_COMMENT_MODE],
            endsParent: true),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE
      ]),
      Mode(beginKeywords: "new throw return else", relevance: 0),
      Mode(begin: [
        "(?:[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:<[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:<[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:<[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:\\s*,\\s*[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*)*>)?(?:\\s*,\\s*[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:<[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:\\s*,\\s*[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*)*>)?)*>)?(?:\\s*,\\s*[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:<[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:<[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:\\s*,\\s*[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*)*>)?(?:\\s*,\\s*[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:<[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*(?:\\s*,\\s*[À-ʸa-zA-Z_\$][À-ʸa-zA-Z_\$0-9]*)*>)?)*>)?)*>)?\\s+)",
        "[a-zA-Z_]\\w*",
        "\\s*(?=\\()"
      ], className: <int, String>{
        2: 'title.function',
      }, keywords: {
        "keyword": [
          "synchronized",
          "abstract",
          "private",
          "var",
          "static",
          "if",
          "const ",
          "for",
          "while",
          "strictfp",
          "finally",
          "protected",
          "import",
          "native",
          "final",
          "void",
          "enum",
          "else",
          "break",
          "transient",
          "catch",
          "instanceof",
          "volatile",
          "case",
          "assert",
          "package",
          "default",
          "public",
          "try",
          "switch",
          "continue",
          "throws",
          "protected",
          "public",
          "private",
          "module",
          "requires",
          "exports",
          "do",
          "sealed",
          "yield",
          "permits"
        ],
        "literal": ["false", "true", "null"],
        "type": [
          "char",
          "boolean",
          "long",
          "float",
          "int",
          "byte",
          "short",
          "double"
        ],
        "built_in": ["super", "this"]
      }, contains: <Mode>[
        Mode(
            className: 'params',
            begin: "\\(",
            end: "\\)",
            keywords: {
              "keyword": [
                "synchronized",
                "abstract",
                "private",
                "var",
                "static",
                "if",
                "const ",
                "for",
                "while",
                "strictfp",
                "finally",
                "protected",
                "import",
                "native",
                "final",
                "void",
                "enum",
                "else",
                "break",
                "transient",
                "catch",
                "instanceof",
                "volatile",
                "case",
                "assert",
                "package",
                "default",
                "public",
                "try",
                "switch",
                "continue",
                "throws",
                "protected",
                "public",
                "private",
                "module",
                "requires",
                "exports",
                "do",
                "sealed",
                "yield",
                "permits"
              ],
              "literal": ["false", "true", "null"],
              "type": [
                "char",
                "boolean",
                "long",
                "float",
                "int",
                "byte",
                "short",
                "double"
              ],
              "built_in": ["super", "this"]
            },
            relevance: 0,
            contains: <Mode>[
              Mode(ref: '~contains~12~contains~0~contains~0'),
              APOS_STRING_MODE,
              QUOTE_STRING_MODE,
              Mode(ref: '~contains~12~contains~0~contains~3'),
              C_BLOCK_COMMENT_MODE
            ]),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE
      ]),
      Mode(ref: '~contains~12~contains~0~contains~3'),
      Mode(ref: '~contains~12~contains~0~contains~0')
    ]);
