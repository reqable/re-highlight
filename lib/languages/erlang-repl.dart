// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langErlangRepl = Mode(
    refs: {},
    name: "Erlang REPL",
    keywords: {
      "built_in": "spawn spawn_link self",
      "keyword":
          "after and andalso|10 band begin bnot bor bsl bsr bxor case catch cond div end fun if let not of or orelse|10 query receive rem try when xor"
    },
    contains: <Mode>[
      Mode(className: 'meta.prompt', begin: "^[0-9]+> ", relevance: 10),
      Mode(scope: 'comment', begin: "%", end: "\$", contains: <Mode>[
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
          className: 'number',
          begin:
              "\\b(\\d+(_\\d+)*#[a-fA-F0-9]+(_[a-fA-F0-9]+)*|\\d+(_\\d+)*(\\.\\d+(_\\d+)*)?([eE][-+]?\\d+)?)",
          relevance: 0),
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      Mode(begin: "\\?(::)?([A-Z]\\w*)((::)[A-Z]\\w*)*"),
      Mode(begin: "->"),
      Mode(begin: "ok"),
      Mode(begin: "!"),
      Mode(
          begin:
              "(\\b[a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*)|(\\b[a-z'][a-zA-Z0-9_']*)",
          relevance: 0),
      Mode(begin: "[A-Z][a-zA-Z0-9_']*", relevance: 0)
    ]);
