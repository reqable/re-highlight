// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langBrainfuck = Mode(
    refs: {
      '~contains~3~contains~0':
          Mode(className: 'literal', begin: "[+-]+", relevance: 0)
    },
    name: "Brainfuck",
    aliases: ["bf"],
    contains: <Mode>[
      Mode(
          scope: 'comment',
          begin: "[^\\[\\]\\.,\\+\\-<> \\r\\n]",
          end: "[\\[\\]\\.,\\+\\-<> \\r\\n]",
          contains: <Mode>[
            Mode(match: "[ ]+[^\\[\\]\\.,\\+\\-<> \\r\\n]", relevance: 0),
            Mode(
                scope: 'doctag',
                begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                excludeBegin: true,
                relevance: 0),
            Mode(
                begin:
                    "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
          ],
          returnEnd: true,
          relevance: 0),
      Mode(className: 'title', begin: "[\\[\\]]", relevance: 0),
      Mode(className: 'string', begin: "[\\.,]", relevance: 0),
      Mode(
          begin: "(?=\\+\\+|--)",
          contains: <Mode>[Mode(ref: '~contains~3~contains~0')]),
      Mode(ref: '~contains~3~contains~0')
    ]);
