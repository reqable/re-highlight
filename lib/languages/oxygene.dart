// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langOxygene = Mode(
    refs: {
      '~contains~3': Mode(
          className: 'string',
          begin: "'",
          end: "'",
          contains: <Mode>[Mode(begin: "''")]),
      '~contains~4': Mode(className: 'string', begin: "(#\\d+)+"),
      '~contains~0': Mode(
          scope: 'comment',
          begin: "\\{",
          end: "\\}",
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
      '~contains~1': Mode(
          scope: 'comment',
          begin: "\\(\\*",
          end: "\\*\\)",
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
          relevance: 10)
    },
    name: "Oxygene",
    caseInsensitive: true,
    keywords: {
      "\$pattern": "\\.?\\w+",
      "keyword":
          "abstract add and array as asc aspect assembly async begin break block by case class concat const copy constructor continue create default delegate desc distinct div do downto dynamic each else empty end ensure enum equals event except exit extension external false final finalize finalizer finally flags for forward from function future global group has if implementation implements implies in index inherited inline interface into invariants is iterator join locked locking loop matching method mod module namespace nested new nil not notify nullable of old on operator or order out override parallel params partial pinned private procedure property protected public queryable raise read readonly record reintroduce remove repeat require result reverse sealed select self sequence set shl shr skip static step soft take then to true try tuple type union unit unsafe until uses using var virtual raises volatile where while with write xor yield await mapped deprecated stdcall cdecl pascal register safecall overload library platform reference packed strict published autoreleasepool selector strong weak unretained"
    },
    illegal: "(\"|\\\$[G-Zg-z]|\\/\\*|</|=>|->)",
    contains: <Mode>[
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      C_LINE_COMMENT_MODE,
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~4'),
      NUMBER_MODE,
      Mode(
          beginKeywords: "function constructor destructor procedure method",
          end: "[:;]",
          keywords:
              "function constructor|10 destructor|10 procedure|10 method|10",
          contains: <Mode>[
            Mode(scope: 'title.function', begin: "[a-zA-Z]\\w*", relevance: 0),
            Mode(className: 'params', begin: "\\(", end: "\\)", keywords: {
              "\$pattern": "\\.?\\w+",
              "keyword":
                  "abstract add and array as asc aspect assembly async begin break block by case class concat const copy constructor continue create default delegate desc distinct div do downto dynamic each else empty end ensure enum equals event except exit extension external false final finalize finalizer finally flags for forward from function future global group has if implementation implements implies in index inherited inline interface into invariants is iterator join locked locking loop matching method mod module namespace nested new nil not notify nullable of old on operator or order out override parallel params partial pinned private procedure property protected public queryable raise read readonly record reintroduce remove repeat require result reverse sealed select self sequence set shl shr skip static step soft take then to true try tuple type union unit unsafe until uses using var virtual raises volatile where while with write xor yield await mapped deprecated stdcall cdecl pascal register safecall overload library platform reference packed strict published autoreleasepool selector strong weak unretained"
            }, contains: <Mode>[
              Mode(ref: '~contains~3'),
              Mode(ref: '~contains~4')
            ]),
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1')
          ]),
      Mode(scope: 'punctuation', match: ";", relevance: 0)
    ]);
