// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langParser3 = Mode(
    refs: {},
    name: "Parser3",
    subLanguage: "xml",
    relevance: 0,
    contains: <Mode>[
      Mode(scope: 'comment', begin: "^#", end: "\$", contains: <Mode>[
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
          scope: 'comment',
          begin: "\\^rem\\{",
          end: "\\}",
          contains: <Mode>[
            Mode(scope: 'comment', begin: "\\{", end: "\\}", contains: <Mode>[
              Mode(self: true),
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
                scope: 'doctag',
                begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                excludeBegin: true,
                relevance: 0),
            Mode(
                begin:
                    "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
          ],
          relevance: 10),
      Mode(
          className: 'meta',
          begin: "^@(?:BASE|USE|CLASS|OPTIONS)\$",
          relevance: 10),
      Mode(
          className: 'title',
          begin: "@[\\w\\-]+\\[[\\w^;\\-]*\\](?:\\[[\\w^;\\-]*\\])?(?:.*)\$"),
      Mode(className: 'variable', begin: "\\\$\\{?[\\w\\-.:]+\\}?"),
      Mode(className: 'keyword', begin: "\\^[\\w\\-.:]+"),
      Mode(className: 'number', begin: "\\^#[0-9a-fA-F]+"),
      C_NUMBER_MODE
    ]);
