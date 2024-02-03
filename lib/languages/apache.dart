// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langApache = Mode(
    refs: {
      '~contains~1~contains~0': Mode(
          className: 'number',
          begin: "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(:\\d{1,5})?")
    },
    name: "Apache config",
    aliases: ["apacheconf"],
    caseInsensitive: true,
    contains: <Mode>[
      HASH_COMMENT_MODE,
      Mode(className: 'section', begin: "<\\/?", end: ">", contains: <Mode>[
        Mode(ref: '~contains~1~contains~0'),
        Mode(className: 'number', begin: ":\\d{1,5}"),
        Mode(
            scope: 'string',
            begin: "\"",
            end: "\"",
            illegal: "\\n",
            contains: <Mode>[BACKSLASH_ESCAPE],
            relevance: 0)
      ]),
      Mode(
          className: 'attribute',
          begin: "\\w+",
          relevance: 0,
          keywords: {
            "_": [
              "order",
              "deny",
              "allow",
              "setenv",
              "rewriterule",
              "rewriteengine",
              "rewritecond",
              "documentroot",
              "sethandler",
              "errordocument",
              "loadmodule",
              "options",
              "header",
              "listen",
              "serverroot",
              "servername"
            ]
          },
          starts: Mode(end: "\$", relevance: 0, keywords: {
            "literal": "on off all deny allow"
          }, contains: <Mode>[
            Mode(className: 'meta', begin: "\\s\\[", end: "\\]\$"),
            Mode(
                className: 'variable',
                begin: "[\\\$%]\\{",
                end: "\\}",
                contains: <Mode>[
                  Mode(self: true),
                  Mode(className: 'number', begin: "[\$%]\\d+")
                ]),
            Mode(ref: '~contains~1~contains~0'),
            Mode(className: 'number', begin: "\\b\\d+"),
            QUOTE_STRING_MODE
          ]))
    ],
    illegal: "\\S");
