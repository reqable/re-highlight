// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langLeaf = Mode(
    refs: {
      '~contains~0~contains~0': Mode(
          scope: 'params',
          begin: "\\(",
          end: "\\)(?=\\:?)",
          endsParent: true,
          relevance: 7,
          contains: <Mode>[
            Mode(match: [
              "([A-Za-z_][A-Za-z_0-9]*)?",
              "(?=\\()"
            ], scope: <int, String>{
              1: 'keyword',
            }, contains: <Mode>[
              Mode(ref: '~contains~0~contains~0')
            ]),
            Mode(scope: 'string', begin: "\"", end: "\""),
            Mode(scope: 'keyword', match: "true|false|in"),
            Mode(scope: 'variable', match: "[A-Za-z_][A-Za-z_0-9]*"),
            Mode(
                scope: 'operator',
                match:
                    "\\+|\\-|\\*|\\/|\\%|\\=\\=|\\=|\\!|\\>|\\<|\\&\\&|\\|\\|")
          ])
    },
    name: "Leaf",
    contains: <Mode>[
      Mode(
          match: ["#+", "([A-Za-z_][A-Za-z_0-9]*)?", "(?=\\()"],
          scope: <int, String>{
            1: 'punctuation',
            2: 'keyword',
          },
          starts:
              Mode(contains: <Mode>[Mode(match: "\\:", scope: 'punctuation')]),
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')]),
      Mode(match: [
        "#+",
        "([A-Za-z_][A-Za-z_0-9]*)?",
        ":?"
      ], scope: <int, String>{
        1: 'punctuation',
        2: 'keyword',
        3: 'punctuation',
      })
    ]);
