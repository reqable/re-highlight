// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';
import 'lib/common.dart';

final langScheme = Mode(
    refs: {
      '~contains~1': Mode(className: 'number', variants: <Mode>[
        Mode(begin: "(-|\\+)?\\d+([./]\\d+)?", relevance: 0),
        Mode(
            begin: "(-|\\+)?\\d+([./]\\d+)?[+\\-](-|\\+)?\\d+([./]\\d+)?i",
            relevance: 0),
        Mode(begin: "#b[0-1]+(/[0-1]+)?"),
        Mode(begin: "#o[0-7]+(/[0-7]+)?"),
        Mode(begin: "#x[0-9a-f]+(/[0-9a-f]+)?")
      ]),
      '~contains~3': Mode(
          className: 'symbol', begin: "'[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+"),
      '~contains~4~contains~0~contains~4':
          Mode(begin: "[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+", relevance: 0),
      '~contains~5~contains~0~contains~0': Mode(
          className: 'name',
          relevance: 0,
          begin: "[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+",
          keywords: {
            "\$pattern": "[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+",
            "built_in":
                "case-lambda call/cc class define-class exit-handler field import inherit init-field interface let*-values let-values let/ec mixin opt-lambda override protect provide public rename require require-for-syntax syntax syntax-case syntax-error unit/sig unless when with-syntax and begin call-with-current-continuation call-with-input-file call-with-output-file case cond define define-syntax delay do dynamic-wind else for-each if lambda let let* let-syntax letrec letrec-syntax map or syntax-rules ' * + , ,@ - ... / ; < <= = => > >= ` abs acos angle append apply asin assoc assq assv atan boolean? caar cadr call-with-input-file call-with-output-file call-with-values car cdddar cddddr cdr ceiling char->integer char-alphabetic? char-ci<=? char-ci<? char-ci=? char-ci>=? char-ci>? char-downcase char-lower-case? char-numeric? char-ready? char-upcase char-upper-case? char-whitespace? char<=? char<? char=? char>=? char>? char? close-input-port close-output-port complex? cons cos current-input-port current-output-port denominator display eof-object? eq? equal? eqv? eval even? exact->inexact exact? exp expt floor force gcd imag-part inexact->exact inexact? input-port? integer->char integer? interaction-environment lcm length list list->string list->vector list-ref list-tail list? load log magnitude make-polar make-rectangular make-string make-vector max member memq memv min modulo negative? newline not null-environment null? number->string number? numerator odd? open-input-file open-output-file output-port? pair? peek-char port? positive? procedure? quasiquote quote quotient rational? rationalize read read-char real-part real? remainder reverse round scheme-report-environment set! set-car! set-cdr! sin sqrt string string->list string->number string->symbol string-append string-ci<=? string-ci<? string-ci=? string-ci>=? string-ci>? string-copy string-fill! string-length string-ref string-set! string<=? string<? string=? string>=? string>? string? substring symbol->string symbol? tan transcript-off transcript-on truncate values vector vector->list vector-fill! vector-length vector-ref vector-set! with-input-from-file with-output-to-file write write-char zero?"
          }),
      '~contains~4~contains~0~contains~1': Mode(
          className: 'literal',
          begin: "(#t|#f|#\\\\[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+|#\\\\.)"),
      '~contains~4': Mode(variants: <Mode>[
        Mode(begin: "'"),
        Mode(begin: "`")
      ], contains: <Mode>[
        Mode(begin: "\\(", end: "\\)", contains: <Mode>[
          Mode(self: true),
          Mode(
              className: 'literal',
              begin:
                  "(#t|#f|#\\\\[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+|#\\\\.)"),
          QUOTE_STRING_MODE,
          Mode(ref: '~contains~1'),
          Mode(begin: "[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+", relevance: 0),
          Mode(ref: '~contains~3')
        ])
      ]),
      '~contains~5': Mode(variants: <Mode>[
        Mode(begin: "\\(", end: "\\)"),
        Mode(begin: "\\[", end: "\\]")
      ], contains: <Mode>[
        Mode(
            begin: "lambda",
            endsWithParent: true,
            returnBegin: true,
            contains: <Mode>[
              Mode(
                  className: 'name',
                  relevance: 0,
                  begin: "[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+",
                  keywords: {
                    "\$pattern": "[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+",
                    "built_in":
                        "case-lambda call/cc class define-class exit-handler field import inherit init-field interface let*-values let-values let/ec mixin opt-lambda override protect provide public rename require require-for-syntax syntax syntax-case syntax-error unit/sig unless when with-syntax and begin call-with-current-continuation call-with-input-file call-with-output-file case cond define define-syntax delay do dynamic-wind else for-each if lambda let let* let-syntax letrec letrec-syntax map or syntax-rules ' * + , ,@ - ... / ; < <= = => > >= ` abs acos angle append apply asin assoc assq assv atan boolean? caar cadr call-with-input-file call-with-output-file call-with-values car cdddar cddddr cdr ceiling char->integer char-alphabetic? char-ci<=? char-ci<? char-ci=? char-ci>=? char-ci>? char-downcase char-lower-case? char-numeric? char-ready? char-upcase char-upper-case? char-whitespace? char<=? char<? char=? char>=? char>? char? close-input-port close-output-port complex? cons cos current-input-port current-output-port denominator display eof-object? eq? equal? eqv? eval even? exact->inexact exact? exp expt floor force gcd imag-part inexact->exact inexact? input-port? integer->char integer? interaction-environment lcm length list list->string list->vector list-ref list-tail list? load log magnitude make-polar make-rectangular make-string make-vector max member memq memv min modulo negative? newline not null-environment null? number->string number? numerator odd? open-input-file open-output-file output-port? pair? peek-char port? positive? procedure? quasiquote quote quotient rational? rationalize read read-char real-part real? remainder reverse round scheme-report-environment set! set-car! set-cdr! sin sqrt string string->list string->number string->symbol string-append string-ci<=? string-ci<? string-ci=? string-ci>=? string-ci>? string-copy string-fill! string-length string-ref string-set! string<=? string<? string=? string>=? string>? string? substring symbol->string symbol? tan transcript-off transcript-on truncate values vector vector->list vector-fill! vector-length vector-ref vector-set! with-input-from-file with-output-to-file write write-char zero?"
                  }),
              Mode(endsParent: true, variants: <Mode>[
                Mode(begin: "\\(", end: "\\)"),
                Mode(begin: "\\[", end: "\\]")
              ], contains: <Mode>[
                Mode(ref: '~contains~4~contains~0~contains~4')
              ])
            ]),
        Mode(ref: '~contains~5~contains~0~contains~0'),
        Mode(endsWithParent: true, relevance: 0, contains: <Mode>[
          Mode(ref: '~contains~4~contains~0~contains~1'),
          Mode(ref: '~contains~1'),
          QUOTE_STRING_MODE,
          Mode(ref: '~contains~4~contains~0~contains~4'),
          Mode(ref: '~contains~3'),
          Mode(ref: '~contains~4'),
          Mode(ref: '~contains~5'),
          Mode(
              scope: 'comment',
              begin: ";",
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
          Mode(scope: 'comment', begin: "#\\|", end: "\\|#", contains: <Mode>[
            Mode(
                scope: 'doctag',
                begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                excludeBegin: true,
                relevance: 0),
            Mode(
                begin:
                    "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
          ])
        ])
      ]),
      '~contains~5~contains~2~contains~7': Mode(
          scope: 'comment',
          begin: ";",
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
      '~contains~5~contains~2~contains~8':
          Mode(scope: 'comment', begin: "#\\|", end: "\\|#", contains: <Mode>[
        Mode(
            scope: 'doctag',
            begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
            end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
            excludeBegin: true,
            relevance: 0),
        Mode(
            begin:
                "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
      ])
    },
    name: "Scheme",
    aliases: ["scm"],
    illegal: "\\S",
    contains: <Mode>[
      Mode(
          scope: 'meta',
          begin: "^#![ ]*\\/",
          end: "\$",
          relevance: 0,
          onBegin: callbackOnBegin2),
      Mode(ref: '~contains~1'),
      QUOTE_STRING_MODE,
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~4'),
      Mode(ref: '~contains~5'),
      Mode(ref: '~contains~5~contains~2~contains~7'),
      Mode(ref: '~contains~5~contains~2~contains~8')
    ]);
