// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langZephir = Mode(
    refs: {
      '~contains~4~contains~1~contains~2':
          Mode(className: 'string', contains: <Mode>[
        BACKSLASH_ESCAPE
      ], variants: <Mode>[
        Mode(
            scope: 'string',
            begin: "'",
            end: "'",
            illegal: null,
            contains: <Mode>[BACKSLASH_ESCAPE]),
        Mode(
            scope: 'string',
            begin: "\"",
            end: "\"",
            illegal: null,
            contains: <Mode>[BACKSLASH_ESCAPE])
      ]),
      '~contains~4~contains~1~contains~3':
          Mode(variants: <Mode>[BINARY_NUMBER_MODE, C_NUMBER_MODE])
    },
    name: "Zephir",
    aliases: ["zep"],
    keywords:
        "namespace class interface use extends function return abstract final public protected private static deprecated throw try catch Exception echo empty isset instanceof unset let var new const self require if else elseif switch case default do while loop for continue break likely unlikely __LINE__ __FILE__ __DIR__ __FUNCTION__ __CLASS__ __TRAIT__ __METHOD__ __NAMESPACE__ array boolean float double integer object resource string char long unsigned bool int uint ulong uchar true false null undefined",
    contains: <Mode>[
      C_LINE_COMMENT_MODE,
      Mode(scope: 'comment', begin: "\\/\\*", end: "\\*\\/", contains: <Mode>[
        Mode(className: 'doctag', begin: "@[A-Za-z]+"),
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
          className: 'string',
          begin: "<<<['\"]?\\w+['\"]?\$",
          end: "^\\w+;",
          contains: <Mode>[BACKSLASH_ESCAPE]),
      Mode(begin: "(::|->)+[a-zA-Z_\\x7f-\\xff][a-zA-Z0-9_\\x7f-\\xff]*"),
      Mode(
          className: 'function',
          beginKeywords: "function fn",
          end: "[;{]",
          excludeEnd: true,
          illegal: "\\\$|\\[|%",
          contains: <Mode>[
            UNDERSCORE_TITLE_MODE,
            Mode(
                className: 'params',
                begin: "\\(",
                end: "\\)",
                keywords:
                    "namespace class interface use extends function return abstract final public protected private static deprecated throw try catch Exception echo empty isset instanceof unset let var new const self require if else elseif switch case default do while loop for continue break likely unlikely __LINE__ __FILE__ __DIR__ __FUNCTION__ __CLASS__ __TRAIT__ __METHOD__ __NAMESPACE__ array boolean float double integer object resource string char long unsigned bool int uint ulong uchar true false null undefined",
                contains: <Mode>[
                  Mode(self: true),
                  C_BLOCK_COMMENT_MODE,
                  Mode(ref: '~contains~4~contains~1~contains~2'),
                  Mode(ref: '~contains~4~contains~1~contains~3')
                ])
          ]),
      Mode(
          className: 'class',
          beginKeywords: "class interface",
          end: "\\{",
          excludeEnd: true,
          illegal: "[:(\$\"]",
          contains: <Mode>[
            Mode(beginKeywords: "extends implements"),
            UNDERSCORE_TITLE_MODE
          ]),
      Mode(
          beginKeywords: "namespace",
          end: ";",
          illegal: "[.']",
          contains: <Mode>[UNDERSCORE_TITLE_MODE]),
      Mode(
          beginKeywords: "use",
          end: ";",
          contains: <Mode>[UNDERSCORE_TITLE_MODE]),
      Mode(begin: "=>"),
      Mode(ref: '~contains~4~contains~1~contains~2'),
      Mode(ref: '~contains~4~contains~1~contains~3')
    ]);
