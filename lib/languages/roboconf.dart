// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langRoboconf = Mode(
    refs: {
      '~contains~0~contains~0': Mode(
          className: 'attribute',
          begin: "[a-zA-Z-_]+",
          end: "\\s*:",
          excludeEnd: true,
          starts: Mode(end: ";", relevance: 0, contains: <Mode>[
            Mode(className: 'variable', begin: "\\.[a-zA-Z-_]+"),
            Mode(className: 'keyword', begin: "\\(optional\\)")
          ]))
    },
    name: "Roboconf",
    aliases: ["graph", "instances"],
    caseInsensitive: true,
    keywords: "import",
    contains: <Mode>[
      Mode(
          begin: "^facet [a-zA-Z-_][^\\n{]+\\{",
          end: "\\}",
          keywords: "facet",
          contains: <Mode>[
            Mode(ref: '~contains~0~contains~0'),
            HASH_COMMENT_MODE
          ]),
      Mode(
          begin: "^\\s*instance of [a-zA-Z-_][^\\n{]+\\{",
          end: "\\}",
          keywords:
              "name count channels instance-data instance-state instance of",
          illegal: "\\S",
          contains: <Mode>[
            Mode(self: true),
            Mode(ref: '~contains~0~contains~0'),
            HASH_COMMENT_MODE
          ]),
      Mode(begin: "^[a-zA-Z-_][^\\n{]+\\{", end: "\\}", contains: <Mode>[
        Mode(ref: '~contains~0~contains~0'),
        HASH_COMMENT_MODE
      ]),
      HASH_COMMENT_MODE
    ]);
