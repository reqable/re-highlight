// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langCurl = Mode(
    refs: {},
    name: "curl",
    aliases: ["curl"],
    keywords: "curl",
    caseInsensitive: true,
    contains: <Mode>[
      Mode(
          className: 'literal',
          begin: "(--request|-X)\\s",
          contains: <Mode>[
            Mode(
                className: 'symbol',
                begin: "(get|post|delete|options|head|put|patch|trace|connect)",
                end: "\\s",
                returnEnd: true)
          ],
          returnEnd: true,
          relevance: 10),
      Mode(
          className: 'literal',
          begin: "--",
          end: "[\\s\"]",
          returnEnd: true,
          relevance: 0),
      Mode(
          className: 'literal',
          begin: "-\\w",
          end: "[\\s\"]",
          returnEnd: true,
          relevance: 0),
      Mode(
          className: 'string',
          begin: "\"",
          end: "\"",
          contains: <Mode>[
            BACKSLASH_ESCAPE,
            Mode(
                className: 'variable',
                begin: "\\\$\\(",
                end: "\\)",
                contains: <Mode>[BACKSLASH_ESCAPE])
          ],
          relevance: 0),
      Mode(className: 'string', begin: "\\\\\"", relevance: 0),
      Mode(className: 'string', begin: "'", end: "'", relevance: 0),
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      Mode(
          className: 'number',
          variants: <Mode>[
            Mode(
                begin:
                    "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)")
          ],
          relevance: 0),
      Mode(match: "(\\/[a-z._-]+)+")
    ]);
