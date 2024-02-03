// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langOcaml = Mode(
    refs: {},
    name: "OCaml",
    aliases: ["ml"],
    keywords: {
      "\$pattern": "[a-z_]\\w*!?",
      "keyword":
          "and as assert asr begin class constraint do done downto else end exception external for fun function functor if in include inherit! inherit initializer land lazy let lor lsl lsr lxor match method!|10 method mod module mutable new object of open! open or private rec sig struct then to try type val! val virtual when while with parser value",
      "built_in":
          "array bool bytes char exn|5 float int int32 int64 list lazy_t|5 nativeint|5 string unit in_channel out_channel ref",
      "literal": "true false"
    },
    illegal: "\\/\\/|>>",
    contains: <Mode>[
      Mode(className: 'literal', begin: "\\[(\\|\\|)?\\]|\\(\\)", relevance: 0),
      Mode(scope: 'comment', begin: "\\(\\*", end: "\\*\\)", contains: <Mode>[
        Mode(self: true),
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
      Mode(className: 'symbol', begin: "'[A-Za-z_](?!')[\\w']*"),
      Mode(className: 'type', begin: "`[A-Z][\\w']*"),
      Mode(className: 'type', begin: "\\b[A-Z][\\w']*", relevance: 0),
      Mode(begin: "[a-z_]\\w*'[\\w']*", relevance: 0),
      Mode(
          scope: 'string',
          begin: "'",
          end: "'",
          illegal: "\\n",
          contains: <Mode>[BACKSLASH_ESCAPE],
          className: 'string',
          relevance: 0),
      Mode(
          scope: 'string',
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: <Mode>[BACKSLASH_ESCAPE]),
      Mode(
          className: 'number',
          begin:
              "\\b(0[xX][a-fA-F0-9_]+[Lln]?|0[oO][0-7_]+[Lln]?|0[bB][01_]+[Lln]?|[0-9][0-9_]*([Lln]|(\\.[0-9_]*)?([eE][-+]?[0-9_]+)?)?)",
          relevance: 0),
      Mode(begin: "->")
    ]);
