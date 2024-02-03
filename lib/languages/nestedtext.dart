// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langNestedtext = Mode(
    refs: {},
    name: "Nested Text",
    aliases: ["nt"],
    contains: <Mode>[
      Mode(
          scope: 'comment',
          begin: "^\\s*(?=#)",
          end: "\$",
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
          ],
          excludeBegin: true),
      Mode(variants: <Mode>[
        Mode(match: ["^\\s*", "-", "[ ]", ".*\$"]),
        Mode(match: ["^\\s*", "-\$"])
      ], className: <int, String>{
        2: 'bullet',
        4: 'string',
      }),
      Mode(match: [
        "^\\s*",
        ">",
        "[ ]",
        ".*\$"
      ], className: <int, String>{
        2: 'punctuation',
        4: 'string',
      }),
      Mode(match: [
        "^\\s*(?=\\S)",
        "[^:]+",
        ":\\s*",
        "\$"
      ], className: <int, String>{
        2: 'attribute',
        3: 'punctuation',
      }),
      Mode(match: [
        "^\\s*(?=\\S)",
        "[^:]*[^: ]",
        "[ ]*:",
        "[ ]",
        ".*\$"
      ], className: <int, String>{
        2: 'attribute',
        3: 'punctuation',
        5: 'string',
      })
    ]);
