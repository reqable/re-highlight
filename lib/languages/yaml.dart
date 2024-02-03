// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langYaml = Mode(
    refs: {
      '~contains~0': Mode(className: 'attr', variants: <Mode>[
        Mode(begin: "\\w[\\w :\\/.-]*:(?=[ \t]|\$)"),
        Mode(begin: "\"\\w[\\w :\\/.-]*\":(?=[ \t]|\$)"),
        Mode(begin: "'\\w[\\w :\\/.-]*':(?=[ \t]|\$)")
      ]),
      '~contains~1':
          Mode(className: 'meta', begin: "^---\\s*\$", relevance: 10),
      '~contains~2': Mode(
          className: 'string',
          begin:
              "[\\|>]([1-9]?[+-])?[ ]*\\n( +)[^ ][^\\n]*\\n(\\2[^\\n]+\\n?)*"),
      '~contains~3': Mode(
          begin: "<%[%=-]?",
          end: "[%-]?%>",
          subLanguage: "ruby",
          excludeBegin: true,
          excludeEnd: true,
          relevance: 0),
      '~contains~4': Mode(
          className: 'type', begin: "!\\w+![\\w#;/?:@&=+\$,.\x7e*'()[\\]]+"),
      '~contains~5':
          Mode(className: 'type', begin: "!<[\\w#;/?:@&=+\$,.\x7e*'()[\\]]+>"),
      '~contains~6':
          Mode(className: 'type', begin: "![\\w#;/?:@&=+\$,.\x7e*'()[\\]]+"),
      '~contains~7':
          Mode(className: 'type', begin: "!![\\w#;/?:@&=+\$,.\x7e*'()[\\]]+"),
      '~contains~8': Mode(className: 'meta', begin: "&[a-zA-Z_]\\w*\$"),
      '~contains~9': Mode(className: 'meta', begin: "\\*[a-zA-Z_]\\w*\$"),
      '~contains~10':
          Mode(className: 'bullet', begin: "-(?=[ ]|\$)", relevance: 0),
      '~contains~12': Mode(
          beginKeywords: "true false yes no null",
          keywords: {"literal": "true false yes no null"}),
      '~contains~13': Mode(
          className: 'number',
          begin:
              "\\b[0-9]{4}(-[0-9][0-9]){0,2}([Tt \\t][0-9][0-9]?(:[0-9][0-9]){2})?(\\.[0-9]*)?([ \\t])*(Z|[-+][0-9][0-9]?(:[0-9][0-9])?)?\\b"),
      '~contains~14': Mode(
          className: 'number',
          begin:
              "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)\\b",
          relevance: 0),
      '~contains~15': Mode(
          begin: "\\{",
          end: "\\}",
          contains: <Mode>[
            Mode(
                end: ",",
                endsWithParent: true,
                excludeEnd: true,
                keywords: "true false yes no null",
                relevance: 0,
                contains: <Mode>[
                  Mode(ref: '~contains~0'),
                  Mode(ref: '~contains~1'),
                  Mode(ref: '~contains~2'),
                  Mode(ref: '~contains~3'),
                  Mode(ref: '~contains~4'),
                  Mode(ref: '~contains~5'),
                  Mode(ref: '~contains~6'),
                  Mode(ref: '~contains~7'),
                  Mode(ref: '~contains~8'),
                  Mode(ref: '~contains~9'),
                  Mode(ref: '~contains~10'),
                  HASH_COMMENT_MODE,
                  Mode(ref: '~contains~12'),
                  Mode(ref: '~contains~13'),
                  Mode(ref: '~contains~14'),
                  Mode(ref: '~contains~15'),
                  Mode(
                      begin: "\\[",
                      end: "\\]",
                      contains: <Mode>[Mode(ref: '~contains~15~contains~0')],
                      illegal: "\\n",
                      relevance: 0),
                  Mode(className: 'string', relevance: 0, variants: <Mode>[
                    Mode(begin: "'", end: "'"),
                    Mode(begin: "\"", end: "\""),
                    Mode(begin: "[^\\s,{}[\\]]+")
                  ], contains: <Mode>[
                    BACKSLASH_ESCAPE,
                    Mode(className: 'template-variable', variants: <Mode>[
                      Mode(begin: "\\{\\{", end: "\\}\\}"),
                      Mode(begin: "%\\{", end: "\\}")
                    ])
                  ])
                ])
          ],
          illegal: "\\n",
          relevance: 0),
      '~contains~15~contains~0': Mode(
          end: ",",
          endsWithParent: true,
          excludeEnd: true,
          keywords: "true false yes no null",
          relevance: 0,
          contains: <Mode>[
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1'),
            Mode(ref: '~contains~2'),
            Mode(ref: '~contains~3'),
            Mode(ref: '~contains~4'),
            Mode(ref: '~contains~5'),
            Mode(ref: '~contains~6'),
            Mode(ref: '~contains~7'),
            Mode(ref: '~contains~8'),
            Mode(ref: '~contains~9'),
            Mode(ref: '~contains~10'),
            HASH_COMMENT_MODE,
            Mode(ref: '~contains~12'),
            Mode(ref: '~contains~13'),
            Mode(ref: '~contains~14'),
            Mode(ref: '~contains~15'),
            Mode(
                begin: "\\[",
                end: "\\]",
                contains: <Mode>[Mode(ref: '~contains~15~contains~0')],
                illegal: "\\n",
                relevance: 0),
            Mode(className: 'string', relevance: 0, variants: <Mode>[
              Mode(begin: "'", end: "'"),
              Mode(begin: "\"", end: "\""),
              Mode(begin: "[^\\s,{}[\\]]+")
            ], contains: <Mode>[
              BACKSLASH_ESCAPE,
              Mode(className: 'template-variable', variants: <Mode>[
                Mode(begin: "\\{\\{", end: "\\}\\}"),
                Mode(begin: "%\\{", end: "\\}")
              ])
            ])
          ]),
      '~contains~15~contains~0~contains~16': Mode(
          begin: "\\[",
          end: "\\]",
          contains: <Mode>[Mode(ref: '~contains~15~contains~0')],
          illegal: "\\n",
          relevance: 0),
      '~contains~15~contains~0~contains~17~contains~1': Mode(
          className: 'template-variable',
          variants: <Mode>[
            Mode(begin: "\\{\\{", end: "\\}\\}"),
            Mode(begin: "%\\{", end: "\\}")
          ])
    },
    name: "YAML",
    caseInsensitive: true,
    aliases: ["yml"],
    contains: <Mode>[
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      Mode(ref: '~contains~2'),
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~4'),
      Mode(ref: '~contains~5'),
      Mode(ref: '~contains~6'),
      Mode(ref: '~contains~7'),
      Mode(ref: '~contains~8'),
      Mode(ref: '~contains~9'),
      Mode(ref: '~contains~10'),
      HASH_COMMENT_MODE,
      Mode(ref: '~contains~12'),
      Mode(ref: '~contains~13'),
      Mode(ref: '~contains~14'),
      Mode(ref: '~contains~15'),
      Mode(ref: '~contains~15~contains~0~contains~16'),
      Mode(className: 'string', relevance: 0, variants: <Mode>[
        Mode(begin: "'", end: "'"),
        Mode(begin: "\"", end: "\""),
        Mode(begin: "\\S+")
      ], contains: <Mode>[
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~15~contains~0~contains~17~contains~1')
      ])
    ]);
