// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';
import 'lib/mathematica.dart';

final langMathematica = Mode(
    refs: {},
    name: "Mathematica",
    aliases: ["mma", "wl"],
    classNameAliases: {
      "brace": "punctuation",
      "pattern": "type",
      "slot": "type",
      "symbol": "variable",
      "named-character": "variable",
      "builtin-symbol": "built_in",
      "message-name": "string"
    },
    contains: <Mode>[
      Mode(scope: 'comment', begin: "\\(\\*", end: "\\*\\)", contains: <Mode>[
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
      Mode(
          className: 'pattern',
          relevance: 0,
          begin: "([a-zA-Z\$][a-zA-Z0-9\$]*)?_+([a-zA-Z\$][a-zA-Z0-9\$]*)?"),
      Mode(
          className: 'slot',
          relevance: 0,
          begin: "#[a-zA-Z\$][a-zA-Z0-9\$]*|#+[0-9]?"),
      Mode(
          className: 'message-name',
          relevance: 0,
          begin: "::[a-zA-Z\$][a-zA-Z0-9\$]*"),
      Mode(variants: <Mode>[
        Mode(
            className: 'builtin-symbol',
            begin: "[a-zA-Z\$][a-zA-Z0-9\$]*",
            onBegin: callbackOnBegin),
        Mode(
            className: 'symbol',
            relevance: 0,
            begin: "[a-zA-Z\$][a-zA-Z0-9\$]*")
      ]),
      Mode(
          className: 'named-character',
          begin: "\\\\\\[[\$a-zA-Z][\$a-zA-Z0-9]+\\]"),
      QUOTE_STRING_MODE,
      Mode(
          className: 'number',
          relevance: 0,
          begin:
              "(?:([2-9]|[1-2]\\d|[3][0-5])\\^\\^(\\w*\\.\\w+|\\w+\\.\\w*|\\w+)|(\\d*\\.\\d+|\\d+\\.\\d*|\\d+))(?:(?:``[+-]?(\\d*\\.\\d+|\\d+\\.\\d*|\\d+)|`([+-]?(\\d*\\.\\d+|\\d+\\.\\d*|\\d+))?))?(?:\\*\\^[+-]?\\d+)?"),
      Mode(
          className: 'operator',
          relevance: 0,
          begin: "[+\\-*/,;.:@~=><&|_`'^?!%]+"),
      Mode(className: 'brace', relevance: 0, begin: "[[\\](){}]")
    ]);
