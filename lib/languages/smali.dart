// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langSmali = Mode(
    refs: {},
    name: "Smali",
    contains: <Mode>[
      Mode(className: 'string', begin: "\"", end: "\"", relevance: 0),
      Mode(
          scope: 'comment',
          begin: "#",
          end: "\$",
          contains: <Mode>[
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
          relevance: 0),
      Mode(className: 'keyword', variants: <Mode>[
        Mode(begin: "\\s*\\.end\\s[a-zA-Z0-9]*"),
        Mode(begin: "^[ ]*\\.[a-zA-Z]*", relevance: 0),
        Mode(begin: "\\s:[a-zA-Z_0-9]*", relevance: 0),
        Mode(
            begin:
                "\\s(transient|constructor|abstract|final|synthetic|public|private|protected|static|bridge|system)")
      ]),
      Mode(className: 'built_in', variants: <Mode>[
        Mode(
            begin:
                "\\s(add|and|cmp|cmpg|cmpl|const|div|double|float|goto|if|int|long|move|mul|neg|new|nop|not|or|rem|return|shl|shr|sput|sub|throw|ushr|xor)\\s"),
        Mode(
            begin:
                "\\s(add|and|cmp|cmpg|cmpl|const|div|double|float|goto|if|int|long|move|mul|neg|new|nop|not|or|rem|return|shl|shr|sput|sub|throw|ushr|xor)((-|/)[a-zA-Z0-9]+)+\\s",
            relevance: 10),
        Mode(
            begin:
                "\\s(aget|aput|array|check|execute|fill|filled|goto/16|goto/32|iget|instance|invoke|iput|monitor|packed|sget|sparse)((-|/)[a-zA-Z0-9]+)*\\s",
            relevance: 10)
      ]),
      Mode(className: 'class', begin: "L[^(;:\n]*;", relevance: 0),
      Mode(begin: "[vp][0-9]+")
    ]);
