// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langProlog = Mode(
    refs: {
      '~contains~0': Mode(begin: "[a-z][A-Za-z0-9_]*", relevance: 0),
      '~contains~1': Mode(
          className: 'symbol',
          variants: <Mode>[
            Mode(begin: "[A-Z][a-zA-Z0-9_]*"),
            Mode(begin: "_[A-Za-z0-9_]*")
          ],
          relevance: 0),
      '~contains~2':
          Mode(begin: "\\(", end: "\\)", relevance: 0, contains: <Mode>[
        Mode(ref: '~contains~0'),
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~2'),
        Mode(begin: ":-"),
        Mode(begin: "\\[", end: "\\]", contains: <Mode>[
          Mode(ref: '~contains~0'),
          Mode(ref: '~contains~1'),
          Mode(ref: '~contains~2'),
          Mode(ref: '~contains~2~contains~3'),
          Mode(ref: '~contains~2~contains~4'),
          Mode(
              className: 'comment',
              begin: "%",
              end: "\$",
              contains: <Mode>[PHRASAL_WORDS_MODE]),
          C_BLOCK_COMMENT_MODE,
          QUOTE_STRING_MODE,
          APOS_STRING_MODE,
          Mode(
              className: 'string',
              begin: "`",
              end: "`",
              contains: <Mode>[BACKSLASH_ESCAPE]),
          Mode(className: 'string', begin: "0'(\\\\'|.)"),
          Mode(className: 'string', begin: "0'\\\\s"),
          C_NUMBER_MODE
        ]),
        Mode(ref: '~contains~2~contains~4~contains~5'),
        C_BLOCK_COMMENT_MODE,
        QUOTE_STRING_MODE,
        APOS_STRING_MODE,
        Mode(ref: '~contains~2~contains~4~contains~9'),
        Mode(ref: '~contains~2~contains~4~contains~10'),
        Mode(ref: '~contains~2~contains~4~contains~11'),
        C_NUMBER_MODE
      ]),
      '~contains~2~contains~3': Mode(begin: ":-"),
      '~contains~2~contains~4': Mode(begin: "\\[", end: "\\]", contains: <Mode>[
        Mode(ref: '~contains~0'),
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~2'),
        Mode(ref: '~contains~2~contains~3'),
        Mode(ref: '~contains~2~contains~4'),
        Mode(
            className: 'comment',
            begin: "%",
            end: "\$",
            contains: <Mode>[PHRASAL_WORDS_MODE]),
        C_BLOCK_COMMENT_MODE,
        QUOTE_STRING_MODE,
        APOS_STRING_MODE,
        Mode(
            className: 'string',
            begin: "`",
            end: "`",
            contains: <Mode>[BACKSLASH_ESCAPE]),
        Mode(className: 'string', begin: "0'(\\\\'|.)"),
        Mode(className: 'string', begin: "0'\\\\s"),
        C_NUMBER_MODE
      ]),
      '~contains~2~contains~4~contains~5': Mode(
          className: 'comment',
          begin: "%",
          end: "\$",
          contains: <Mode>[PHRASAL_WORDS_MODE]),
      '~contains~2~contains~4~contains~9': Mode(
          className: 'string',
          begin: "`",
          end: "`",
          contains: <Mode>[BACKSLASH_ESCAPE]),
      '~contains~2~contains~4~contains~10':
          Mode(className: 'string', begin: "0'(\\\\'|.)"),
      '~contains~2~contains~4~contains~11':
          Mode(className: 'string', begin: "0'\\\\s")
    },
    name: "Prolog",
    contains: <Mode>[
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      Mode(ref: '~contains~2'),
      Mode(ref: '~contains~2~contains~3'),
      Mode(ref: '~contains~2~contains~4'),
      Mode(ref: '~contains~2~contains~4~contains~5'),
      C_BLOCK_COMMENT_MODE,
      QUOTE_STRING_MODE,
      APOS_STRING_MODE,
      Mode(ref: '~contains~2~contains~4~contains~9'),
      Mode(ref: '~contains~2~contains~4~contains~10'),
      Mode(ref: '~contains~2~contains~4~contains~11'),
      C_NUMBER_MODE,
      Mode(begin: "\\.\$")
    ]);
