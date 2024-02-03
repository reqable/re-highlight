// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langGraphql = Mode(
    refs: {},
    name: "GraphQL",
    aliases: ["gql"],
    caseInsensitive: true,
    disableAutodetect: false,
    keywords: {
      "keyword": [
        "query",
        "mutation",
        "subscription",
        "type",
        "input",
        "schema",
        "directive",
        "interface",
        "union",
        "scalar",
        "fragment",
        "enum",
        "on"
      ],
      "literal": ["true", "false", "null"]
    },
    contains: <Mode>[
      HASH_COMMENT_MODE,
      QUOTE_STRING_MODE,
      NUMBER_MODE,
      Mode(scope: 'punctuation', match: "[.]{3}", relevance: 0),
      Mode(
          scope: 'punctuation',
          begin: "[\\!\\(\\)\\:\\=\\[\\]\\{\\|\\}]{1}",
          relevance: 0),
      Mode(
          scope: 'variable',
          begin: "\\\$",
          end: "\\W",
          excludeEnd: true,
          relevance: 0),
      Mode(scope: 'meta', match: "@\\w+", excludeEnd: true),
      Mode(
          scope: 'symbol',
          begin: "[_A-Za-z][_0-9A-Za-z]*(?=\\s*:)",
          relevance: 0)
    ],
    illegal: ["[;<']", "BEGIN"]);
