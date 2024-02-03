// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langSmalltalk = Mode(
    refs: {
      '~contains~6': Mode(className: 'string', begin: "\\\$.{1}"),
      '~contains~5': Mode(className: 'symbol', begin: "#[a-zA-Z_]\\w*")
    },
    name: "Smalltalk",
    aliases: ["st"],
    keywords: ["self", "super", "nil", "true", "false", "thisContext"],
    contains: <Mode>[
      Mode(scope: 'comment', begin: "\"", end: "\"", contains: <Mode>[
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
      APOS_STRING_MODE,
      Mode(className: 'type', begin: "\\b[A-Z][A-Za-z0-9_]*", relevance: 0),
      Mode(begin: "[a-z][a-zA-Z0-9_]*:", relevance: 0),
      C_NUMBER_MODE,
      Mode(ref: '~contains~5'),
      Mode(ref: '~contains~6'),
      Mode(
          begin: "\\|[ ]*[a-z][a-zA-Z0-9_]*([ ]+[a-z][a-zA-Z0-9_]*)*[ ]*\\|",
          returnBegin: true,
          end: "\\|",
          illegal: "\\S",
          contains: <Mode>[Mode(begin: "(\\|[ ]*)?[a-z][a-zA-Z0-9_]*")]),
      Mode(begin: "#\\(", end: "\\)", contains: <Mode>[
        APOS_STRING_MODE,
        Mode(ref: '~contains~6'),
        C_NUMBER_MODE,
        Mode(ref: '~contains~5')
      ])
    ]);
