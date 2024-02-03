// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langGherkin = Mode(
    refs: {},
    name: "Gherkin",
    aliases: ["feature"],
    keywords:
        "Feature Background Ability Business Need Scenario Scenarios Scenario Outline Scenario Template Examples Given And Then But When",
    contains: <Mode>[
      Mode(className: 'symbol', begin: "\\*", relevance: 0),
      Mode(className: 'meta', begin: "@[^@\\s]+"),
      Mode(
          begin: "\\|",
          end: "\\|\\w*\$",
          contains: <Mode>[Mode(className: 'string', begin: "[^|]+")]),
      Mode(className: 'variable', begin: "<", end: ">"),
      HASH_COMMENT_MODE,
      Mode(className: 'string', begin: "\"\"\"", end: "\"\"\""),
      QUOTE_STRING_MODE
    ]);
