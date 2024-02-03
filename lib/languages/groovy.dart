// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';
import 'lib/common.dart';

final langGroovy = Mode(
    refs: {
      '~contains~1': Mode(variants: <Mode>[
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
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
            relevance: 0)
      ]),
      '~contains~2': Mode(className: 'string', variants: <Mode>[
        Mode(begin: "\"\"\"", end: "\"\"\""),
        Mode(begin: "'''", end: "'''"),
        Mode(begin: "\\\$/", end: "/\\\$", relevance: 10),
        APOS_STRING_MODE,
        QUOTE_STRING_MODE
      ]),
      '~contains~3': Mode(
          className: 'regexp',
          begin: "\x7e?\\/[^\\/\\n]+\\/",
          contains: <Mode>[BACKSLASH_ESCAPE]),
      '~contains~4': Mode(variants: <Mode>[BINARY_NUMBER_MODE, C_NUMBER_MODE])
    },
    name: "Groovy",
    keywords: {
      "variable.language": "this super",
      "literal": "true false null",
      "type": [
        "byte",
        "short",
        "char",
        "int",
        "long",
        "boolean",
        "float",
        "double",
        "void"
      ],
      "keyword": [
        "def",
        "as",
        "in",
        "assert",
        "trait",
        "abstract",
        "static",
        "volatile",
        "transient",
        "public",
        "private",
        "protected",
        "synchronized",
        "final",
        "class",
        "interface",
        "enum",
        "if",
        "else",
        "for",
        "while",
        "switch",
        "case",
        "break",
        "default",
        "continue",
        "throw",
        "throws",
        "try",
        "catch",
        "finally",
        "implements",
        "extends",
        "new",
        "import",
        "package",
        "return",
        "instanceof",
        "var"
      ]
    },
    contains: <Mode>[
      Mode(
        scope: 'meta',
        begin: "^#![ ]*\\/.*\\bgroovy\\b.*",
        end: "\$",
        relevance: 10,
        onBegin: callbackOnBegin2,
      ),
      Mode(ref: '~contains~1'),
      Mode(ref: '~contains~2'),
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~4'),
      Mode(match: [
        "(class|interface|trait|enum|record|extends|implements)",
        "\\s+",
        "[a-zA-Z_]\\w*"
      ], scope: <int, String>{
        1: 'keyword',
        3: 'title.class',
      }),
      Mode(className: 'meta', begin: "@[A-Za-z]+", relevance: 0),
      Mode(className: 'attr', begin: "[A-Za-z0-9_\$]+[ \t]*:", relevance: 0),
      Mode(begin: "\\?", end: ":", relevance: 0, contains: <Mode>[
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~2'),
        Mode(ref: '~contains~3'),
        Mode(ref: '~contains~4'),
        Mode(self: true)
      ]),
      Mode(
          className: 'symbol',
          begin: "^[ \t]*(?=[A-Za-z0-9_\$]+:)",
          excludeBegin: true,
          end: "[A-Za-z0-9_\$]+:",
          relevance: 0)
    ],
    illegal: "#|<\\/");
