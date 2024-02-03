// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langAbnf = Mode(
    refs: {},
    name: "Augmented Backus-Naur Form",
    illegal: "[!@#\$^&',?+\x7e`|:]",
    keywords: [
      "ALPHA",
      "BIT",
      "CHAR",
      "CR",
      "CRLF",
      "CTL",
      "DIGIT",
      "DQUOTE",
      "HEXDIG",
      "HTAB",
      "LF",
      "LWSP",
      "OCTET",
      "SP",
      "VCHAR",
      "WSP"
    ],
    contains: <Mode>[
      Mode(scope: 'operator', match: "=\\/?"),
      Mode(scope: 'attribute', match: "^[a-zA-Z][a-zA-Z0-9-]*(?=\\s*=)"),
      Mode(scope: 'comment', begin: ";", end: "\$", contains: <Mode>[
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
      Mode(scope: 'symbol', match: "%b[0-1]+(-[0-1]+|(\\.[0-1]+)+)?"),
      Mode(scope: 'symbol', match: "%d[0-9]+(-[0-9]+|(\\.[0-9]+)+)?"),
      Mode(scope: 'symbol', match: "%x[0-9A-F]+(-[0-9A-F]+|(\\.[0-9A-F]+)+)?"),
      Mode(scope: 'symbol', match: "%[si](?=\".*\")"),
      QUOTE_STRING_MODE,
      NUMBER_MODE
    ]);
