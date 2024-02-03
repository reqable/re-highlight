// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langEbnf = Mode(
    refs: {
      '~contains~0': Mode(
          scope: 'comment',
          begin: "\\(\\*",
          end: "\\*\\)",
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
          ])
    },
    name: "Extended Backus-Naur Form",
    illegal: "\\S",
    contains: <Mode>[
      Mode(ref: '~contains~0'),
      Mode(className: 'attribute', begin: "^[ ]*[a-zA-Z]+([\\s_-]+[a-zA-Z]+)*"),
      Mode(begin: "=", end: "[.;]", contains: <Mode>[
        Mode(ref: '~contains~0'),
        Mode(className: 'meta', begin: "\\?.*\\?"),
        Mode(className: 'string', variants: <Mode>[
          APOS_STRING_MODE,
          QUOTE_STRING_MODE,
          Mode(begin: "`", end: "`")
        ])
      ])
    ]);
