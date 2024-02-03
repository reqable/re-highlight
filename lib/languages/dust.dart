// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langDust = Mode(
    refs: {},
    name: "Dust",
    aliases: ["dst"],
    caseInsensitive: true,
    subLanguage: "xml",
    contains: <Mode>[
      Mode(
          className: 'template-tag',
          begin: "\\{[#\\/]",
          end: "\\}",
          illegal: ";",
          contains: <Mode>[
            Mode(
                className: 'name',
                begin: "[a-zA-Z\\.-]+",
                starts: Mode(
                    endsWithParent: true,
                    relevance: 0,
                    contains: <Mode>[QUOTE_STRING_MODE]))
          ]),
      Mode(
          className: 'template-variable',
          begin: "\\{",
          end: "\\}",
          illegal: ";",
          keywords: "if eq ne lt lte gt gte select default math sep")
    ]);
