// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langKotlin = Mode(
    refs: {
      '~contains~6~contains~0~contains~0~variants~0':
          Mode(begin: "\"\"\"", end: "\"\"\"(?=[^\"])", contains: <Mode>[
        Mode(className: 'variable', begin: "\\\$[a-zA-Z_]\\w*"),
        Mode(className: 'subst', begin: "\\\$\\{", end: "\\}", contains: <Mode>[
          C_NUMBER_MODE,
          Mode(className: 'string', variants: <Mode>[
            Mode(ref: '~contains~6~contains~0~contains~0~variants~0'),
            Mode(
                begin: "'",
                end: "'",
                illegal: "\\n",
                contains: <Mode>[BACKSLASH_ESCAPE]),
            Mode(begin: "\"", end: "\"", illegal: "\\n", contains: <Mode>[
              BACKSLASH_ESCAPE,
              Mode(
                  ref:
                      '~contains~6~contains~0~contains~0~variants~0~contains~0'),
              Mode(
                  ref:
                      '~contains~6~contains~0~contains~0~variants~0~contains~1')
            ])
          ])
        ])
      ]),
      '~contains~6~contains~0~contains~0~variants~0~contains~0':
          Mode(className: 'variable', begin: "\\\$[a-zA-Z_]\\w*"),
      '~contains~6~contains~0~contains~0~variants~0~contains~1': Mode(
          className: 'subst',
          begin: "\\\$\\{",
          end: "\\}",
          contains: <Mode>[
            C_NUMBER_MODE,
            Mode(className: 'string', variants: <Mode>[
              Mode(ref: '~contains~6~contains~0~contains~0~variants~0'),
              Mode(
                  begin: "'",
                  end: "'",
                  illegal: "\\n",
                  contains: <Mode>[BACKSLASH_ESCAPE]),
              Mode(begin: "\"", end: "\"", illegal: "\\n", contains: <Mode>[
                BACKSLASH_ESCAPE,
                Mode(
                    ref:
                        '~contains~6~contains~0~contains~0~variants~0~contains~0'),
                Mode(
                    ref:
                        '~contains~6~contains~0~contains~0~variants~0~contains~1')
              ])
            ])
          ]),
      '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~1':
          Mode(
              begin: "'",
              end: "'",
              illegal: "\\n",
              contains: <Mode>[BACKSLASH_ESCAPE]),
      '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~2':
          Mode(begin: "\"", end: "\"", illegal: "\\n", contains: <Mode>[
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~6~contains~0~contains~0~variants~0~contains~0'),
        Mode(ref: '~contains~6~contains~0~contains~0~variants~0~contains~1')
      ]),
      '~contains~7~contains~2~contains~0~contains~0': Mode(variants: <Mode>[
        Mode(className: 'type', begin: "[a-zA-Z_]\\w*"),
        Mode(begin: "\\(", end: "\\)", contains: <Mode>[
          Mode(ref: '~contains~7~contains~2~contains~0~contains~0')
        ])
      ]),
      '~contains~2':
          Mode(scope: 'comment', begin: "/\\*", end: "\\*/", contains: <Mode>[
        C_BLOCK_COMMENT_MODE,
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
      '~contains~5': Mode(
          className: 'meta',
          begin:
              "@(?:file|property|field|get|set|receiver|param|setparam|delegate)\\s*:(?:\\s*[a-zA-Z_]\\w*)?"),
      '~contains~6':
          Mode(className: 'meta', begin: "@[a-zA-Z_]\\w*", contains: <Mode>[
        Mode(begin: "\\(", end: "\\)", contains: <Mode>[
          Mode(className: 'string', variants: <Mode>[
            Mode(begin: "\"\"\"", end: "\"\"\"(?=[^\"])", contains: <Mode>[
              Mode(className: 'variable', begin: "\\\$[a-zA-Z_]\\w*"),
              Mode(
                  className: 'subst',
                  begin: "\\\$\\{",
                  end: "\\}",
                  contains: <Mode>[
                    C_NUMBER_MODE,
                    Mode(className: 'string', variants: <Mode>[
                      Mode(ref: '~contains~6~contains~0~contains~0~variants~0'),
                      Mode(
                          begin: "'",
                          end: "'",
                          illegal: "\\n",
                          contains: <Mode>[BACKSLASH_ESCAPE]),
                      Mode(
                          begin: "\"",
                          end: "\"",
                          illegal: "\\n",
                          contains: <Mode>[
                            BACKSLASH_ESCAPE,
                            Mode(
                                ref:
                                    '~contains~6~contains~0~contains~0~variants~0~contains~0'),
                            Mode(
                                ref:
                                    '~contains~6~contains~0~contains~0~variants~0~contains~1')
                          ])
                    ])
                  ])
            ]),
            Mode(
                ref:
                    '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~1'),
            Mode(
                ref:
                    '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~2')
          ]),
          Mode(self: true)
        ])
      ]),
      '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1':
          Mode(className: 'string', variants: <Mode>[
        Mode(ref: '~contains~6~contains~0~contains~0~variants~0'),
        Mode(
            begin: "'",
            end: "'",
            illegal: "\\n",
            contains: <Mode>[BACKSLASH_ESCAPE]),
        Mode(begin: "\"", end: "\"", illegal: "\\n", contains: <Mode>[
          BACKSLASH_ESCAPE,
          Mode(ref: '~contains~6~contains~0~contains~0~variants~0~contains~0'),
          Mode(ref: '~contains~6~contains~0~contains~0~variants~0~contains~1')
        ])
      ])
    },
    name: "Kotlin",
    aliases: ["kt", "kts"],
    keywords: {
      "keyword":
          "abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual",
      "built_in":
          "Byte Short Char Int Long Boolean Float Double Void Unit Nothing",
      "literal": "true false null"
    },
    contains: <Mode>[
      Mode(
          scope: 'comment',
          begin: "/\\*\\*",
          end: "\\*/",
          contains: <Mode>[
            Mode(className: 'doctag', begin: "@[A-Za-z]+"),
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
      C_LINE_COMMENT_MODE,
      Mode(ref: '~contains~2'),
      Mode(
          className: 'keyword',
          begin: "\\b(break|continue|return|this)\\b",
          starts: Mode(
              contains: <Mode>[Mode(className: 'symbol', begin: "@\\w+")])),
      Mode(className: 'symbol', begin: "[a-zA-Z_]\\w*@"),
      Mode(ref: '~contains~5'),
      Mode(ref: '~contains~6'),
      Mode(
          className: 'function',
          beginKeywords: "fun",
          end: "[(]|\$",
          returnBegin: true,
          excludeEnd: true,
          keywords: {
            "keyword":
                "abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual",
            "built_in":
                "Byte Short Char Int Long Boolean Float Double Void Unit Nothing",
            "literal": "true false null"
          },
          relevance: 5,
          contains: <Mode>[
            Mode(
                begin: "[a-zA-Z_]\\w*\\s*\\(",
                returnBegin: true,
                relevance: 0,
                contains: <Mode>[UNDERSCORE_TITLE_MODE]),
            Mode(
                className: 'type',
                begin: "<",
                end: ">",
                keywords: "reified",
                relevance: 0),
            Mode(
                className: 'params',
                begin: "\\(",
                end: "\\)",
                endsParent: true,
                keywords: {
                  "keyword":
                      "abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual",
                  "built_in":
                      "Byte Short Char Int Long Boolean Float Double Void Unit Nothing",
                  "literal": "true false null"
                },
                relevance: 0,
                contains: <Mode>[
                  Mode(
                      begin: ":",
                      end: "[=,\\/]",
                      endsWithParent: true,
                      contains: <Mode>[
                        Mode(
                            ref:
                                '~contains~7~contains~2~contains~0~contains~0'),
                        C_LINE_COMMENT_MODE,
                        Mode(ref: '~contains~2')
                      ],
                      relevance: 0),
                  C_LINE_COMMENT_MODE,
                  Mode(ref: '~contains~2'),
                  Mode(ref: '~contains~5'),
                  Mode(ref: '~contains~6'),
                  Mode(
                      ref:
                          '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1'),
                  C_NUMBER_MODE
                ]),
            Mode(ref: '~contains~2')
          ]),
      Mode(
          begin: ["class|interface|trait", "\\s+", "[a-zA-Z_]\\w*"],
          beginScope: <int, String>{
            3: 'title.class',
          },
          keywords: "class interface trait",
          end: "[:\\{(]|\$",
          excludeEnd: true,
          illegal: "extends implements",
          contains: <Mode>[
            Mode(
                beginKeywords: "public protected internal private constructor"),
            UNDERSCORE_TITLE_MODE,
            Mode(
                className: 'type',
                begin: "<",
                end: ">",
                excludeBegin: true,
                excludeEnd: true,
                relevance: 0),
            Mode(
                className: 'type',
                begin: "[,:]\\s*",
                end: "[<\\(,){\\s]|\$",
                excludeBegin: true,
                returnEnd: true),
            Mode(ref: '~contains~5'),
            Mode(ref: '~contains~6')
          ]),
      Mode(
          ref:
              '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1'),
      Mode(
          className: 'meta',
          begin: "^#!/usr/bin/env",
          end: "\$",
          illegal: "\n"),
      Mode(
          className: 'number',
          variants: <Mode>[
            Mode(
                begin:
                    "(\\b([0-9](_*[0-9])*)((\\.([0-9](_*[0-9])*))|\\.)?|(\\.([0-9](_*[0-9])*)))[eE][+-]?([0-9](_*[0-9])*)[fFdD]?\\b"),
            Mode(
                begin:
                    "\\b([0-9](_*[0-9])*)((\\.([0-9](_*[0-9])*))[fFdD]?\\b|\\.([fFdD]\\b)?)"),
            Mode(begin: "(\\.([0-9](_*[0-9])*))[fFdD]?\\b"),
            Mode(begin: "\\b([0-9](_*[0-9])*)[fFdD]\\b"),
            Mode(
                begin:
                    "\\b0[xX](([0-9a-fA-F](_*[0-9a-fA-F])*)\\.?|([0-9a-fA-F](_*[0-9a-fA-F])*)?\\.([0-9a-fA-F](_*[0-9a-fA-F])*))[pP][+-]?([0-9](_*[0-9])*)[fFdD]?\\b"),
            Mode(begin: "\\b(0|[1-9](_*[0-9])*)[lL]?\\b"),
            Mode(begin: "\\b0[xX]([0-9a-fA-F](_*[0-9a-fA-F])*)[lL]?\\b"),
            Mode(begin: "\\b0(_*[0-7])*[lL]?\\b"),
            Mode(begin: "\\b0[bB][01](_*[01])*[lL]?\\b")
          ],
          relevance: 0)
    ]);
