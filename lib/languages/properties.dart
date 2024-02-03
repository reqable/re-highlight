// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langProperties = Mode(
    refs: {},
    name: ".properties",
    disableAutodetect: true,
    caseInsensitive: true,
    illegal: "\\S",
    contains: <Mode>[
      Mode(scope: 'comment', begin: "^\\s*[!#]", end: "\$", contains: <Mode>[
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
          returnBegin: true,
          variants: <Mode>[
            Mode(begin: "([^\\\\:= \\t\\f\\n]|\\\\.)+[ \\t\\f]*[:=][ \\t\\f]*"),
            Mode(begin: "([^\\\\:= \\t\\f\\n]|\\\\.)+[ \\t\\f]+")
          ],
          contains: <Mode>[
            Mode(
                className: 'attr',
                begin: "([^\\\\:= \\t\\f\\n]|\\\\.)+",
                endsParent: true)
          ],
          starts: Mode(
              end: "([ \\t\\f]*[:=][ \\t\\f]*|[ \\t\\f]+)",
              relevance: 0,
              starts: Mode(
                  className: 'string',
                  end: "\$",
                  relevance: 0,
                  contains: <Mode>[
                    Mode(begin: "\\\\\\\\"),
                    Mode(begin: "\\\\\\n")
                  ]))),
      Mode(className: 'attr', begin: "([^\\\\:= \\t\\f\\n]|\\\\.)+[ \\t\\f]*\$")
    ]);
