// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langClojure = Mode(
    refs: {
      '~contains~0': Mode(scope: 'punctuation', match: ",", relevance: 0),
      '~contains~1': Mode(begin: "\\(", end: "\\)", contains: <Mode>[
        Mode(
            beginKeywords:
                "def defonce defprotocol defstruct defmulti defmethod defn- defn defmacro deftype defrecord",
            keywords: {
              "\$pattern":
                  "[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*",
              "keyword":
                  "def defonce defprotocol defstruct defmulti defmethod defn- defn defmacro deftype defrecord"
            },
            end: "(\\[|#|\\d|\"|:|\\{|\\)|\\(|\$)",
            contains: <Mode>[
              Mode(
                  className: 'title',
                  begin:
                      "[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*",
                  relevance: 0,
                  excludeEnd: true,
                  endsParent: true),
              Mode(ref: '~contains~0'),
              Mode(ref: '~contains~1'),
              Mode(scope: 'character', variants: <Mode>[
                Mode(match: "\\\\o[0-3]?[0-7]{1,2}"),
                Mode(match: "\\\\u[0-9a-fA-F]{4}"),
                Mode(
                    match: "\\\\(newline|space|tab|formfeed|backspace|return)"),
                Mode(match: "\\\\\\S", relevance: 0)
              ]),
              Mode(
                  scope: 'regex',
                  begin: "#\"",
                  end: "\"",
                  contains: <Mode>[BACKSLASH_ESCAPE]),
              Mode(
                  scope: 'string',
                  begin: "\"",
                  end: "\"",
                  illegal: null,
                  contains: <Mode>[BACKSLASH_ESCAPE]),
              Mode(
                  scope: 'comment',
                  begin: ";",
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
                  relevance: 0),
              Mode(
                  className: 'symbol',
                  begin:
                      "[:]{1,2}[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*"),
              Mode(
                  begin:
                      "\\[|(#::?[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*)?\\{",
                  end: "[\\]\\}]",
                  relevance: 0,
                  contains: <Mode>[
                    Mode(ref: '~contains~0'),
                    Mode(ref: '~contains~1'),
                    Mode(ref: '~contains~1~contains~0~contains~3'),
                    Mode(ref: '~contains~1~contains~0~contains~4'),
                    Mode(ref: '~contains~1~contains~0~contains~5'),
                    Mode(ref: '~contains~1~contains~0~contains~6'),
                    Mode(ref: '~contains~1~contains~0~contains~7'),
                    Mode(ref: '~contains~1~contains~0~contains~8'),
                    Mode(scope: 'number', relevance: 0, variants: <Mode>[
                      Mode(match: "[-+]?0[xX][0-9a-fA-F]+N?"),
                      Mode(match: "[-+]?0[0-7]+N?"),
                      Mode(match: "[-+]?[1-9][0-9]?[rR][0-9a-zA-Z]+N?"),
                      Mode(match: "[-+]?[0-9]+\\/[0-9]+N?"),
                      Mode(
                          match:
                              "[-+]?[0-9]+((\\.[0-9]*([eE][+-]?[0-9]+)?M?)|([eE][+-]?[0-9]+M?|M))"),
                      Mode(match: "[-+]?([1-9][0-9]*|0)N?")
                    ]),
                    Mode(className: 'literal', begin: "\\b(true|false|nil)\\b"),
                    Mode(
                        begin:
                            "[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*",
                        relevance: 0)
                  ]),
              Mode(ref: '~contains~1~contains~0~contains~8~contains~8'),
              Mode(ref: '~contains~1~contains~0~contains~8~contains~9'),
              Mode(ref: '~contains~1~contains~0~contains~8~contains~10')
            ]),
        Mode(
          keywords: {
            "\$pattern":
                "[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*",
            "built_in":
                "def defonce defprotocol defstruct defmulti defmethod defn- defn defmacro deftype defrecord cond apply if-not if-let if not not= =|0 <|0 >|0 <=|0 >=|0 ==|0 +|0 /|0 *|0 -|0 rem quot neg? pos? delay? symbol? keyword? true? false? integer? empty? coll? list? set? ifn? fn? associative? sequential? sorted? counted? reversible? number? decimal? class? distinct? isa? float? rational? reduced? ratio? odd? even? char? seq? vector? string? map? nil? contains? zero? instance? not-every? not-any? libspec? -> ->> .. . inc compare do dotimes mapcat take remove take-while drop letfn drop-last take-last drop-while while intern condp case reduced cycle split-at split-with repeat replicate iterate range merge zipmap declare line-seq sort comparator sort-by dorun doall nthnext nthrest partition eval doseq await await-for let agent atom send send-off release-pending-sends add-watch mapv filterv remove-watch agent-error restart-agent set-error-handler error-handler set-error-mode! error-mode shutdown-agents quote var fn loop recur throw try monitor-enter monitor-exit macroexpand macroexpand-1 for dosync and or when when-not when-let comp juxt partial sequence memoize constantly complement identity assert peek pop doto proxy first rest cons cast coll last butlast sigs reify second ffirst fnext nfirst nnext meta with-meta ns in-ns create-ns import refer keys select-keys vals key val rseq name namespace promise into transient persistent! conj! assoc! dissoc! pop! disj! use class type num float double short byte boolean bigint biginteger bigdec print-method print-dup throw-if printf format load compile get-in update-in pr pr-on newline flush read slurp read-line subvec with-open memfn time re-find re-groups rand-int rand mod locking assert-valid-fdecl alias resolve ref deref refset swap! reset! set-validator! compare-and-set! alter-meta! reset-meta! commute get-validator alter ref-set ref-history-count ref-min-history ref-max-history ensure sync io! new next conj set! to-array future future-call into-array aset gen-class reduce map filter find empty hash-map hash-set sorted-map sorted-map-by sorted-set sorted-set-by vec vector seq flatten reverse assoc dissoc list disj get union difference intersection extend extend-type extend-protocol int nth delay count concat chunk chunk-buffer chunk-append chunk-first chunk-rest max min dec unchecked-inc-int unchecked-inc unchecked-dec-inc unchecked-dec unchecked-negate unchecked-add-int unchecked-add unchecked-subtract-int unchecked-subtract chunk-next chunk-cons chunked-seq? prn vary-meta lazy-seq spread list* str find-keyword keyword symbol gensym force rationalize"
          },
          className: 'name',
          begin: "[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*",
          relevance: 0,
          starts: Mode(ref: '~contains~1~contains~1~starts'),
        ),
        Mode(ref: '~contains~1~contains~1~starts')
      ]),
      '~contains~1~contains~0~contains~3':
          Mode(scope: 'character', variants: <Mode>[
        Mode(match: "\\\\o[0-3]?[0-7]{1,2}"),
        Mode(match: "\\\\u[0-9a-fA-F]{4}"),
        Mode(match: "\\\\(newline|space|tab|formfeed|backspace|return)"),
        Mode(match: "\\\\\\S", relevance: 0)
      ]),
      '~contains~1~contains~0~contains~4': Mode(
          scope: 'regex',
          begin: "#\"",
          end: "\"",
          contains: <Mode>[BACKSLASH_ESCAPE]),
      '~contains~1~contains~0~contains~5': Mode(
          scope: 'string',
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: <Mode>[BACKSLASH_ESCAPE]),
      '~contains~1~contains~0~contains~6': Mode(
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
      '~contains~1~contains~0~contains~7': Mode(
          className: 'symbol',
          begin:
              "[:]{1,2}[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*"),
      '~contains~1~contains~0~contains~8': Mode(
          begin:
              "\\[|(#::?[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*)?\\{",
          end: "[\\]\\}]",
          relevance: 0,
          contains: <Mode>[
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1'),
            Mode(ref: '~contains~1~contains~0~contains~3'),
            Mode(ref: '~contains~1~contains~0~contains~4'),
            Mode(ref: '~contains~1~contains~0~contains~5'),
            Mode(ref: '~contains~1~contains~0~contains~6'),
            Mode(ref: '~contains~1~contains~0~contains~7'),
            Mode(ref: '~contains~1~contains~0~contains~8'),
            Mode(scope: 'number', relevance: 0, variants: <Mode>[
              Mode(match: "[-+]?0[xX][0-9a-fA-F]+N?"),
              Mode(match: "[-+]?0[0-7]+N?"),
              Mode(match: "[-+]?[1-9][0-9]?[rR][0-9a-zA-Z]+N?"),
              Mode(match: "[-+]?[0-9]+\\/[0-9]+N?"),
              Mode(
                  match:
                      "[-+]?[0-9]+((\\.[0-9]*([eE][+-]?[0-9]+)?M?)|([eE][+-]?[0-9]+M?|M))"),
              Mode(match: "[-+]?([1-9][0-9]*|0)N?")
            ]),
            Mode(className: 'literal', begin: "\\b(true|false|nil)\\b"),
            Mode(
                begin:
                    "[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*",
                relevance: 0)
          ]),
      '~contains~1~contains~0~contains~8~contains~8':
          Mode(scope: 'number', relevance: 0, variants: <Mode>[
        Mode(match: "[-+]?0[xX][0-9a-fA-F]+N?"),
        Mode(match: "[-+]?0[0-7]+N?"),
        Mode(match: "[-+]?[1-9][0-9]?[rR][0-9a-zA-Z]+N?"),
        Mode(match: "[-+]?[0-9]+\\/[0-9]+N?"),
        Mode(
            match:
                "[-+]?[0-9]+((\\.[0-9]*([eE][+-]?[0-9]+)?M?)|([eE][+-]?[0-9]+M?|M))"),
        Mode(match: "[-+]?([1-9][0-9]*|0)N?")
      ]),
      '~contains~1~contains~0~contains~8~contains~9':
          Mode(className: 'literal', begin: "\\b(true|false|nil)\\b"),
      '~contains~1~contains~0~contains~8~contains~10': Mode(
          begin: "[#]?[a-zA-Z_\\-!.?+*=<>&'][a-zA-Z_\\-!.?+*=<>&'0-9/;:\$#]*",
          relevance: 0),
      '~contains~1~contains~1~starts':
          Mode(endsWithParent: true, relevance: 0, contains: <Mode>[
        Mode(ref: '~contains~0'),
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~1~contains~0~contains~3'),
        Mode(ref: '~contains~1~contains~0~contains~4'),
        Mode(ref: '~contains~1~contains~0~contains~5'),
        Mode(ref: '~contains~1~contains~0~contains~6'),
        Mode(ref: '~contains~1~contains~0~contains~7'),
        Mode(ref: '~contains~1~contains~0~contains~8'),
        Mode(ref: '~contains~1~contains~0~contains~8~contains~8'),
        Mode(ref: '~contains~1~contains~0~contains~8~contains~9'),
        Mode(ref: '~contains~1~contains~0~contains~8~contains~10')
      ])
    },
    name: "Clojure",
    aliases: ["clj", "edn"],
    illegal: "\\S",
    contains: <Mode>[
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      Mode(ref: '~contains~1~contains~0~contains~3'),
      Mode(ref: '~contains~1~contains~0~contains~4'),
      Mode(ref: '~contains~1~contains~0~contains~5'),
      Mode(ref: '~contains~1~contains~0~contains~6'),
      Mode(ref: '~contains~1~contains~0~contains~7'),
      Mode(ref: '~contains~1~contains~0~contains~8'),
      Mode(ref: '~contains~1~contains~0~contains~8~contains~8'),
      Mode(ref: '~contains~1~contains~0~contains~8~contains~9')
    ]);
