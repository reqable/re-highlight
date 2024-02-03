// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langSml = Mode(
    refs: {},
    name: "SML (Standard ML)",
    aliases: ["ml"],
    keywords: {
      "\$pattern": "[a-z_]\\w*!?",
      "keyword":
          "abstype and andalso as case datatype do else end eqtype exception fn fun functor handle if in include infix infixr let local nonfix of op open orelse raise rec sharing sig signature struct structure then type val with withtype where while",
      "built_in":
          "array bool char exn int list option order real ref string substring vector unit word",
      "literal": "true false NONE SOME LESS EQUAL GREATER nil"
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
      Mode(begin: "[a-z_]\\w*'[\\w']*"),
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
      Mode(begin: "[-=]>")
    ]);
