// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langHandlebars = Mode(
    refs: {
      '~contains~4~contains~0~starts~contains~3': Mode(
          begin: "as\\s+\\|",
          keywords: {"keyword": "as"},
          end: "\\|",
          contains: <Mode>[Mode(begin: "\\w+")]),
      '~contains~4~contains~0~starts~contains~4': Mode(
          className: 'attr',
          begin:
              "(\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\x7e]+)(?==)",
          relevance: 0,
          starts: Mode(
              begin: "=",
              end: "=",
              starts: Mode(contains: <Mode>[
                NUMBER_MODE,
                QUOTE_STRING_MODE,
                APOS_STRING_MODE,
                Mode(
                    begin:
                        "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
                    keywords: {
                      "\$pattern": "[\\w.\\/]+",
                      "literal": ["true", "false", "undefined", "null"]
                    }),
                Mode(begin: "\\(", end: "\\)", contains: <Mode>[
                  Mode(
                      begin:
                          "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
                      className: 'name',
                      keywords: {
                        "\$pattern": "[\\w.\\/]+",
                        "built_in": [
                          "action",
                          "bindattr",
                          "collection",
                          "component",
                          "concat",
                          "debugger",
                          "each",
                          "each-in",
                          "get",
                          "hash",
                          "if",
                          "in",
                          "input",
                          "link-to",
                          "loc",
                          "log",
                          "lookup",
                          "mut",
                          "outlet",
                          "partial",
                          "query-params",
                          "render",
                          "template",
                          "textarea",
                          "unbound",
                          "unless",
                          "view",
                          "with",
                          "yield"
                        ]
                      },
                      starts: Mode(contains: <Mode>[
                        NUMBER_MODE,
                        QUOTE_STRING_MODE,
                        APOS_STRING_MODE,
                        Mode(ref: '~contains~4~contains~0~starts~contains~3'),
                        Mode(ref: '~contains~4~contains~0~starts~contains~4'),
                        Mode(
                            ref:
                                '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3'),
                        Mode(
                            ref:
                                '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4')
                      ], returnEnd: true, end: "\\)"))
                ])
              ]))),
      '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3': Mode(
          begin:
              "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\x7e]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
          keywords: {
            "\$pattern": "[\\w.\\/]+",
            "literal": ["true", "false", "undefined", "null"]
          }),
      '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4':
          Mode(begin: "\\(", end: "\\)", contains: <Mode>[
        Mode(
            begin:
                "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
            className: 'name',
            keywords: {
              "\$pattern": "[\\w.\\/]+",
              "built_in": [
                "action",
                "bindattr",
                "collection",
                "component",
                "concat",
                "debugger",
                "each",
                "each-in",
                "get",
                "hash",
                "if",
                "in",
                "input",
                "link-to",
                "loc",
                "log",
                "lookup",
                "mut",
                "outlet",
                "partial",
                "query-params",
                "render",
                "template",
                "textarea",
                "unbound",
                "unless",
                "view",
                "with",
                "yield"
              ]
            },
            starts: Mode(contains: <Mode>[
              NUMBER_MODE,
              QUOTE_STRING_MODE,
              APOS_STRING_MODE,
              Mode(ref: '~contains~4~contains~0~starts~contains~3'),
              Mode(ref: '~contains~4~contains~0~starts~contains~4'),
              Mode(
                  ref:
                      '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3'),
              Mode(
                  ref:
                      '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4')
            ], returnEnd: true, end: "\\)"))
      ]),
      '~contains~4~contains~0': Mode(
          begin:
              "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\x7e]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
          keywords: {
            "\$pattern": "[\\w.\\/]+",
            "built_in": [
              "action",
              "bindattr",
              "collection",
              "component",
              "concat",
              "debugger",
              "each",
              "each-in",
              "get",
              "hash",
              "if",
              "in",
              "input",
              "link-to",
              "loc",
              "log",
              "lookup",
              "mut",
              "outlet",
              "partial",
              "query-params",
              "render",
              "template",
              "textarea",
              "unbound",
              "unless",
              "view",
              "with",
              "yield"
            ]
          },
          className: 'name',
          starts: Mode(contains: <Mode>[
            NUMBER_MODE,
            QUOTE_STRING_MODE,
            APOS_STRING_MODE,
            Mode(
                begin: "as\\s+\\|",
                keywords: {"keyword": "as"},
                end: "\\|",
                contains: <Mode>[Mode(begin: "\\w+")]),
            Mode(
                className: 'attr',
                begin:
                    "(\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?==)",
                relevance: 0,
                starts: Mode(
                    begin: "=",
                    end: "=",
                    starts: Mode(contains: <Mode>[
                      NUMBER_MODE,
                      QUOTE_STRING_MODE,
                      APOS_STRING_MODE,
                      Mode(
                          begin:
                              "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
                          keywords: {
                            "\$pattern": "[\\w.\\/]+",
                            "literal": ["true", "false", "undefined", "null"]
                          }),
                      Mode(begin: "\\(", end: "\\)", contains: <Mode>[
                        Mode(
                            begin:
                                "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
                            className: 'name',
                            keywords: {
                              "\$pattern": "[\\w.\\/]+",
                              "built_in": [
                                "action",
                                "bindattr",
                                "collection",
                                "component",
                                "concat",
                                "debugger",
                                "each",
                                "each-in",
                                "get",
                                "hash",
                                "if",
                                "in",
                                "input",
                                "link-to",
                                "loc",
                                "log",
                                "lookup",
                                "mut",
                                "outlet",
                                "partial",
                                "query-params",
                                "render",
                                "template",
                                "textarea",
                                "unbound",
                                "unless",
                                "view",
                                "with",
                                "yield"
                              ]
                            },
                            starts: Mode(contains: <Mode>[
                              NUMBER_MODE,
                              QUOTE_STRING_MODE,
                              APOS_STRING_MODE,
                              Mode(
                                  ref:
                                      '~contains~4~contains~0~starts~contains~3'),
                              Mode(
                                  ref:
                                      '~contains~4~contains~0~starts~contains~4'),
                              Mode(
                                  ref:
                                      '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3'),
                              Mode(
                                  ref:
                                      '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4')
                            ], returnEnd: true, end: "\\)"))
                      ])
                    ]))),
            Mode(
                ref:
                    '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3'),
            Mode(
                ref:
                    '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4')
          ], returnEnd: true, end: "\\}\\}")),
      '~contains~5~contains~0': Mode(
          begin:
              "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\x7e]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
          keywords: {
            "\$pattern": "[\\w.\\/]+",
            "built_in": [
              "action",
              "bindattr",
              "collection",
              "component",
              "concat",
              "debugger",
              "each",
              "each-in",
              "get",
              "hash",
              "if",
              "in",
              "input",
              "link-to",
              "loc",
              "log",
              "lookup",
              "mut",
              "outlet",
              "partial",
              "query-params",
              "render",
              "template",
              "textarea",
              "unbound",
              "unless",
              "view",
              "with",
              "yield"
            ]
          },
          className: 'name'),
      '~contains~10~contains~0': Mode(
          begin:
              "(?:\\.|\\.\\/|\\/)?(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}\x7e]+)(?:(\\.|\\/)(?:\"\"|\"[^\"]+\"|''|'[^']+'|\\[\\]|\\[[^\\]]+\\]|[^\\s!\"#%&'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*",
          className: 'name',
          keywords: {
            "\$pattern": "[\\w.\\/]+",
            "built_in": [
              "action",
              "bindattr",
              "collection",
              "component",
              "concat",
              "debugger",
              "each",
              "each-in",
              "get",
              "hash",
              "if",
              "in",
              "input",
              "link-to",
              "loc",
              "log",
              "lookup",
              "mut",
              "outlet",
              "partial",
              "query-params",
              "render",
              "template",
              "textarea",
              "unbound",
              "unless",
              "view",
              "with",
              "yield"
            ]
          },
          starts: Mode(contains: <Mode>[
            NUMBER_MODE,
            QUOTE_STRING_MODE,
            APOS_STRING_MODE,
            Mode(ref: '~contains~4~contains~0~starts~contains~3'),
            Mode(ref: '~contains~4~contains~0~starts~contains~4'),
            Mode(
                ref:
                    '~contains~4~contains~0~starts~contains~4~starts~starts~contains~3'),
            Mode(
                ref:
                    '~contains~4~contains~0~starts~contains~4~starts~starts~contains~4')
          ], returnEnd: true, end: "\\}\\}"))
    },
    name: "Handlebars",
    aliases: ["hbs", "html.hbs", "html.handlebars", "htmlbars"],
    caseInsensitive: true,
    subLanguage: "xml",
    contains: <Mode>[
      Mode(begin: "\\\\\\{\\{", skip: true),
      Mode(begin: "\\\\\\\\(?=\\{\\{)", skip: true),
      Mode(
          scope: 'comment',
          begin: "\\{\\{!--",
          end: "--\\}\\}",
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
          ]),
      Mode(scope: 'comment', begin: "\\{\\{!", end: "\\}\\}", contains: <Mode>[
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
          className: 'template-tag',
          begin: "\\{\\{\\{\\{(?!\\/)",
          end: "\\}\\}\\}\\}",
          contains: <Mode>[Mode(ref: '~contains~4~contains~0')],
          starts: Mode(
              end: "\\{\\{\\{\\{\\/", returnEnd: true, subLanguage: "xml")),
      Mode(
          className: 'template-tag',
          begin: "\\{\\{\\{\\{\\/",
          end: "\\}\\}\\}\\}",
          contains: <Mode>[Mode(ref: '~contains~5~contains~0')]),
      Mode(
          className: 'template-tag',
          begin: "\\{\\{#",
          end: "\\}\\}",
          contains: <Mode>[Mode(ref: '~contains~4~contains~0')]),
      Mode(
          className: 'template-tag',
          begin: "\\{\\{(?=else\\}\\})",
          end: "\\}\\}",
          keywords: "else"),
      Mode(
          className: 'template-tag',
          begin: "\\{\\{(?=else if)",
          end: "\\}\\}",
          keywords: "else if"),
      Mode(
          className: 'template-tag',
          begin: "\\{\\{\\/",
          end: "\\}\\}",
          contains: <Mode>[Mode(ref: '~contains~5~contains~0')]),
      Mode(
          className: 'template-variable',
          begin: "\\{\\{\\{",
          end: "\\}\\}\\}",
          contains: <Mode>[Mode(ref: '~contains~10~contains~0')]),
      Mode(
          className: 'template-variable',
          begin: "\\{\\{",
          end: "\\}\\}",
          contains: <Mode>[Mode(ref: '~contains~10~contains~0')])
    ]);
