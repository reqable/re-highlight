// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langErlang = Mode(
    refs: {
      '~contains~0~contains~0~contains~0':
          Mode(scope: 'comment', begin: "%", end: "\$", contains: <Mode>[
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
      '~contains~0~contains~0~contains~1':
          Mode(begin: "fun\\s+[a-z'][a-zA-Z0-9_']*/\\d+"),
      '~contains~0~contains~0~contains~2':
          Mode(beginKeywords: "fun receive if try case", end: "end", keywords: {
        "keyword":
            "after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor",
        "literal": "false true"
      }, contains: <Mode>[
        Mode(ref: '~contains~0~contains~0~contains~0'),
        Mode(ref: '~contains~0~contains~0~contains~1'),
        Mode(
            scope: 'string',
            begin: "'",
            end: "'",
            illegal: "\\n",
            contains: <Mode>[BACKSLASH_ESCAPE],
            className: ''),
        Mode(ref: '~contains~0~contains~0~contains~2'),
        Mode(
            begin:
                "([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)\\(",
            end: "\\)",
            returnBegin: true,
            relevance: 0,
            contains: <Mode>[
              Mode(
                  begin:
                      "([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)",
                  relevance: 0),
              Mode(
                  begin: "\\(",
                  end: "\\)",
                  endsWithParent: true,
                  returnEnd: true,
                  relevance: 0,
                  contains: <Mode>[
                    Mode(ref: '~contains~0~contains~0~contains~0'),
                    Mode(ref: '~contains~0~contains~0~contains~1'),
                    Mode(ref: '~contains~0~contains~0~contains~2'),
                    Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
                    QUOTE_STRING_MODE,
                    Mode(
                        className: 'number',
                        begin:
                            "\\b(\\d+(_\\d+)*#[a-fA-F0-9]+(_[a-fA-F0-9]+)*|\\d+(_\\d+)*(\\.\\d+(_\\d+)*)?([eE][-+]?\\d+)?)",
                        relevance: 0),
                    Mode(
                        begin: "\\{",
                        end: "\\}",
                        relevance: 0,
                        contains: <Mode>[
                          Mode(ref: '~contains~0~contains~0~contains~0'),
                          Mode(ref: '~contains~0~contains~0~contains~1'),
                          Mode(ref: '~contains~0~contains~0~contains~2'),
                          Mode(
                              ref:
                                  '~contains~0~contains~0~contains~2~contains~4'),
                          QUOTE_STRING_MODE,
                          Mode(
                              ref:
                                  '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
                          Mode(
                              ref:
                                  '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
                          Mode(
                              begin: "\\b_([A-Z][A-Za-z0-9_]*)?", relevance: 0),
                          Mode(begin: "[A-Z][a-zA-Z0-9_]*", relevance: 0),
                          Mode(
                              begin: "#[a-zA-Z_]\\w*",
                              relevance: 0,
                              returnBegin: true,
                              contains: <Mode>[
                                Mode(begin: "#[a-zA-Z_]\\w*", relevance: 0),
                                Mode(
                                    begin: "\\{",
                                    end: "\\}",
                                    relevance: 0,
                                    contains: <Mode>[
                                      Mode(
                                          ref:
                                              '~contains~0~contains~0~contains~0'),
                                      Mode(
                                          ref:
                                              '~contains~0~contains~0~contains~1'),
                                      Mode(
                                          ref:
                                              '~contains~0~contains~0~contains~2'),
                                      Mode(
                                          ref:
                                              '~contains~0~contains~0~contains~2~contains~4'),
                                      QUOTE_STRING_MODE,
                                      Mode(
                                          ref:
                                              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
                                      Mode(
                                          ref:
                                              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
                                      Mode(
                                          ref:
                                              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
                                      Mode(
                                          ref:
                                              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
                                      Mode(
                                          ref:
                                              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
                                    ])
                              ])
                        ]),
                    Mode(
                        ref:
                            '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
                    Mode(
                        ref:
                            '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
                    Mode(
                        ref:
                            '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
                  ])
            ]),
        QUOTE_STRING_MODE,
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
      ]),
      '~contains~0~contains~0~contains~2~contains~4': Mode(
          begin:
              "([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)\\(",
          end: "\\)",
          returnBegin: true,
          relevance: 0,
          contains: <Mode>[
            Mode(
                begin:
                    "([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)",
                relevance: 0),
            Mode(
                begin: "\\(",
                end: "\\)",
                endsWithParent: true,
                returnEnd: true,
                relevance: 0,
                contains: <Mode>[
                  Mode(ref: '~contains~0~contains~0~contains~0'),
                  Mode(ref: '~contains~0~contains~0~contains~1'),
                  Mode(ref: '~contains~0~contains~0~contains~2'),
                  Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
                  QUOTE_STRING_MODE,
                  Mode(
                      className: 'number',
                      begin:
                          "\\b(\\d+(_\\d+)*#[a-fA-F0-9]+(_[a-fA-F0-9]+)*|\\d+(_\\d+)*(\\.\\d+(_\\d+)*)?([eE][-+]?\\d+)?)",
                      relevance: 0),
                  Mode(begin: "\\{", end: "\\}", relevance: 0, contains: <Mode>[
                    Mode(ref: '~contains~0~contains~0~contains~0'),
                    Mode(ref: '~contains~0~contains~0~contains~1'),
                    Mode(ref: '~contains~0~contains~0~contains~2'),
                    Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
                    QUOTE_STRING_MODE,
                    Mode(
                        ref:
                            '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
                    Mode(
                        ref:
                            '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
                    Mode(begin: "\\b_([A-Z][A-Za-z0-9_]*)?", relevance: 0),
                    Mode(begin: "[A-Z][a-zA-Z0-9_]*", relevance: 0),
                    Mode(
                        begin: "#[a-zA-Z_]\\w*",
                        relevance: 0,
                        returnBegin: true,
                        contains: <Mode>[
                          Mode(begin: "#[a-zA-Z_]\\w*", relevance: 0),
                          Mode(
                              begin: "\\{",
                              end: "\\}",
                              relevance: 0,
                              contains: <Mode>[
                                Mode(ref: '~contains~0~contains~0~contains~0'),
                                Mode(ref: '~contains~0~contains~0~contains~1'),
                                Mode(ref: '~contains~0~contains~0~contains~2'),
                                Mode(
                                    ref:
                                        '~contains~0~contains~0~contains~2~contains~4'),
                                QUOTE_STRING_MODE,
                                Mode(
                                    ref:
                                        '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
                                Mode(
                                    ref:
                                        '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
                                Mode(
                                    ref:
                                        '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
                                Mode(
                                    ref:
                                        '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
                                Mode(
                                    ref:
                                        '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
                              ])
                        ])
                  ]),
                  Mode(
                      ref:
                          '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
                  Mode(
                      ref:
                          '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
                  Mode(
                      ref:
                          '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
                ])
          ]),
      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5': Mode(
          className: 'number',
          begin:
              "\\b(\\d+(_\\d+)*#[a-fA-F0-9]+(_[a-fA-F0-9]+)*|\\d+(_\\d+)*(\\.\\d+(_\\d+)*)?([eE][-+]?\\d+)?)",
          relevance: 0),
      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6':
          Mode(begin: "\\{", end: "\\}", relevance: 0, contains: <Mode>[
        Mode(ref: '~contains~0~contains~0~contains~0'),
        Mode(ref: '~contains~0~contains~0~contains~1'),
        Mode(ref: '~contains~0~contains~0~contains~2'),
        Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
        QUOTE_STRING_MODE,
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
        Mode(begin: "\\b_([A-Z][A-Za-z0-9_]*)?", relevance: 0),
        Mode(begin: "[A-Z][a-zA-Z0-9_]*", relevance: 0),
        Mode(
            begin: "#[a-zA-Z_]\\w*",
            relevance: 0,
            returnBegin: true,
            contains: <Mode>[
              Mode(begin: "#[a-zA-Z_]\\w*", relevance: 0),
              Mode(begin: "\\{", end: "\\}", relevance: 0, contains: <Mode>[
                Mode(ref: '~contains~0~contains~0~contains~0'),
                Mode(ref: '~contains~0~contains~0~contains~1'),
                Mode(ref: '~contains~0~contains~0~contains~2'),
                Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
                QUOTE_STRING_MODE,
                Mode(
                    ref:
                        '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
                Mode(
                    ref:
                        '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
                Mode(
                    ref:
                        '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
                Mode(
                    ref:
                        '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
                Mode(
                    ref:
                        '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
              ])
            ])
      ]),
      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7':
          Mode(begin: "\\b_([A-Z][A-Za-z0-9_]*)?", relevance: 0),
      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8':
          Mode(begin: "[A-Z][a-zA-Z0-9_]*", relevance: 0),
      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9':
          Mode(
              begin: "#[a-zA-Z_]\\w*",
              relevance: 0,
              returnBegin: true,
              contains: <Mode>[
            Mode(begin: "#[a-zA-Z_]\\w*", relevance: 0),
            Mode(begin: "\\{", end: "\\}", relevance: 0, contains: <Mode>[
              Mode(ref: '~contains~0~contains~0~contains~0'),
              Mode(ref: '~contains~0~contains~0~contains~1'),
              Mode(ref: '~contains~0~contains~0~contains~2'),
              Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
              QUOTE_STRING_MODE,
              Mode(
                  ref:
                      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
              Mode(
                  ref:
                      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
              Mode(
                  ref:
                      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
              Mode(
                  ref:
                      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
              Mode(
                  ref:
                      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
            ])
          ]),
      '~contains~0~contains~0':
          Mode(className: 'params', begin: "\\(", end: "\\)", contains: <Mode>[
        Mode(scope: 'comment', begin: "%", end: "\$", contains: <Mode>[
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
        Mode(begin: "fun\\s+[a-z'][a-zA-Z0-9_']*/\\d+"),
        Mode(beginKeywords: "fun receive if try case", end: "end", keywords: {
          "keyword":
              "after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor",
          "literal": "false true"
        }, contains: <Mode>[
          Mode(ref: '~contains~0~contains~0~contains~0'),
          Mode(ref: '~contains~0~contains~0~contains~1'),
          Mode(
              scope: 'string',
              begin: "'",
              end: "'",
              illegal: "\\n",
              contains: <Mode>[BACKSLASH_ESCAPE],
              className: ''),
          Mode(ref: '~contains~0~contains~0~contains~2'),
          Mode(
              begin:
                  "([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)\\(",
              end: "\\)",
              returnBegin: true,
              relevance: 0,
              contains: <Mode>[
                Mode(
                    begin:
                        "([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)",
                    relevance: 0),
                Mode(
                    begin: "\\(",
                    end: "\\)",
                    endsWithParent: true,
                    returnEnd: true,
                    relevance: 0,
                    contains: <Mode>[
                      Mode(ref: '~contains~0~contains~0~contains~0'),
                      Mode(ref: '~contains~0~contains~0~contains~1'),
                      Mode(ref: '~contains~0~contains~0~contains~2'),
                      Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
                      QUOTE_STRING_MODE,
                      Mode(
                          className: 'number',
                          begin:
                              "\\b(\\d+(_\\d+)*#[a-fA-F0-9]+(_[a-fA-F0-9]+)*|\\d+(_\\d+)*(\\.\\d+(_\\d+)*)?([eE][-+]?\\d+)?)",
                          relevance: 0),
                      Mode(
                          begin: "\\{",
                          end: "\\}",
                          relevance: 0,
                          contains: <Mode>[
                            Mode(ref: '~contains~0~contains~0~contains~0'),
                            Mode(ref: '~contains~0~contains~0~contains~1'),
                            Mode(ref: '~contains~0~contains~0~contains~2'),
                            Mode(
                                ref:
                                    '~contains~0~contains~0~contains~2~contains~4'),
                            QUOTE_STRING_MODE,
                            Mode(
                                ref:
                                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
                            Mode(
                                ref:
                                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
                            Mode(
                                begin: "\\b_([A-Z][A-Za-z0-9_]*)?",
                                relevance: 0),
                            Mode(begin: "[A-Z][a-zA-Z0-9_]*", relevance: 0),
                            Mode(
                                begin: "#[a-zA-Z_]\\w*",
                                relevance: 0,
                                returnBegin: true,
                                contains: <Mode>[
                                  Mode(begin: "#[a-zA-Z_]\\w*", relevance: 0),
                                  Mode(
                                      begin: "\\{",
                                      end: "\\}",
                                      relevance: 0,
                                      contains: <Mode>[
                                        Mode(
                                            ref:
                                                '~contains~0~contains~0~contains~0'),
                                        Mode(
                                            ref:
                                                '~contains~0~contains~0~contains~1'),
                                        Mode(
                                            ref:
                                                '~contains~0~contains~0~contains~2'),
                                        Mode(
                                            ref:
                                                '~contains~0~contains~0~contains~2~contains~4'),
                                        QUOTE_STRING_MODE,
                                        Mode(
                                            ref:
                                                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
                                        Mode(
                                            ref:
                                                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
                                        Mode(
                                            ref:
                                                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
                                        Mode(
                                            ref:
                                                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
                                        Mode(
                                            ref:
                                                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
                                      ])
                                ])
                          ]),
                      Mode(
                          ref:
                              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
                      Mode(
                          ref:
                              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
                      Mode(
                          ref:
                              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
                    ])
              ]),
          QUOTE_STRING_MODE,
          Mode(
              ref:
                  '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
          Mode(
              ref:
                  '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
          Mode(
              ref:
                  '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
          Mode(
              ref:
                  '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
          Mode(
              ref:
                  '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
        ]),
        Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
        QUOTE_STRING_MODE,
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
      ])
    },
    name: "Erlang",
    aliases: ["erl"],
    keywords: {
      "keyword":
          "after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor",
      "literal": "false true"
    },
    illegal: "(</|\\*=|\\+=|-=|/\\*|\\*/|\\(\\*|\\*\\))",
    contains: <Mode>[
      Mode(
          className: 'function',
          begin: "^[a-z'][a-zA-Z0-9_']*\\s*\\(",
          end: "->",
          returnBegin: true,
          illegal: "\\(|#|//|/\\*|\\\\|:|;",
          contains: <Mode>[
            Mode(ref: '~contains~0~contains~0'),
            Mode(scope: 'title', begin: "[a-z'][a-zA-Z0-9_']*", relevance: 0)
          ],
          starts: Mode(end: ";|\\.", keywords: {
            "keyword":
                "after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor",
            "literal": "false true"
          }, contains: <Mode>[
            Mode(ref: '~contains~0~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~0~contains~2'),
            Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
            QUOTE_STRING_MODE,
            Mode(
                ref:
                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
            Mode(
                ref:
                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
            Mode(
                ref:
                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
            Mode(
                ref:
                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
            Mode(
                ref:
                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
          ])),
      Mode(ref: '~contains~0~contains~0~contains~0'),
      Mode(
          begin: "^-",
          end: "\\.",
          relevance: 0,
          excludeEnd: true,
          returnBegin: true,
          keywords: {
            "\$pattern": "-[a-zA-Z]\\w*",
            "keyword":
                "-module|1.5 -record|1.5 -undef|1.5 -export|1.5 -ifdef|1.5 -ifndef|1.5 -author|1.5 -copyright|1.5 -doc|1.5 -vsn|1.5 -import|1.5 -include|1.5 -include_lib|1.5 -compile|1.5 -define|1.5 -else|1.5 -endif|1.5 -file|1.5 -behaviour|1.5 -behavior|1.5 -spec|1.5"
          },
          contains: <Mode>[
            Mode(ref: '~contains~0~contains~0')
          ]),
      Mode(
          ref:
              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
      QUOTE_STRING_MODE,
      Mode(
          ref:
              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9'),
      Mode(
          ref:
              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
      Mode(
          ref:
              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
      Mode(
          ref:
              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
      Mode(begin: "\\.\$")
    ]);
