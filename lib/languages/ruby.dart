// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';
import 'lib/common.dart';

final langRuby = Mode(
    refs: {
      '~contains~1~starts~contains~0':
          Mode(className: 'string', contains: <Mode>[
        BACKSLASH_ESCAPE,
        Mode(className: 'subst', begin: "#\\{", end: "\\}", keywords: {
          "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
          "variable.language": ["self", "super"],
          "keyword": [
            "alias",
            "and",
            "begin",
            "BEGIN",
            "break",
            "case",
            "class",
            "defined",
            "do",
            "else",
            "elsif",
            "end",
            "END",
            "ensure",
            "for",
            "if",
            "in",
            "module",
            "next",
            "not",
            "or",
            "redo",
            "require",
            "rescue",
            "retry",
            "return",
            "then",
            "undef",
            "unless",
            "until",
            "when",
            "while",
            "yield",
            "include",
            "extend",
            "prepend",
            "public",
            "private",
            "protected",
            "raise",
            "throw"
          ],
          "built_in": [
            "proc",
            "lambda",
            "attr_accessor",
            "attr_reader",
            "attr_writer",
            "define_method",
            "private_constant",
            "module_function"
          ],
          "literal": ["true", "false", "nil"]
        }, contains: <Mode>[
          Mode(ref: '~contains~1~starts~contains~0'),
          Mode(variants: <Mode>[
            Mode(match: [
              "class\\s+",
              "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*",
              "\\s+<\\s+",
              "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
            ]),
            Mode(match: [
              "\\b(class|module)\\s+",
              "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
            ])
          ], scope: <int, String>{
            2: 'title.class',
            4: 'title.class.inherited',
          }, keywords: {
            "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
            "variable.language": ["self", "super"],
            "keyword": [
              "alias",
              "and",
              "begin",
              "BEGIN",
              "break",
              "case",
              "class",
              "defined",
              "do",
              "else",
              "elsif",
              "end",
              "END",
              "ensure",
              "for",
              "if",
              "in",
              "module",
              "next",
              "not",
              "or",
              "redo",
              "require",
              "rescue",
              "retry",
              "return",
              "then",
              "undef",
              "unless",
              "until",
              "when",
              "while",
              "yield",
              "include",
              "extend",
              "prepend",
              "public",
              "private",
              "protected",
              "raise",
              "throw"
            ],
            "built_in": [
              "proc",
              "lambda",
              "attr_accessor",
              "attr_reader",
              "attr_writer",
              "define_method",
              "private_constant",
              "module_function"
            ],
            "literal": ["true", "false", "nil"]
          }),
          Mode(match: [
            "(include|extend)\\s+",
            "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
          ], scope: <int, String>{
            2: 'title.class',
          }, keywords: {
            "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
            "variable.language": ["self", "super"],
            "keyword": [
              "alias",
              "and",
              "begin",
              "BEGIN",
              "break",
              "case",
              "class",
              "defined",
              "do",
              "else",
              "elsif",
              "end",
              "END",
              "ensure",
              "for",
              "if",
              "in",
              "module",
              "next",
              "not",
              "or",
              "redo",
              "require",
              "rescue",
              "retry",
              "return",
              "then",
              "undef",
              "unless",
              "until",
              "when",
              "while",
              "yield",
              "include",
              "extend",
              "prepend",
              "public",
              "private",
              "protected",
              "raise",
              "throw"
            ],
            "built_in": [
              "proc",
              "lambda",
              "attr_accessor",
              "attr_reader",
              "attr_writer",
              "define_method",
              "private_constant",
              "module_function"
            ],
            "literal": ["true", "false", "nil"]
          }),
          Mode(relevance: 0, match: [
            "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*",
            "\\.new[. (]"
          ], scope: <int, String>{
            1: 'title.class',
          }),
          Mode(
              relevance: 0,
              match: "\\b[A-Z][A-Z_0-9]+\\b",
              className: 'variable.constant'),
          Mode(
              relevance: 0,
              match: "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)",
              scope: 'title.class'),
          Mode(match: [
            "def",
            "\\s+",
            "([a-zA-Z_]\\w*[!?=]?|[-+~]@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?)"
          ], scope: <int, String>{
            1: 'keyword',
            3: 'title.function',
          }, contains: <Mode>[
            Mode(variants: <Mode>[
              Mode(match: "\\(\\)"),
              Mode(
                  className: 'params',
                  begin: "\\(",
                  end: "(?=\\))",
                  excludeBegin: true,
                  endsParent: true,
                  keywords: {
                    "variable.constant": [
                      "__FILE__",
                      "__LINE__",
                      "__ENCODING__"
                    ],
                    "variable.language": ["self", "super"],
                    "keyword": [
                      "alias",
                      "and",
                      "begin",
                      "BEGIN",
                      "break",
                      "case",
                      "class",
                      "defined",
                      "do",
                      "else",
                      "elsif",
                      "end",
                      "END",
                      "ensure",
                      "for",
                      "if",
                      "in",
                      "module",
                      "next",
                      "not",
                      "or",
                      "redo",
                      "require",
                      "rescue",
                      "retry",
                      "return",
                      "then",
                      "undef",
                      "unless",
                      "until",
                      "when",
                      "while",
                      "yield",
                      "include",
                      "extend",
                      "prepend",
                      "public",
                      "private",
                      "protected",
                      "raise",
                      "throw"
                    ],
                    "built_in": [
                      "proc",
                      "lambda",
                      "attr_accessor",
                      "attr_reader",
                      "attr_writer",
                      "define_method",
                      "private_constant",
                      "module_function"
                    ],
                    "literal": ["true", "false", "nil"]
                  })
            ], contains: <Mode>[
              Mode(ref: '~contains~1~starts~contains~0'),
              Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~1'),
              Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~2'),
              Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~3'),
              Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~4'),
              Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~5'),
              Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~6'),
              Mode(begin: "[a-zA-Z]\\w*::"),
              Mode(
                  className: 'symbol',
                  begin: "[a-zA-Z_]\\w*(!|\\?)?:",
                  relevance: 0),
              Mode(
                  className: 'symbol',
                  begin: ":(?!\\s)",
                  contains: <Mode>[
                    Mode(ref: '~contains~1~starts~contains~0'),
                    Mode(
                        begin:
                            "([a-zA-Z_]\\w*[!?=]?|[-+~]@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?)")
                  ],
                  relevance: 0),
              Mode(className: 'number', relevance: 0, variants: <Mode>[
                Mode(
                    begin:
                        "\\b([1-9](_?[0-9])*|0)(\\.([0-9](_?[0-9])*))?([eE][+-]?([0-9](_?[0-9])*)|r)?i?\\b"),
                Mode(begin: "\\b0[dD][0-9](_?[0-9])*r?i?\\b"),
                Mode(begin: "\\b0[bB][0-1](_?[0-1])*r?i?\\b"),
                Mode(begin: "\\b0[oO][0-7](_?[0-7])*r?i?\\b"),
                Mode(begin: "\\b0[xX][0-9a-fA-F](_?[0-9a-fA-F])*r?i?\\b"),
                Mode(begin: "\\b0(_?[0-7])+r?i?\\b")
              ]),
              Mode(
                  className: 'variable',
                  begin:
                      "(\\\$\\W)|((\\\$|@@?)(\\w+))(?=[^@\$?])(?![A-Za-z])(?![@\$?'])"),
              Mode(
                  className: 'params',
                  begin: "\\|",
                  end: "\\|",
                  excludeBegin: true,
                  excludeEnd: true,
                  relevance: 0,
                  keywords: {
                    "variable.constant": [
                      "__FILE__",
                      "__LINE__",
                      "__ENCODING__"
                    ],
                    "variable.language": ["self", "super"],
                    "keyword": [
                      "alias",
                      "and",
                      "begin",
                      "BEGIN",
                      "break",
                      "case",
                      "class",
                      "defined",
                      "do",
                      "else",
                      "elsif",
                      "end",
                      "END",
                      "ensure",
                      "for",
                      "if",
                      "in",
                      "module",
                      "next",
                      "not",
                      "or",
                      "redo",
                      "require",
                      "rescue",
                      "retry",
                      "return",
                      "then",
                      "undef",
                      "unless",
                      "until",
                      "when",
                      "while",
                      "yield",
                      "include",
                      "extend",
                      "prepend",
                      "public",
                      "private",
                      "protected",
                      "raise",
                      "throw"
                    ],
                    "built_in": [
                      "proc",
                      "lambda",
                      "attr_accessor",
                      "attr_reader",
                      "attr_writer",
                      "define_method",
                      "private_constant",
                      "module_function"
                    ],
                    "literal": ["true", "false", "nil"]
                  }),
              Mode(
                  begin:
                      "(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||~|unless)\\s*",
                  keywords: "unless",
                  contains: <Mode>[
                    Mode(
                        className: 'regexp',
                        contains: <Mode>[
                          BACKSLASH_ESCAPE,
                          Mode(ref: '~contains~1~starts~contains~0~contains~1')
                        ],
                        illegal: "\\n",
                        variants: <Mode>[
                          Mode(begin: "/", end: "/[a-z]*"),
                          Mode(begin: "%r\\{", end: "\\}[a-z]*"),
                          Mode(begin: "%r\\(", end: "\\)[a-z]*"),
                          Mode(begin: "%r!", end: "![a-z]*"),
                          Mode(begin: "%r\\[", end: "\\][a-z]*")
                        ]),
                    Mode(begin: "#<", end: ">"),
                    Mode(
                        scope: 'comment',
                        begin: "#",
                        end: "\$",
                        contains: <Mode>[
                          Mode(className: 'doctag', begin: "@[A-Za-z]+"),
                          Mode(
                              scope: 'doctag',
                              begin:
                                  "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                              end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                              excludeBegin: true,
                              relevance: 0),
                          Mode(
                              begin:
                                  "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
                        ]),
                    Mode(
                        scope: 'comment',
                        begin: "^=begin",
                        end: "^=end",
                        contains: <Mode>[
                          Mode(
                              ref:
                                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2~contains~0'),
                          Mode(
                              scope: 'doctag',
                              begin:
                                  "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                              end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                              excludeBegin: true,
                              relevance: 0),
                          Mode(
                              begin:
                                  "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
                        ],
                        relevance: 10),
                    Mode(
                        scope: 'comment',
                        begin: "^__END__",
                        end: "\\b\\B",
                        contains: <Mode>[
                          Mode(
                              scope: 'doctag',
                              begin:
                                  "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                              end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                              excludeBegin: true,
                              relevance: 0),
                          Mode(
                              begin:
                                  "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
                        ])
                  ],
                  relevance: 0),
              Mode(
                  ref:
                      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
              Mode(
                  ref:
                      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
              Mode(
                  ref:
                      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
              Mode(
                  ref:
                      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4')
            ])
          ]),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4')
        ])
      ], variants: <Mode>[
        Mode(begin: "'", end: "'"),
        Mode(begin: "\"", end: "\""),
        Mode(begin: "`", end: "`"),
        Mode(begin: "%[qQwWx]?\\(", end: "\\)"),
        Mode(begin: "%[qQwWx]?\\[", end: "\\]"),
        Mode(begin: "%[qQwWx]?\\{", end: "\\}"),
        Mode(begin: "%[qQwWx]?<", end: ">"),
        Mode(begin: "%[qQwWx]?\\/", end: "\\/"),
        Mode(begin: "%[qQwWx]?%", end: "%"),
        Mode(begin: "%[qQwWx]?-", end: "-"),
        Mode(begin: "%[qQwWx]?\\|", end: "\\|"),
        Mode(begin: "\\B\\?(\\\\\\d{1,3})"),
        Mode(begin: "\\B\\?(\\\\x[A-Fa-f0-9]{1,2})"),
        Mode(begin: "\\B\\?(\\\\u\\{?[A-Fa-f0-9]{1,6}\\}?)"),
        Mode(
            begin:
                "\\B\\?(\\\\M-\\\\C-|\\\\M-\\\\c|\\\\c\\\\M-|\\\\M-|\\\\C-\\\\M-)[\\x20-\\x7e]"),
        Mode(begin: "\\B\\?\\\\(c|C-)[\\x20-\\~]"),
        Mode(begin: "\\B\\?\\\\?\\S"),
        Mode(
            begin:
                "<<[-\x7e]?'?(?=(\\w+)(?=\\W)[^\\n]*\\n(?:[^\\n]*\\n)*?\\s*\\1\\b)",
            contains: <Mode>[
              Mode(
                  begin: "(\\w+)",
                  end: "(\\w+)",
                  contains: <Mode>[
                    BACKSLASH_ESCAPE,
                    Mode(ref: '~contains~1~starts~contains~0~contains~1')
                  ],
                  onBegin: callbackOnBegin1,
                  onEnd: callbackOnEnd1)
            ])
      ]),
      '~contains~1~starts~contains~0~contains~1~contains~1':
          Mode(variants: <Mode>[
        Mode(match: [
          "class\\s+",
          "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*",
          "\\s+<\\s+",
          "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
        ]),
        Mode(match: [
          "\\b(class|module)\\s+",
          "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
        ])
      ], scope: <int, String>{
        2: 'title.class',
        4: 'title.class.inherited',
      }, keywords: {
        "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
        "variable.language": ["self", "super"],
        "keyword": [
          "alias",
          "and",
          "begin",
          "BEGIN",
          "break",
          "case",
          "class",
          "defined",
          "do",
          "else",
          "elsif",
          "end",
          "END",
          "ensure",
          "for",
          "if",
          "in",
          "module",
          "next",
          "not",
          "or",
          "redo",
          "require",
          "rescue",
          "retry",
          "return",
          "then",
          "undef",
          "unless",
          "until",
          "when",
          "while",
          "yield",
          "include",
          "extend",
          "prepend",
          "public",
          "private",
          "protected",
          "raise",
          "throw"
        ],
        "built_in": [
          "proc",
          "lambda",
          "attr_accessor",
          "attr_reader",
          "attr_writer",
          "define_method",
          "private_constant",
          "module_function"
        ],
        "literal": ["true", "false", "nil"]
      }),
      '~contains~1~starts~contains~0~contains~1~contains~2': Mode(match: [
        "(include|extend)\\s+",
        "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
      ], scope: <int, String>{
        2: 'title.class',
      }, keywords: {
        "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
        "variable.language": ["self", "super"],
        "keyword": [
          "alias",
          "and",
          "begin",
          "BEGIN",
          "break",
          "case",
          "class",
          "defined",
          "do",
          "else",
          "elsif",
          "end",
          "END",
          "ensure",
          "for",
          "if",
          "in",
          "module",
          "next",
          "not",
          "or",
          "redo",
          "require",
          "rescue",
          "retry",
          "return",
          "then",
          "undef",
          "unless",
          "until",
          "when",
          "while",
          "yield",
          "include",
          "extend",
          "prepend",
          "public",
          "private",
          "protected",
          "raise",
          "throw"
        ],
        "built_in": [
          "proc",
          "lambda",
          "attr_accessor",
          "attr_reader",
          "attr_writer",
          "define_method",
          "private_constant",
          "module_function"
        ],
        "literal": ["true", "false", "nil"]
      }),
      '~contains~1~starts~contains~0~contains~1~contains~3':
          Mode(relevance: 0, match: [
        "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*",
        "\\.new[. (]"
      ], scope: <int, String>{
        1: 'title.class',
      }),
      '~contains~1~starts~contains~0~contains~1~contains~4': Mode(
          relevance: 0,
          match: "\\b[A-Z][A-Z_0-9]+\\b",
          className: 'variable.constant'),
      '~contains~1~starts~contains~0~contains~1~contains~5': Mode(
          relevance: 0,
          match: "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)",
          scope: 'title.class'),
      '~contains~1~starts~contains~0~contains~1~contains~6': Mode(match: [
        "def",
        "\\s+",
        "([a-zA-Z_]\\w*[!?=]?|[-+\x7e]@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?)"
      ], scope: <int, String>{
        1: 'keyword',
        3: 'title.function',
      }, contains: <Mode>[
        Mode(variants: <Mode>[
          Mode(match: "\\(\\)"),
          Mode(
              className: 'params',
              begin: "\\(",
              end: "(?=\\))",
              excludeBegin: true,
              endsParent: true,
              keywords: {
                "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
                "variable.language": ["self", "super"],
                "keyword": [
                  "alias",
                  "and",
                  "begin",
                  "BEGIN",
                  "break",
                  "case",
                  "class",
                  "defined",
                  "do",
                  "else",
                  "elsif",
                  "end",
                  "END",
                  "ensure",
                  "for",
                  "if",
                  "in",
                  "module",
                  "next",
                  "not",
                  "or",
                  "redo",
                  "require",
                  "rescue",
                  "retry",
                  "return",
                  "then",
                  "undef",
                  "unless",
                  "until",
                  "when",
                  "while",
                  "yield",
                  "include",
                  "extend",
                  "prepend",
                  "public",
                  "private",
                  "protected",
                  "raise",
                  "throw"
                ],
                "built_in": [
                  "proc",
                  "lambda",
                  "attr_accessor",
                  "attr_reader",
                  "attr_writer",
                  "define_method",
                  "private_constant",
                  "module_function"
                ],
                "literal": ["true", "false", "nil"]
              })
        ], contains: <Mode>[
          Mode(ref: '~contains~1~starts~contains~0'),
          Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~1'),
          Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~2'),
          Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~3'),
          Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~4'),
          Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~5'),
          Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~6'),
          Mode(begin: "[a-zA-Z]\\w*::"),
          Mode(
              className: 'symbol',
              begin: "[a-zA-Z_]\\w*(!|\\?)?:",
              relevance: 0),
          Mode(
              className: 'symbol',
              begin: ":(?!\\s)",
              contains: <Mode>[
                Mode(ref: '~contains~1~starts~contains~0'),
                Mode(
                    begin:
                        "([a-zA-Z_]\\w*[!?=]?|[-+~]@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?)")
              ],
              relevance: 0),
          Mode(className: 'number', relevance: 0, variants: <Mode>[
            Mode(
                begin:
                    "\\b([1-9](_?[0-9])*|0)(\\.([0-9](_?[0-9])*))?([eE][+-]?([0-9](_?[0-9])*)|r)?i?\\b"),
            Mode(begin: "\\b0[dD][0-9](_?[0-9])*r?i?\\b"),
            Mode(begin: "\\b0[bB][0-1](_?[0-1])*r?i?\\b"),
            Mode(begin: "\\b0[oO][0-7](_?[0-7])*r?i?\\b"),
            Mode(begin: "\\b0[xX][0-9a-fA-F](_?[0-9a-fA-F])*r?i?\\b"),
            Mode(begin: "\\b0(_?[0-7])+r?i?\\b")
          ]),
          Mode(
              className: 'variable',
              begin:
                  "(\\\$\\W)|((\\\$|@@?)(\\w+))(?=[^@\$?])(?![A-Za-z])(?![@\$?'])"),
          Mode(
              className: 'params',
              begin: "\\|",
              end: "\\|",
              excludeBegin: true,
              excludeEnd: true,
              relevance: 0,
              keywords: {
                "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
                "variable.language": ["self", "super"],
                "keyword": [
                  "alias",
                  "and",
                  "begin",
                  "BEGIN",
                  "break",
                  "case",
                  "class",
                  "defined",
                  "do",
                  "else",
                  "elsif",
                  "end",
                  "END",
                  "ensure",
                  "for",
                  "if",
                  "in",
                  "module",
                  "next",
                  "not",
                  "or",
                  "redo",
                  "require",
                  "rescue",
                  "retry",
                  "return",
                  "then",
                  "undef",
                  "unless",
                  "until",
                  "when",
                  "while",
                  "yield",
                  "include",
                  "extend",
                  "prepend",
                  "public",
                  "private",
                  "protected",
                  "raise",
                  "throw"
                ],
                "built_in": [
                  "proc",
                  "lambda",
                  "attr_accessor",
                  "attr_reader",
                  "attr_writer",
                  "define_method",
                  "private_constant",
                  "module_function"
                ],
                "literal": ["true", "false", "nil"]
              }),
          Mode(
              begin:
                  "(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||~|unless)\\s*",
              keywords: "unless",
              contains: <Mode>[
                Mode(
                    className: 'regexp',
                    contains: <Mode>[
                      BACKSLASH_ESCAPE,
                      Mode(ref: '~contains~1~starts~contains~0~contains~1')
                    ],
                    illegal: "\\n",
                    variants: <Mode>[
                      Mode(begin: "/", end: "/[a-z]*"),
                      Mode(begin: "%r\\{", end: "\\}[a-z]*"),
                      Mode(begin: "%r\\(", end: "\\)[a-z]*"),
                      Mode(begin: "%r!", end: "![a-z]*"),
                      Mode(begin: "%r\\[", end: "\\][a-z]*")
                    ]),
                Mode(begin: "#<", end: ">"),
                Mode(scope: 'comment', begin: "#", end: "\$", contains: <Mode>[
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
                ]),
                Mode(
                    scope: 'comment',
                    begin: "^=begin",
                    end: "^=end",
                    contains: <Mode>[
                      Mode(
                          ref:
                              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2~contains~0'),
                      Mode(
                          scope: 'doctag',
                          begin:
                              "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                          end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                          excludeBegin: true,
                          relevance: 0),
                      Mode(
                          begin:
                              "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
                    ],
                    relevance: 10),
                Mode(
                    scope: 'comment',
                    begin: "^__END__",
                    end: "\\b\\B",
                    contains: <Mode>[
                      Mode(
                          scope: 'doctag',
                          begin:
                              "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                          end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                          excludeBegin: true,
                          relevance: 0),
                      Mode(
                          begin:
                              "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
                    ])
              ],
              relevance: 0),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
          Mode(
              ref:
                  '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4')
        ])
      ]),
      '~contains~1~starts~contains~0~contains~1':
          Mode(className: 'subst', begin: "#\\{", end: "\\}", keywords: {
        "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
        "variable.language": ["self", "super"],
        "keyword": [
          "alias",
          "and",
          "begin",
          "BEGIN",
          "break",
          "case",
          "class",
          "defined",
          "do",
          "else",
          "elsif",
          "end",
          "END",
          "ensure",
          "for",
          "if",
          "in",
          "module",
          "next",
          "not",
          "or",
          "redo",
          "require",
          "rescue",
          "retry",
          "return",
          "then",
          "undef",
          "unless",
          "until",
          "when",
          "while",
          "yield",
          "include",
          "extend",
          "prepend",
          "public",
          "private",
          "protected",
          "raise",
          "throw"
        ],
        "built_in": [
          "proc",
          "lambda",
          "attr_accessor",
          "attr_reader",
          "attr_writer",
          "define_method",
          "private_constant",
          "module_function"
        ],
        "literal": ["true", "false", "nil"]
      }, contains: <Mode>[
        Mode(ref: '~contains~1~starts~contains~0'),
        Mode(variants: <Mode>[
          Mode(match: [
            "class\\s+",
            "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*",
            "\\s+<\\s+",
            "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
          ]),
          Mode(match: [
            "\\b(class|module)\\s+",
            "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
          ])
        ], scope: <int, String>{
          2: 'title.class',
          4: 'title.class.inherited',
        }, keywords: {
          "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
          "variable.language": ["self", "super"],
          "keyword": [
            "alias",
            "and",
            "begin",
            "BEGIN",
            "break",
            "case",
            "class",
            "defined",
            "do",
            "else",
            "elsif",
            "end",
            "END",
            "ensure",
            "for",
            "if",
            "in",
            "module",
            "next",
            "not",
            "or",
            "redo",
            "require",
            "rescue",
            "retry",
            "return",
            "then",
            "undef",
            "unless",
            "until",
            "when",
            "while",
            "yield",
            "include",
            "extend",
            "prepend",
            "public",
            "private",
            "protected",
            "raise",
            "throw"
          ],
          "built_in": [
            "proc",
            "lambda",
            "attr_accessor",
            "attr_reader",
            "attr_writer",
            "define_method",
            "private_constant",
            "module_function"
          ],
          "literal": ["true", "false", "nil"]
        }),
        Mode(match: [
          "(include|extend)\\s+",
          "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*"
        ], scope: <int, String>{
          2: 'title.class',
        }, keywords: {
          "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
          "variable.language": ["self", "super"],
          "keyword": [
            "alias",
            "and",
            "begin",
            "BEGIN",
            "break",
            "case",
            "class",
            "defined",
            "do",
            "else",
            "elsif",
            "end",
            "END",
            "ensure",
            "for",
            "if",
            "in",
            "module",
            "next",
            "not",
            "or",
            "redo",
            "require",
            "rescue",
            "retry",
            "return",
            "then",
            "undef",
            "unless",
            "until",
            "when",
            "while",
            "yield",
            "include",
            "extend",
            "prepend",
            "public",
            "private",
            "protected",
            "raise",
            "throw"
          ],
          "built_in": [
            "proc",
            "lambda",
            "attr_accessor",
            "attr_reader",
            "attr_writer",
            "define_method",
            "private_constant",
            "module_function"
          ],
          "literal": ["true", "false", "nil"]
        }),
        Mode(relevance: 0, match: [
          "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\\w+)*",
          "\\.new[. (]"
        ], scope: <int, String>{
          1: 'title.class',
        }),
        Mode(
            relevance: 0,
            match: "\\b[A-Z][A-Z_0-9]+\\b",
            className: 'variable.constant'),
        Mode(
            relevance: 0,
            match: "(?:\\b([A-Z]+[a-z0-9]+)+|\\b([A-Z]+[a-z0-9]+)+[A-Z]+)",
            scope: 'title.class'),
        Mode(match: [
          "def",
          "\\s+",
          "([a-zA-Z_]\\w*[!?=]?|[-+~]@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?)"
        ], scope: <int, String>{
          1: 'keyword',
          3: 'title.function',
        }, contains: <Mode>[
          Mode(variants: <Mode>[
            Mode(match: "\\(\\)"),
            Mode(
                className: 'params',
                begin: "\\(",
                end: "(?=\\))",
                excludeBegin: true,
                endsParent: true,
                keywords: {
                  "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
                  "variable.language": ["self", "super"],
                  "keyword": [
                    "alias",
                    "and",
                    "begin",
                    "BEGIN",
                    "break",
                    "case",
                    "class",
                    "defined",
                    "do",
                    "else",
                    "elsif",
                    "end",
                    "END",
                    "ensure",
                    "for",
                    "if",
                    "in",
                    "module",
                    "next",
                    "not",
                    "or",
                    "redo",
                    "require",
                    "rescue",
                    "retry",
                    "return",
                    "then",
                    "undef",
                    "unless",
                    "until",
                    "when",
                    "while",
                    "yield",
                    "include",
                    "extend",
                    "prepend",
                    "public",
                    "private",
                    "protected",
                    "raise",
                    "throw"
                  ],
                  "built_in": [
                    "proc",
                    "lambda",
                    "attr_accessor",
                    "attr_reader",
                    "attr_writer",
                    "define_method",
                    "private_constant",
                    "module_function"
                  ],
                  "literal": ["true", "false", "nil"]
                })
          ], contains: <Mode>[
            Mode(ref: '~contains~1~starts~contains~0'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~1'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~2'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~3'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~4'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~5'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~6'),
            Mode(begin: "[a-zA-Z]\\w*::"),
            Mode(
                className: 'symbol',
                begin: "[a-zA-Z_]\\w*(!|\\?)?:",
                relevance: 0),
            Mode(
                className: 'symbol',
                begin: ":(?!\\s)",
                contains: <Mode>[
                  Mode(ref: '~contains~1~starts~contains~0'),
                  Mode(
                      begin:
                          "([a-zA-Z_]\\w*[!?=]?|[-+~]@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?)")
                ],
                relevance: 0),
            Mode(className: 'number', relevance: 0, variants: <Mode>[
              Mode(
                  begin:
                      "\\b([1-9](_?[0-9])*|0)(\\.([0-9](_?[0-9])*))?([eE][+-]?([0-9](_?[0-9])*)|r)?i?\\b"),
              Mode(begin: "\\b0[dD][0-9](_?[0-9])*r?i?\\b"),
              Mode(begin: "\\b0[bB][0-1](_?[0-1])*r?i?\\b"),
              Mode(begin: "\\b0[oO][0-7](_?[0-7])*r?i?\\b"),
              Mode(begin: "\\b0[xX][0-9a-fA-F](_?[0-9a-fA-F])*r?i?\\b"),
              Mode(begin: "\\b0(_?[0-7])+r?i?\\b")
            ]),
            Mode(
                className: 'variable',
                begin:
                    "(\\\$\\W)|((\\\$|@@?)(\\w+))(?=[^@\$?])(?![A-Za-z])(?![@\$?'])"),
            Mode(
                className: 'params',
                begin: "\\|",
                end: "\\|",
                excludeBegin: true,
                excludeEnd: true,
                relevance: 0,
                keywords: {
                  "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
                  "variable.language": ["self", "super"],
                  "keyword": [
                    "alias",
                    "and",
                    "begin",
                    "BEGIN",
                    "break",
                    "case",
                    "class",
                    "defined",
                    "do",
                    "else",
                    "elsif",
                    "end",
                    "END",
                    "ensure",
                    "for",
                    "if",
                    "in",
                    "module",
                    "next",
                    "not",
                    "or",
                    "redo",
                    "require",
                    "rescue",
                    "retry",
                    "return",
                    "then",
                    "undef",
                    "unless",
                    "until",
                    "when",
                    "while",
                    "yield",
                    "include",
                    "extend",
                    "prepend",
                    "public",
                    "private",
                    "protected",
                    "raise",
                    "throw"
                  ],
                  "built_in": [
                    "proc",
                    "lambda",
                    "attr_accessor",
                    "attr_reader",
                    "attr_writer",
                    "define_method",
                    "private_constant",
                    "module_function"
                  ],
                  "literal": ["true", "false", "nil"]
                }),
            Mode(
                begin:
                    "(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||~|unless)\\s*",
                keywords: "unless",
                contains: <Mode>[
                  Mode(
                      className: 'regexp',
                      contains: <Mode>[
                        BACKSLASH_ESCAPE,
                        Mode(ref: '~contains~1~starts~contains~0~contains~1')
                      ],
                      illegal: "\\n",
                      variants: <Mode>[
                        Mode(begin: "/", end: "/[a-z]*"),
                        Mode(begin: "%r\\{", end: "\\}[a-z]*"),
                        Mode(begin: "%r\\(", end: "\\)[a-z]*"),
                        Mode(begin: "%r!", end: "![a-z]*"),
                        Mode(begin: "%r\\[", end: "\\][a-z]*")
                      ]),
                  Mode(begin: "#<", end: ">"),
                  Mode(
                      scope: 'comment',
                      begin: "#",
                      end: "\$",
                      contains: <Mode>[
                        Mode(className: 'doctag', begin: "@[A-Za-z]+"),
                        Mode(
                            scope: 'doctag',
                            begin:
                                "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                            end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                            excludeBegin: true,
                            relevance: 0),
                        Mode(
                            begin:
                                "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
                      ]),
                  Mode(
                      scope: 'comment',
                      begin: "^=begin",
                      end: "^=end",
                      contains: <Mode>[
                        Mode(
                            ref:
                                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2~contains~0'),
                        Mode(
                            scope: 'doctag',
                            begin:
                                "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                            end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                            excludeBegin: true,
                            relevance: 0),
                        Mode(
                            begin:
                                "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
                      ],
                      relevance: 10),
                  Mode(
                      scope: 'comment',
                      begin: "^__END__",
                      end: "\\b\\B",
                      contains: <Mode>[
                        Mode(
                            scope: 'doctag',
                            begin:
                                "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                            end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                            excludeBegin: true,
                            relevance: 0),
                        Mode(
                            begin:
                                "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
                      ])
                ],
                relevance: 0),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4')
          ])
        ]),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7'),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8'),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9'),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10'),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11'),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12'),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13'),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
        Mode(
            ref:
                '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4')
      ]),
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2~contains~0':
          Mode(className: 'doctag', begin: "@[A-Za-z]+"),
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1':
          Mode(begin: "#<", end: ">"),
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2':
          Mode(scope: 'comment', begin: "#", end: "\$", contains: <Mode>[
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
      ]),
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3':
          Mode(
              scope: 'comment',
              begin: "^=begin",
              end: "^=end",
              contains: <Mode>[
                Mode(
                    ref:
                        '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2~contains~0'),
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
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4':
          Mode(
              scope: 'comment',
              begin: "^__END__",
              end: "\\b\\B",
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
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7':
          Mode(begin: "[a-zA-Z]\\w*::"),
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8':
          Mode(
              className: 'symbol',
              begin: "[a-zA-Z_]\\w*(!|\\?)?:",
              relevance: 0),
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9':
          Mode(
              className: 'symbol',
              begin: ":(?!\\s)",
              contains: <Mode>[
                Mode(ref: '~contains~1~starts~contains~0'),
                Mode(
                    begin:
                        "([a-zA-Z_]\\w*[!?=]?|[-+~]@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?)")
              ],
              relevance: 0),
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10':
          Mode(className: 'number', relevance: 0, variants: <Mode>[
        Mode(
            begin:
                "\\b([1-9](_?[0-9])*|0)(\\.([0-9](_?[0-9])*))?([eE][+-]?([0-9](_?[0-9])*)|r)?i?\\b"),
        Mode(begin: "\\b0[dD][0-9](_?[0-9])*r?i?\\b"),
        Mode(begin: "\\b0[bB][0-1](_?[0-1])*r?i?\\b"),
        Mode(begin: "\\b0[oO][0-7](_?[0-7])*r?i?\\b"),
        Mode(begin: "\\b0[xX][0-9a-fA-F](_?[0-9a-fA-F])*r?i?\\b"),
        Mode(begin: "\\b0(_?[0-7])+r?i?\\b")
      ]),
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11':
          Mode(
              className: 'variable',
              begin:
                  "(\\\$\\W)|((\\\$|@@?)(\\w+))(?=[^@\$?])(?![A-Za-z])(?![@\$?'])"),
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12':
          Mode(
              className: 'params',
              begin: "\\|",
              end: "\\|",
              excludeBegin: true,
              excludeEnd: true,
              relevance: 0,
              keywords: {
            "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
            "variable.language": ["self", "super"],
            "keyword": [
              "alias",
              "and",
              "begin",
              "BEGIN",
              "break",
              "case",
              "class",
              "defined",
              "do",
              "else",
              "elsif",
              "end",
              "END",
              "ensure",
              "for",
              "if",
              "in",
              "module",
              "next",
              "not",
              "or",
              "redo",
              "require",
              "rescue",
              "retry",
              "return",
              "then",
              "undef",
              "unless",
              "until",
              "when",
              "while",
              "yield",
              "include",
              "extend",
              "prepend",
              "public",
              "private",
              "protected",
              "raise",
              "throw"
            ],
            "built_in": [
              "proc",
              "lambda",
              "attr_accessor",
              "attr_reader",
              "attr_writer",
              "define_method",
              "private_constant",
              "module_function"
            ],
            "literal": ["true", "false", "nil"]
          }),
      '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13':
          Mode(
              begin:
                  "(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||\x7e|unless)\\s*",
              keywords: "unless",
              contains: <Mode>[
                Mode(
                    className: 'regexp',
                    contains: <Mode>[
                      BACKSLASH_ESCAPE,
                      Mode(ref: '~contains~1~starts~contains~0~contains~1')
                    ],
                    illegal: "\\n",
                    variants: <Mode>[
                      Mode(begin: "/", end: "/[a-z]*"),
                      Mode(begin: "%r\\{", end: "\\}[a-z]*"),
                      Mode(begin: "%r\\(", end: "\\)[a-z]*"),
                      Mode(begin: "%r!", end: "![a-z]*"),
                      Mode(begin: "%r\\[", end: "\\][a-z]*")
                    ]),
                Mode(begin: "#<", end: ">"),
                Mode(scope: 'comment', begin: "#", end: "\$", contains: <Mode>[
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
                ]),
                Mode(
                    scope: 'comment',
                    begin: "^=begin",
                    end: "^=end",
                    contains: <Mode>[
                      Mode(
                          ref:
                              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2~contains~0'),
                      Mode(
                          scope: 'doctag',
                          begin:
                              "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                          end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                          excludeBegin: true,
                          relevance: 0),
                      Mode(
                          begin:
                              "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
                    ],
                    relevance: 10),
                Mode(
                    scope: 'comment',
                    begin: "^__END__",
                    end: "\\b\\B",
                    contains: <Mode>[
                      Mode(
                          scope: 'doctag',
                          begin:
                              "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                          end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                          excludeBegin: true,
                          relevance: 0),
                      Mode(
                          begin:
                              "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
                    ])
              ],
              relevance: 0)
    },
    name: "Ruby",
    aliases: ["rb", "gemspec", "podspec", "thor", "irb"],
    keywords: {
      "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
      "variable.language": ["self", "super"],
      "keyword": [
        "alias",
        "and",
        "begin",
        "BEGIN",
        "break",
        "case",
        "class",
        "defined",
        "do",
        "else",
        "elsif",
        "end",
        "END",
        "ensure",
        "for",
        "if",
        "in",
        "module",
        "next",
        "not",
        "or",
        "redo",
        "require",
        "rescue",
        "retry",
        "return",
        "then",
        "undef",
        "unless",
        "until",
        "when",
        "while",
        "yield",
        "include",
        "extend",
        "prepend",
        "public",
        "private",
        "protected",
        "raise",
        "throw"
      ],
      "built_in": [
        "proc",
        "lambda",
        "attr_accessor",
        "attr_reader",
        "attr_writer",
        "define_method",
        "private_constant",
        "module_function"
      ],
      "literal": ["true", "false", "nil"]
    },
    illegal: "\\/\\*",
    contains: <Mode>[
      Mode(
        scope: 'meta',
        begin: "^#![ ]*\\/.*\\bruby\\b.*",
        end: "\$",
        relevance: 0,
        onBegin: callbackOnBegin2,
      ),
      Mode(
          begin: "^\\s*=>",
          starts: Mode(end: "\$", contains: <Mode>[
            Mode(ref: '~contains~1~starts~contains~0'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~1'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~2'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~3'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~4'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~5'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~6'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4')
          ])),
      Mode(
          className: 'meta.prompt',
          begin:
              "^([>?]>|[\\w#]+\\(\\w+\\):\\d+:\\d+[>*]|(\\w+-)?\\d+\\.\\d+\\.\\d+(p\\d+)?[^\\d][^>]+>)(?=[ ])",
          starts: Mode(end: "\$", keywords: {
            "variable.constant": ["__FILE__", "__LINE__", "__ENCODING__"],
            "variable.language": ["self", "super"],
            "keyword": [
              "alias",
              "and",
              "begin",
              "BEGIN",
              "break",
              "case",
              "class",
              "defined",
              "do",
              "else",
              "elsif",
              "end",
              "END",
              "ensure",
              "for",
              "if",
              "in",
              "module",
              "next",
              "not",
              "or",
              "redo",
              "require",
              "rescue",
              "retry",
              "return",
              "then",
              "undef",
              "unless",
              "until",
              "when",
              "while",
              "yield",
              "include",
              "extend",
              "prepend",
              "public",
              "private",
              "protected",
              "raise",
              "throw"
            ],
            "built_in": [
              "proc",
              "lambda",
              "attr_accessor",
              "attr_reader",
              "attr_writer",
              "define_method",
              "private_constant",
              "module_function"
            ],
            "literal": ["true", "false", "nil"]
          }, contains: <Mode>[
            Mode(ref: '~contains~1~starts~contains~0'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~1'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~2'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~3'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~4'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~5'),
            Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~6'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
            Mode(
                ref:
                    '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4')
          ])),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4'),
      Mode(ref: '~contains~1~starts~contains~0'),
      Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~1'),
      Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~2'),
      Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~3'),
      Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~4'),
      Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~5'),
      Mode(ref: '~contains~1~starts~contains~0~contains~1~contains~6'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~7'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~8'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~9'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~10'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~11'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~12'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~1'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~2'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~3'),
      Mode(
          ref:
              '~contains~1~starts~contains~0~contains~1~contains~6~contains~0~contains~13~contains~4')
    ]);
