// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langHaml = Mode(
    refs: {},
    name: "HAML",
    caseInsensitive: true,
    contains: <Mode>[
      Mode(
          className: 'meta',
          begin:
              "^!!!( (5|1\\.1|Strict|Frameset|Basic|Mobile|RDFa|XML\\b.*))?\$",
          relevance: 10),
      Mode(
          scope: 'comment',
          begin: "^\\s*(!=#|=#|-#|/).*\$",
          end: null,
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
      Mode(
          begin: "^\\s*(-|=|!=)(?!#)",
          end: "\$",
          subLanguage: "ruby",
          excludeBegin: true,
          excludeEnd: true),
      Mode(className: 'tag', begin: "^\\s*%", contains: <Mode>[
        Mode(className: 'selector-tag', begin: "\\w+"),
        Mode(className: 'selector-id', begin: "#[\\w-]+"),
        Mode(className: 'selector-class', begin: "\\.[\\w-]+"),
        Mode(begin: "\\{\\s*", end: "\\s*\\}", contains: <Mode>[
          Mode(
              begin: ":\\w+\\s*=>",
              end: ",\\s+",
              returnBegin: true,
              endsWithParent: true,
              contains: <Mode>[
                Mode(className: 'attr', begin: ":\\w+"),
                APOS_STRING_MODE,
                QUOTE_STRING_MODE,
                Mode(begin: "\\w+", relevance: 0)
              ])
        ]),
        Mode(
            begin: "\\(\\s*",
            end: "\\s*\\)",
            excludeEnd: true,
            contains: <Mode>[
              Mode(
                  begin: "\\w+\\s*=",
                  end: "\\s+",
                  returnBegin: true,
                  endsWithParent: true,
                  contains: <Mode>[
                    Mode(className: 'attr', begin: "\\w+", relevance: 0),
                    APOS_STRING_MODE,
                    QUOTE_STRING_MODE,
                    Mode(begin: "\\w+", relevance: 0)
                  ])
            ])
      ]),
      Mode(begin: "^\\s*[=~]\\s*"),
      Mode(
          begin: "#\\{",
          end: "\\}",
          subLanguage: "ruby",
          excludeBegin: true,
          excludeEnd: true)
    ]);
