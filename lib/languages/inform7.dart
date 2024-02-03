// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langInform7 = Mode(
    refs: {},
    name: "Inform 7",
    aliases: ["i7"],
    caseInsensitive: true,
    keywords: {
      "keyword":
          "thing room person man woman animal container supporter backdrop door scenery open closed locked inside gender is are say understand kind of rule"
    },
    contains: <Mode>[
      Mode(
          className: 'string',
          begin: "\"",
          end: "\"",
          relevance: 0,
          contains: <Mode>[Mode(className: 'subst', begin: "\\[", end: "\\]")]),
      Mode(
          className: 'section',
          begin: "^(Volume|Book|Part|Chapter|Section|Table)\\b",
          end: "\$"),
      Mode(
          begin:
              "^(Check|Carry out|Report|Instead of|To|Rule|When|Before|After)\\b",
          end: ":",
          contains: <Mode>[Mode(begin: "\\(This", end: "\\)")]),
      Mode(
          className: 'comment',
          begin: "\\[",
          end: "\\]",
          contains: <Mode>[Mode(self: true)])
    ]);
