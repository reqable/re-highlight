// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';
import 'lib/common.dart';

final langLatex = Mode(
    refs: {
      '~contains~0~contains~0': Mode(begin: "\\s+", relevance: 0),
      '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~0':
          Mode(begin: "\\^{6}[0-9a-f]{6}"),
      '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~1':
          Mode(begin: "\\^{5}[0-9a-f]{5}"),
      '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~2':
          Mode(begin: "\\^{4}[0-9a-f]{4}"),
      '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~3':
          Mode(begin: "\\^{3}[0-9a-f]{3}"),
      '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~4':
          Mode(begin: "\\^{2}[0-9a-f]{2}"),
      '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~5':
          Mode(begin: "\\^{2}[\\u0000-\\u007f]"),
      '~contains~2~starts~starts~contains~0~contains~0~contains~1': Mode(
          className: 'keyword',
          begin: "\\\\",
          relevance: 0,
          contains: <Mode>[
            Mode(
                endsParent: true,
                begin:
                    "(?:(?:NeedsTeXFormat|RequirePackage|GetIdInfo)(?![a-zA-Z@:_])|Provides(?:Expl)?(?:Package|Class|File)(?![a-zA-Z@:_])|(?:DeclareOption|ProcessOptions)(?![a-zA-Z@:_])|(?:documentclass|usepackage|input|include)(?![a-zA-Z@:_])|makeat(?:letter|other)(?![a-zA-Z@:_])|ExplSyntax(?:On|Off)(?![a-zA-Z@:_])|(?:new|renew|provide)?command(?![a-zA-Z@:_])|(?:re)newenvironment(?![a-zA-Z@:_])|(?:New|Renew|Provide|Declare)(?:Expandable)?DocumentCommand(?![a-zA-Z@:_])|(?:New|Renew|Provide|Declare)DocumentEnvironment(?![a-zA-Z@:_])|(?:(?:e|g|x)?def|let)(?![a-zA-Z@:_])|(?:begin|end)(?![a-zA-Z@:_])|(?:part|chapter|(?:sub){0,2}section|(?:sub)?paragraph)(?![a-zA-Z@:_])|caption(?![a-zA-Z@:_])|(?:label|(?:eq|page|name)?ref|(?:paren|foot|super)?cite)(?![a-zA-Z@:_])|(?:alpha|beta|[Gg]amma|[Dd]elta|(?:var)?epsilon|zeta|eta|[Tt]heta|vartheta)(?![a-zA-Z@:_])|(?:iota|(?:var)?kappa|[Ll]ambda|mu|nu|[Xx]i|[Pp]i|varpi|(?:var)rho)(?![a-zA-Z@:_])|(?:[Ss]igma|varsigma|tau|[Uu]psilon|[Pp]hi|varphi|chi|[Pp]si|[Oo]mega)(?![a-zA-Z@:_])|(?:frac|sum|prod|lim|infty|times|sqrt|leq|geq|left|right|middle|[bB]igg?)(?![a-zA-Z@:_])|(?:[lr]angle|q?quad|[lcvdi]?dots|d?dot|hat|tilde|bar)(?![a-zA-Z@:_]))"),
            Mode(
                endsParent: true,
                begin:
                    "(?:__)?[a-zA-Z]{2,}_[a-zA-Z](?:_?[a-zA-Z])+:[a-zA-Z]*(?![a-zA-Z:_])|[lgc]__?[a-zA-Z](?:_?[a-zA-Z])*_[a-zA-Z]{2,}(?![a-zA-Z:_])|[qs]__?[a-zA-Z](?:_?[a-zA-Z])+(?![a-zA-Z:_])|use(?:_i)?:[a-zA-Z]*(?![a-zA-Z:_])|(?:else|fi|or):(?![a-zA-Z:_])|(?:if|cs|exp):w(?![a-zA-Z:_])|(?:hbox|vbox):n(?![a-zA-Z:_])|::[a-zA-Z]_unbraced(?![a-zA-Z:_])|::[a-zA-Z:](?![a-zA-Z:_])"),
            Mode(endsParent: true, variants: <Mode>[
              Mode(begin: "\\^{6}[0-9a-f]{6}"),
              Mode(begin: "\\^{5}[0-9a-f]{5}"),
              Mode(begin: "\\^{4}[0-9a-f]{4}"),
              Mode(begin: "\\^{3}[0-9a-f]{3}"),
              Mode(begin: "\\^{2}[0-9a-f]{2}"),
              Mode(begin: "\\^{2}[\\u0000-\\u007f]")
            ]),
            Mode(endsParent: true, relevance: 0, variants: <Mode>[
              Mode(begin: "[a-zA-Z@]+"),
              Mode(begin: "[^a-zA-Z@]?")
            ])
          ]),
      '~contains~2~starts~starts~contains~0~contains~0~contains~2':
          Mode(className: 'params', relevance: 0, begin: "#+\\d?"),
      '~contains~2~starts~starts~contains~0~contains~0~contains~3':
          Mode(variants: <Mode>[
        Mode(
            ref:
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~0'),
        Mode(
            ref:
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~1'),
        Mode(
            ref:
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~2'),
        Mode(
            ref:
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~3'),
        Mode(
            ref:
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~4'),
        Mode(
            ref:
                '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~5')
      ]),
      '~contains~2~starts~starts~contains~0~contains~0~contains~4':
          Mode(className: 'built_in', relevance: 0, begin: "[\$&^_]"),
      '~contains~2~starts~starts~contains~0~contains~0~contains~5': Mode(
          className: 'meta',
          begin: "% ?!(T[eE]X|tex|BIB|bib)",
          end: "\$",
          relevance: 10),
      '~contains~2~starts~starts~contains~0~contains~0~contains~6': Mode(
          scope: 'comment',
          begin: "%",
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
      '~contains~2~starts~starts~contains~0': Mode(
          begin: "\\{",
          end: "\\}",
          relevance: 0,
          contains: <Mode>[
            Mode(begin: "\\{", end: "\\}", relevance: 0, contains: <Mode>[
              Mode(self: true),
              Mode(
                  className: 'keyword',
                  begin: "\\\\",
                  relevance: 0,
                  contains: <Mode>[
                    Mode(
                        endsParent: true,
                        begin:
                            "(?:(?:NeedsTeXFormat|RequirePackage|GetIdInfo)(?![a-zA-Z@:_])|Provides(?:Expl)?(?:Package|Class|File)(?![a-zA-Z@:_])|(?:DeclareOption|ProcessOptions)(?![a-zA-Z@:_])|(?:documentclass|usepackage|input|include)(?![a-zA-Z@:_])|makeat(?:letter|other)(?![a-zA-Z@:_])|ExplSyntax(?:On|Off)(?![a-zA-Z@:_])|(?:new|renew|provide)?command(?![a-zA-Z@:_])|(?:re)newenvironment(?![a-zA-Z@:_])|(?:New|Renew|Provide|Declare)(?:Expandable)?DocumentCommand(?![a-zA-Z@:_])|(?:New|Renew|Provide|Declare)DocumentEnvironment(?![a-zA-Z@:_])|(?:(?:e|g|x)?def|let)(?![a-zA-Z@:_])|(?:begin|end)(?![a-zA-Z@:_])|(?:part|chapter|(?:sub){0,2}section|(?:sub)?paragraph)(?![a-zA-Z@:_])|caption(?![a-zA-Z@:_])|(?:label|(?:eq|page|name)?ref|(?:paren|foot|super)?cite)(?![a-zA-Z@:_])|(?:alpha|beta|[Gg]amma|[Dd]elta|(?:var)?epsilon|zeta|eta|[Tt]heta|vartheta)(?![a-zA-Z@:_])|(?:iota|(?:var)?kappa|[Ll]ambda|mu|nu|[Xx]i|[Pp]i|varpi|(?:var)rho)(?![a-zA-Z@:_])|(?:[Ss]igma|varsigma|tau|[Uu]psilon|[Pp]hi|varphi|chi|[Pp]si|[Oo]mega)(?![a-zA-Z@:_])|(?:frac|sum|prod|lim|infty|times|sqrt|leq|geq|left|right|middle|[bB]igg?)(?![a-zA-Z@:_])|(?:[lr]angle|q?quad|[lcvdi]?dots|d?dot|hat|tilde|bar)(?![a-zA-Z@:_]))"),
                    Mode(
                        endsParent: true,
                        begin:
                            "(?:__)?[a-zA-Z]{2,}_[a-zA-Z](?:_?[a-zA-Z])+:[a-zA-Z]*(?![a-zA-Z:_])|[lgc]__?[a-zA-Z](?:_?[a-zA-Z])*_[a-zA-Z]{2,}(?![a-zA-Z:_])|[qs]__?[a-zA-Z](?:_?[a-zA-Z])+(?![a-zA-Z:_])|use(?:_i)?:[a-zA-Z]*(?![a-zA-Z:_])|(?:else|fi|or):(?![a-zA-Z:_])|(?:if|cs|exp):w(?![a-zA-Z:_])|(?:hbox|vbox):n(?![a-zA-Z:_])|::[a-zA-Z]_unbraced(?![a-zA-Z:_])|::[a-zA-Z:](?![a-zA-Z:_])"),
                    Mode(endsParent: true, variants: <Mode>[
                      Mode(begin: "\\^{6}[0-9a-f]{6}"),
                      Mode(begin: "\\^{5}[0-9a-f]{5}"),
                      Mode(begin: "\\^{4}[0-9a-f]{4}"),
                      Mode(begin: "\\^{3}[0-9a-f]{3}"),
                      Mode(begin: "\\^{2}[0-9a-f]{2}"),
                      Mode(begin: "\\^{2}[\\u0000-\\u007f]")
                    ]),
                    Mode(endsParent: true, relevance: 0, variants: <Mode>[
                      Mode(begin: "[a-zA-Z@]+"),
                      Mode(begin: "[^a-zA-Z@]?")
                    ])
                  ]),
              Mode(className: 'params', relevance: 0, begin: "#+\\d?"),
              Mode(variants: <Mode>[
                Mode(
                    ref:
                        '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~0'),
                Mode(
                    ref:
                        '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~1'),
                Mode(
                    ref:
                        '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~2'),
                Mode(
                    ref:
                        '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~3'),
                Mode(
                    ref:
                        '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~4'),
                Mode(
                    ref:
                        '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~5')
              ]),
              Mode(className: 'built_in', relevance: 0, begin: "[\$&^_]"),
              Mode(
                  className: 'meta',
                  begin: "% ?!(T[eE]X|tex|BIB|bib)",
                  end: "\$",
                  relevance: 10),
              Mode(
                  scope: 'comment',
                  begin: "%",
                  end: "\$",
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
                  ],
                  relevance: 0)
            ]),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~1'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~2'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~3'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~4'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~5'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~6')
          ],
          endsParent: true),
      '~contains~2~starts~starts~contains~0~contains~0':
          Mode(begin: "\\{", end: "\\}", relevance: 0, contains: <Mode>[
        Mode(self: true),
        Mode(
            className: 'keyword',
            begin: "\\\\",
            relevance: 0,
            contains: <Mode>[
              Mode(
                  endsParent: true,
                  begin:
                      "(?:(?:NeedsTeXFormat|RequirePackage|GetIdInfo)(?![a-zA-Z@:_])|Provides(?:Expl)?(?:Package|Class|File)(?![a-zA-Z@:_])|(?:DeclareOption|ProcessOptions)(?![a-zA-Z@:_])|(?:documentclass|usepackage|input|include)(?![a-zA-Z@:_])|makeat(?:letter|other)(?![a-zA-Z@:_])|ExplSyntax(?:On|Off)(?![a-zA-Z@:_])|(?:new|renew|provide)?command(?![a-zA-Z@:_])|(?:re)newenvironment(?![a-zA-Z@:_])|(?:New|Renew|Provide|Declare)(?:Expandable)?DocumentCommand(?![a-zA-Z@:_])|(?:New|Renew|Provide|Declare)DocumentEnvironment(?![a-zA-Z@:_])|(?:(?:e|g|x)?def|let)(?![a-zA-Z@:_])|(?:begin|end)(?![a-zA-Z@:_])|(?:part|chapter|(?:sub){0,2}section|(?:sub)?paragraph)(?![a-zA-Z@:_])|caption(?![a-zA-Z@:_])|(?:label|(?:eq|page|name)?ref|(?:paren|foot|super)?cite)(?![a-zA-Z@:_])|(?:alpha|beta|[Gg]amma|[Dd]elta|(?:var)?epsilon|zeta|eta|[Tt]heta|vartheta)(?![a-zA-Z@:_])|(?:iota|(?:var)?kappa|[Ll]ambda|mu|nu|[Xx]i|[Pp]i|varpi|(?:var)rho)(?![a-zA-Z@:_])|(?:[Ss]igma|varsigma|tau|[Uu]psilon|[Pp]hi|varphi|chi|[Pp]si|[Oo]mega)(?![a-zA-Z@:_])|(?:frac|sum|prod|lim|infty|times|sqrt|leq|geq|left|right|middle|[bB]igg?)(?![a-zA-Z@:_])|(?:[lr]angle|q?quad|[lcvdi]?dots|d?dot|hat|tilde|bar)(?![a-zA-Z@:_]))"),
              Mode(
                  endsParent: true,
                  begin:
                      "(?:__)?[a-zA-Z]{2,}_[a-zA-Z](?:_?[a-zA-Z])+:[a-zA-Z]*(?![a-zA-Z:_])|[lgc]__?[a-zA-Z](?:_?[a-zA-Z])*_[a-zA-Z]{2,}(?![a-zA-Z:_])|[qs]__?[a-zA-Z](?:_?[a-zA-Z])+(?![a-zA-Z:_])|use(?:_i)?:[a-zA-Z]*(?![a-zA-Z:_])|(?:else|fi|or):(?![a-zA-Z:_])|(?:if|cs|exp):w(?![a-zA-Z:_])|(?:hbox|vbox):n(?![a-zA-Z:_])|::[a-zA-Z]_unbraced(?![a-zA-Z:_])|::[a-zA-Z:](?![a-zA-Z:_])"),
              Mode(endsParent: true, variants: <Mode>[
                Mode(begin: "\\^{6}[0-9a-f]{6}"),
                Mode(begin: "\\^{5}[0-9a-f]{5}"),
                Mode(begin: "\\^{4}[0-9a-f]{4}"),
                Mode(begin: "\\^{3}[0-9a-f]{3}"),
                Mode(begin: "\\^{2}[0-9a-f]{2}"),
                Mode(begin: "\\^{2}[\\u0000-\\u007f]")
              ]),
              Mode(endsParent: true, relevance: 0, variants: <Mode>[
                Mode(begin: "[a-zA-Z@]+"),
                Mode(begin: "[^a-zA-Z@]?")
              ])
            ]),
        Mode(className: 'params', relevance: 0, begin: "#+\\d?"),
        Mode(variants: <Mode>[
          Mode(
              ref:
                  '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~0'),
          Mode(
              ref:
                  '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~1'),
          Mode(
              ref:
                  '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~2'),
          Mode(
              ref:
                  '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~3'),
          Mode(
              ref:
                  '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~4'),
          Mode(
              ref:
                  '~contains~2~starts~starts~contains~0~contains~0~contains~1~contains~2~variants~5')
        ]),
        Mode(className: 'built_in', relevance: 0, begin: "[\$&^_]"),
        Mode(
            className: 'meta',
            begin: "% ?!(T[eE]X|tex|BIB|bib)",
            end: "\$",
            relevance: 10),
        Mode(
            scope: 'comment',
            begin: "%",
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
            relevance: 0)
      ]),
      '~contains~6~starts~starts~contains~0': Mode(
          begin: "\\[",
          end: "\\]",
          endsParent: true,
          relevance: 0,
          contains: <Mode>[
            Mode(ref: '~contains~2~starts~starts~contains~0~contains~0'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~1'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~2'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~3'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~4'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~5'),
            Mode(
                ref:
                    '~contains~2~starts~starts~contains~0~contains~0~contains~6')
          ])
    },
    name: "LaTeX",
    aliases: ["tex"],
    contains: <Mode>[
      Mode(
          begin: "\\\\verb(?![a-zA-Z@:_])",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\verb"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(contains: <Mode>[
            Mode(
                className: 'string',
                begin: "(.|\\r?\\n)",
                end: "(.|\\r?\\n)",
                excludeBegin: true,
                excludeEnd: true,
                endsParent: true,
                onBegin: callbackOnBegin1,
                onEnd: callbackOnEnd1)
          ])),
      Mode(
          begin: "\\\\lstinline(?![a-zA-Z@:_])",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\lstinline"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(contains: <Mode>[
            Mode(
                className: 'string',
                begin: "(.|\\r?\\n)",
                end: "(.|\\r?\\n)",
                excludeBegin: true,
                excludeEnd: true,
                endsParent: true,
                onBegin: callbackOnBegin1,
                onEnd: callbackOnEnd1)
          ])),
      Mode(
          begin: "\\\\mint(?![a-zA-Z@:_])",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\mint"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
              starts: Mode(
                  relevance: 0,
                  contains: <Mode>[
                    Mode(ref: '~contains~2~starts~starts~contains~0')
                  ],
                  starts: Mode(contains: <Mode>[
                    Mode(
                        className: 'string',
                        begin: "(.|\\r?\\n)",
                        end: "(.|\\r?\\n)",
                        excludeBegin: true,
                        excludeEnd: true,
                        endsParent: true,
                        onBegin: callbackOnBegin1,
                        onEnd: callbackOnEnd1)
                  ])))),
      Mode(
          begin: "\\\\mintinline(?![a-zA-Z@:_])",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\mintinline"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
              starts: Mode(
                  relevance: 0,
                  contains: <Mode>[
                    Mode(ref: '~contains~2~starts~starts~contains~0')
                  ],
                  starts: Mode(contains: <Mode>[
                    Mode(
                        relevance: 0,
                        begin: "\\{",
                        starts: Mode(endsParent: true, contains: <Mode>[
                          Mode(
                              className: 'string',
                              end: "(?=\\})",
                              endsParent: true,
                              contains: <Mode>[
                                Mode(
                                    begin: "\\{",
                                    end: "\\}",
                                    relevance: 0,
                                    contains: <Mode>[Mode(self: true)])
                              ])
                        ])),
                    Mode(
                        className: 'string',
                        begin: "(.|\\r?\\n)",
                        end: "(.|\\r?\\n)",
                        excludeBegin: true,
                        excludeEnd: true,
                        endsParent: true,
                        onBegin: callbackOnBegin1,
                        onEnd: callbackOnEnd1)
                  ])))),
      Mode(
          begin: "\\\\url(?![a-zA-Z@:_])",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\url"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(contains: <Mode>[
            Mode(
                relevance: 0,
                begin: "\\{",
                starts: Mode(endsParent: true, contains: <Mode>[
                  Mode(
                      className: 'link',
                      end: "(?=\\})",
                      endsParent: true,
                      contains: <Mode>[
                        Mode(
                            begin: "\\{",
                            end: "\\}",
                            relevance: 0,
                            contains: <Mode>[Mode(self: true)])
                      ])
                ])),
            Mode(
                relevance: 0,
                begin: "\\{",
                starts: Mode(endsParent: true, contains: <Mode>[
                  Mode(
                      className: 'link',
                      end: "(?=\\})",
                      endsParent: true,
                      contains: <Mode>[
                        Mode(
                            begin: "\\{",
                            end: "\\}",
                            relevance: 0,
                            contains: <Mode>[Mode(self: true)])
                      ])
                ]))
          ])),
      Mode(
          begin: "\\\\hyperref(?![a-zA-Z@:_])",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\hyperref"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(contains: <Mode>[
            Mode(
                relevance: 0,
                begin: "\\{",
                starts: Mode(endsParent: true, contains: <Mode>[
                  Mode(
                      className: 'link',
                      end: "(?=\\})",
                      endsParent: true,
                      contains: <Mode>[
                        Mode(
                            begin: "\\{",
                            end: "\\}",
                            relevance: 0,
                            contains: <Mode>[Mode(self: true)])
                      ])
                ]))
          ])),
      Mode(
          begin: "\\\\href(?![a-zA-Z@:_])",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\href"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
              starts: Mode(
                  relevance: 0,
                  contains: <Mode>[
                    Mode(ref: '~contains~6~starts~starts~contains~0')
                  ],
                  starts: Mode(contains: <Mode>[
                    Mode(
                        relevance: 0,
                        begin: "\\{",
                        starts: Mode(endsParent: true, contains: <Mode>[
                          Mode(
                              className: 'link',
                              end: "(?=\\})",
                              endsParent: true,
                              contains: <Mode>[
                                Mode(
                                    begin: "\\{",
                                    end: "\\}",
                                    relevance: 0,
                                    contains: <Mode>[Mode(self: true)])
                              ])
                        ]))
                  ])))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{verbatim\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts:
                  Mode(className: 'string', end: "(?=\\\\end\\{verbatim\\})"))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{filecontents\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts: Mode(
                  contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
                  starts: Mode(
                      relevance: 0,
                      contains: <Mode>[
                        Mode(ref: '~contains~2~starts~starts~contains~0')
                      ],
                      starts: Mode(
                          className: 'string',
                          end: "(?=\\\\end\\{filecontents\\})"))))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{Verbatim\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts: Mode(
                  contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
                  starts: Mode(
                      relevance: 0,
                      contains: <Mode>[
                        Mode(ref: '~contains~6~starts~starts~contains~0')
                      ],
                      starts: Mode(
                          className: 'string',
                          end: "(?=\\\\end\\{Verbatim\\})"))))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{BVerbatim\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts: Mode(
                  contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
                  starts: Mode(
                      relevance: 0,
                      contains: <Mode>[
                        Mode(ref: '~contains~6~starts~starts~contains~0')
                      ],
                      starts: Mode(
                          className: 'string',
                          end: "(?=\\\\end\\{BVerbatim\\})"))))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{LVerbatim\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts: Mode(
                  contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
                  starts: Mode(
                      relevance: 0,
                      contains: <Mode>[
                        Mode(ref: '~contains~6~starts~starts~contains~0')
                      ],
                      starts: Mode(
                          className: 'string',
                          end: "(?=\\\\end\\{LVerbatim\\})"))))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{verbatim\\*\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts: Mode(
                  className: 'string', end: "(?=\\\\end\\{verbatim\\*\\})"))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{filecontents\\*\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts: Mode(
                  contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
                  starts: Mode(
                      relevance: 0,
                      contains: <Mode>[
                        Mode(ref: '~contains~2~starts~starts~contains~0')
                      ],
                      starts: Mode(
                          className: 'string',
                          end: "(?=\\\\end\\{filecontents\\*\\})"))))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{Verbatim\\*\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts: Mode(
                  contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
                  starts: Mode(
                      relevance: 0,
                      contains: <Mode>[
                        Mode(ref: '~contains~6~starts~starts~contains~0')
                      ],
                      starts: Mode(
                          className: 'string',
                          end: "(?=\\\\end\\{Verbatim\\*\\})"))))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{BVerbatim\\*\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts: Mode(
                  contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
                  starts: Mode(
                      relevance: 0,
                      contains: <Mode>[
                        Mode(ref: '~contains~6~starts~starts~contains~0')
                      ],
                      starts: Mode(
                          className: 'string',
                          end: "(?=\\\\end\\{BVerbatim\\*\\})"))))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{LVerbatim\\*\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts: Mode(
                  contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
                  starts: Mode(
                      relevance: 0,
                      contains: <Mode>[
                        Mode(ref: '~contains~6~starts~starts~contains~0')
                      ],
                      starts: Mode(
                          className: 'string',
                          end: "(?=\\\\end\\{LVerbatim\\*\\})"))))),
      Mode(
          begin: "\\\\begin(?=[ \t]*(\\r?\\n[ \t]*)?\\{minted\\})",
          keywords: {"\$pattern": "\\\\[a-zA-Z]+", "keyword": "\\begin"},
          relevance: 0,
          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
          starts: Mode(
              relevance: 0,
              contains: <Mode>[
                Mode(ref: '~contains~2~starts~starts~contains~0')
              ],
              starts: Mode(
                  contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
                  starts: Mode(
                      relevance: 0,
                      contains: <Mode>[
                        Mode(ref: '~contains~6~starts~starts~contains~0')
                      ],
                      starts: Mode(
                          contains: <Mode>[Mode(ref: '~contains~0~contains~0')],
                          starts: Mode(
                              relevance: 0,
                              contains: <Mode>[
                                Mode(
                                    ref: '~contains~2~starts~starts~contains~0')
                              ],
                              starts: Mode(
                                  className: 'string',
                                  end: "(?=\\\\end\\{minted\\})"))))))),
      Mode(ref: '~contains~2~starts~starts~contains~0~contains~0~contains~1'),
      Mode(ref: '~contains~2~starts~starts~contains~0~contains~0~contains~2'),
      Mode(ref: '~contains~2~starts~starts~contains~0~contains~0~contains~3'),
      Mode(ref: '~contains~2~starts~starts~contains~0~contains~0~contains~4'),
      Mode(ref: '~contains~2~starts~starts~contains~0~contains~0~contains~5'),
      Mode(ref: '~contains~2~starts~starts~contains~0~contains~0~contains~6')
    ]);
