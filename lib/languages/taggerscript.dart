// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langTaggerscript = Mode(
    refs: {},
    name: "Tagger Script",
    contains: <Mode>[
      Mode(
          className: 'comment',
          begin: "\\\$noop\\(",
          end: "\\)",
          contains: <Mode>[
            Mode(begin: "\\\\[()]"),
            Mode(
                begin: "\\(",
                end: "\\)",
                contains: <Mode>[Mode(begin: "\\\\[()]"), Mode(self: true)])
          ],
          relevance: 10),
      Mode(className: 'keyword', begin: "\\\$[_a-zA-Z0-9]+(?=\\()"),
      Mode(className: 'variable', begin: "%[_a-zA-Z0-9:]+%"),
      Mode(className: 'symbol', begin: "\\\\[\\\\nt\$%,()]"),
      Mode(className: 'symbol', begin: "\\\\u[a-fA-F0-9]{4}")
    ]);
