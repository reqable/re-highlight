// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';
import 'lib/common.dart';

final langLisp = Mode(
    refs: {
      '~contains~0': Mode(className: 'number', variants: <Mode>[
        Mode(
            begin:
                "(-|\\+)?\\d+(\\.\\d+|\\/\\d+)?((d|e|f|l|s|D|E|F|L|S)(\\+|-)?\\d+)?",
            relevance: 0),
        Mode(begin: "#(b|B)[0-1]+(/[0-1]+)?"),
        Mode(begin: "#(o|O)[0-7]+(/[0-7]+)?"),
        Mode(begin: "#(x|X)[0-9a-fA-F]+(/[0-9a-fA-F]+)?"),
        Mode(
            begin:
                "#(c|C)\\((-|\\+)?\\d+(\\.\\d+|\\/\\d+)?((d|e|f|l|s|D|E|F|L|S)(\\+|-)?\\d+)? +(-|\\+)?\\d+(\\.\\d+|\\/\\d+)?((d|e|f|l|s|D|E|F|L|S)(\\+|-)?\\d+)?",
            end: "\\)")
      ]),
      '~contains~3': Mode(
          scope: 'string',
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: <Mode>[BACKSLASH_ESCAPE]),
      '~contains~2': Mode(className: 'literal', begin: "\\b(t{1}|nil)\\b"),
      '~contains~5~contains~4~contains~4': Mode(
          begin: "[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*",
          relevance: 0),
      '~contains~5': Mode(contains: <Mode>[
        Mode(ref: '~contains~0'),
        Mode(ref: '~contains~3'),
        Mode(begin: "\\*", end: "\\*"),
        Mode(
            className: 'symbol',
            begin: "[:&][a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*"),
        Mode(begin: "\\(", end: "\\)", contains: <Mode>[
          Mode(self: true),
          Mode(ref: '~contains~2'),
          Mode(ref: '~contains~3'),
          Mode(ref: '~contains~0'),
          Mode(
              begin: "[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*",
              relevance: 0)
        ]),
        Mode(ref: '~contains~5~contains~4~contains~4')
      ], variants: <Mode>[
        Mode(begin: "['`]\\(", end: "\\)"),
        Mode(begin: "\\(quote ", end: "\\)", keywords: {"name": "quote"}),
        Mode(begin: "'\\|[^]*?\\|")
      ]),
      '~contains~6': Mode(variants: <Mode>[
        Mode(begin: "'[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*"),
        Mode(
            begin:
                "#'[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*(::[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*)*")
      ]),
      '~contains~7': Mode(begin: "\\(\\s*", end: "\\)", contains: <Mode>[
        Mode(className: 'name', variants: <Mode>[
          Mode(
              begin: "[a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*",
              relevance: 0),
          Mode(begin: "\\|[^]*?\\|")
        ]),
        Mode(endsWithParent: true, relevance: 0, contains: <Mode>[
          Mode(ref: '~contains~5'),
          Mode(ref: '~contains~6'),
          Mode(ref: '~contains~7'),
          Mode(ref: '~contains~2'),
          Mode(ref: '~contains~0'),
          Mode(ref: '~contains~3'),
          Mode(ref: '~contains~4'),
          Mode(ref: '~contains~5~contains~2'),
          Mode(ref: '~contains~5~contains~3'),
          Mode(begin: "\\|[^]*?\\|"),
          Mode(ref: '~contains~5~contains~4~contains~4')
        ])
      ]),
      '~contains~4': Mode(
          scope: 'comment',
          begin: ";",
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
          relevance: 0),
      '~contains~5~contains~2': Mode(begin: "\\*", end: "\\*"),
      '~contains~5~contains~3': Mode(
          className: 'symbol',
          begin: "[:&][a-zA-Z_\\-+\\*\\/<=>&#][a-zA-Z0-9_\\-+*\\/<=>&#!]*")
    },
    name: "Lisp",
    illegal: "\\S",
    contains: <Mode>[
      Mode(ref: '~contains~0'),
      Mode(
          scope: 'meta',
          begin: "^#![ ]*\\/",
          end: "\$",
          relevance: 0,
          onBegin: callbackOnBegin2),
      Mode(ref: '~contains~2'),
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~4'),
      Mode(ref: '~contains~5'),
      Mode(ref: '~contains~6'),
      Mode(ref: '~contains~7'),
      Mode(ref: '~contains~5~contains~4~contains~4')
    ]);
