// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langMarkdown = Mode(
    refs: {
      '~contains~0~variants~0~contains~0': Mode(
          begin: "<\\/?[A-Za-z_]", end: ">", subLanguage: "xml", relevance: 0),
      '~contains~0~variants~0~contains~1': Mode(
          variants: <Mode>[
            Mode(begin: "\\[.+?\\]\\[.*?\\]", relevance: 0),
            Mode(
                begin:
                    "\\[.+?\\]\\(((data|javascript|mailto):|(?:http|ftp)s?:\\/\\/).*?\\)",
                relevance: 2),
            Mode(
                begin: "\\[.+?\\]\\([A-Za-z][A-Za-z0-9+.-]*:\\/\\/.*?\\)",
                relevance: 2),
            Mode(begin: "\\[.+?\\]\\([./?&#].*?\\)", relevance: 1),
            Mode(begin: "\\[.*?\\]\\(.*?\\)", relevance: 0)
          ],
          returnBegin: true,
          contains: <Mode>[
            Mode(match: "\\[(?=\\])"),
            Mode(
                className: 'string',
                relevance: 0,
                begin: "\\[",
                end: "\\]",
                excludeBegin: true,
                returnEnd: true),
            Mode(
                className: 'link',
                relevance: 0,
                begin: "\\]\\(",
                end: "\\)",
                excludeBegin: true,
                excludeEnd: true),
            Mode(
                className: 'symbol',
                relevance: 0,
                begin: "\\]\\[",
                end: "\\]",
                excludeBegin: true,
                excludeEnd: true)
          ]),
      '~contains~0~variants~0~contains~2~variants~0':
          Mode(begin: "_{2}(?!\\s)", end: "_{2}"),
      '~contains~0~variants~0~contains~2~variants~1':
          Mode(begin: "\\*{2}(?!\\s)", end: "\\*{2}"),
      '~contains~0~variants~0~contains~2~contains~0~variants~0':
          Mode(begin: "\\*(?![*\\s])", end: "\\*"),
      '~contains~0~variants~0~contains~2~contains~0~variants~1':
          Mode(begin: "_(?![_\\s])", end: "_", relevance: 0),
      '~contains~0~variants~0~contains~2':
          Mode(className: 'strong', contains: <Mode>[
        Mode(className: 'emphasis', contains: <Mode>[
          Mode(ref: '~contains~0~variants~0~contains~0'),
          Mode(ref: '~contains~0~variants~0~contains~1')
        ], variants: <Mode>[
          Mode(begin: "\\*(?![*\\s])", end: "\\*"),
          Mode(begin: "_(?![_\\s])", end: "_", relevance: 0)
        ]),
        Mode(ref: '~contains~0~variants~0~contains~0'),
        Mode(ref: '~contains~0~variants~0~contains~1')
      ], variants: <Mode>[
        Mode(begin: "_{2}(?!\\s)", end: "_{2}"),
        Mode(begin: "\\*{2}(?!\\s)", end: "\\*{2}")
      ]),
      '~contains~0~variants~0~contains~3':
          Mode(className: 'emphasis', contains: <Mode>[
        Mode(className: 'strong', contains: <Mode>[
          Mode(ref: '~contains~0~variants~0~contains~0'),
          Mode(ref: '~contains~0~variants~0~contains~1')
        ], variants: <Mode>[
          Mode(ref: '~contains~0~variants~0~contains~2~variants~0'),
          Mode(ref: '~contains~0~variants~0~contains~2~variants~1')
        ]),
        Mode(ref: '~contains~0~variants~0~contains~0'),
        Mode(ref: '~contains~0~variants~0~contains~1')
      ], variants: <Mode>[
        Mode(ref: '~contains~0~variants~0~contains~2~contains~0~variants~0'),
        Mode(ref: '~contains~0~variants~0~contains~2~contains~0~variants~1')
      ])
    },
    name: "Markdown",
    aliases: ["md", "mkdown", "mkd"],
    contains: <Mode>[
      Mode(className: 'section', variants: <Mode>[
        Mode(begin: "^#{1,6}", end: "\$", contains: <Mode>[
          Mode(ref: '~contains~0~variants~0~contains~0'),
          Mode(ref: '~contains~0~variants~0~contains~1'),
          Mode(ref: '~contains~0~variants~0~contains~2'),
          Mode(ref: '~contains~0~variants~0~contains~3')
        ]),
        Mode(begin: "(?=^.+?\\n[=-]{2,}\$)", contains: <Mode>[
          Mode(begin: "^[=-]*\$"),
          Mode(begin: "^", end: "\\n", contains: <Mode>[
            Mode(ref: '~contains~0~variants~0~contains~0'),
            Mode(ref: '~contains~0~variants~0~contains~1'),
            Mode(ref: '~contains~0~variants~0~contains~2'),
            Mode(ref: '~contains~0~variants~0~contains~3')
          ])
        ])
      ]),
      Mode(ref: '~contains~0~variants~0~contains~0'),
      Mode(
          className: 'bullet',
          begin: "^[ \t]*([*+-]|(\\d+\\.))(?=\\s+)",
          end: "\\s+",
          excludeEnd: true),
      Mode(ref: '~contains~0~variants~0~contains~2'),
      Mode(ref: '~contains~0~variants~0~contains~3'),
      Mode(
          className: 'quote',
          begin: "^>\\s+",
          contains: <Mode>[
            Mode(ref: '~contains~0~variants~0~contains~0'),
            Mode(ref: '~contains~0~variants~0~contains~1'),
            Mode(ref: '~contains~0~variants~0~contains~2'),
            Mode(ref: '~contains~0~variants~0~contains~3')
          ],
          end: "\$"),
      Mode(className: 'code', variants: <Mode>[
        Mode(begin: "(`{3,})[^`](.|\\n)*?\\1`*[ ]*"),
        Mode(begin: "(~{3,})[^~](.|\\n)*?\\1~*[ ]*"),
        Mode(begin: "```", end: "```+[ ]*\$"),
        Mode(begin: "~~~", end: "\~~~+[ ]*\$"),
        Mode(begin: "`.+?`"),
        Mode(
            begin: "(?=^( {4}|\\t))",
            contains: <Mode>[Mode(begin: "^( {4}|\\t)", end: "(\\n)\$")],
            relevance: 0)
      ]),
      Mode(begin: "^[-\\*]{3,}", end: "\$"),
      Mode(ref: '~contains~0~variants~0~contains~1'),
      Mode(begin: "^\\[[^\\n]+\\]:", returnBegin: true, contains: <Mode>[
        Mode(
            className: 'symbol',
            begin: "\\[",
            end: "\\]",
            excludeBegin: true,
            excludeEnd: true),
        Mode(className: 'link', begin: ":\\s*", end: "\$", excludeBegin: true)
      ])
    ]);
