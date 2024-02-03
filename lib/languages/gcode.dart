// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langGcode = Mode(
    refs: {
      '~contains~5': Mode(
          scope: 'number',
          begin:
              "([-+]?((\\.\\d+)|(\\d+)(\\.\\d*)?))|(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
          relevance: 0)
    },
    name: "G-code (ISO 6983)",
    aliases: ["nc"],
    caseInsensitive: true,
    keywords: {
      "\$pattern": "[A-Z_][A-Z0-9_.]*",
      "keyword":
          "IF DO WHILE ENDWHILE CALL ENDIF SUB ENDSUB GOTO REPEAT ENDREPEAT EQ LT GT NE GE LE OR XOR"
    },
    contains: <Mode>[
      Mode(className: 'meta', begin: "%"),
      Mode(className: 'meta', begin: "([O])([0-9]+)"),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(scope: 'comment', begin: "\\(", end: "\\)", contains: <Mode>[
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
      Mode(ref: '~contains~5'),
      Mode(
          scope: 'string',
          begin: "'",
          end: "'",
          illegal: null,
          contains: <Mode>[BACKSLASH_ESCAPE]),
      Mode(
          scope: 'string',
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: <Mode>[BACKSLASH_ESCAPE]),
      Mode(className: 'name', begin: "([G])([0-9]+\\.?[0-9]?)"),
      Mode(className: 'name', begin: "([M])([0-9]+\\.?[0-9]?)"),
      Mode(className: 'attr', begin: "(VC|VS|#)", end: "(\\d+)"),
      Mode(className: 'attr', begin: "(VZOFX|VZOFY|VZOFZ)"),
      Mode(
          className: 'built_in',
          begin: "(ATAN|ABS|ACOS|ASIN|SIN|COS|EXP|FIX|FUP|ROUND|LN|TAN)(\\[)",
          contains: <Mode>[Mode(ref: '~contains~5')],
          end: "\\]"),
      Mode(
          className: 'symbol',
          variants: <Mode>[Mode(begin: "N", end: "\\d+", illegal: "\\W")])
    ]);
