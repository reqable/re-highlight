// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langMercury = Mode(
    refs: {},
    name: "Mercury",
    aliases: ["m", "moo"],
    keywords: {
      "keyword":
          "module use_module import_module include_module end_module initialise mutable initialize finalize finalise interface implementation pred mode func type inst solver any_pred any_func is semidet det nondet multi erroneous failure cc_nondet cc_multi typeclass instance where pragma promise external trace atomic or_else require_complete_switch require_det require_semidet require_multi require_nondet require_cc_multi require_cc_nondet require_erroneous require_failure",
      "meta":
          "inline no_inline type_spec source_file fact_table obsolete memo loop_check minimal_model terminates does_not_terminate check_termination promise_equivalent_clauses foreign_proc foreign_decl foreign_code foreign_type foreign_import_module foreign_export_enum foreign_export foreign_enum may_call_mercury will_not_call_mercury thread_safe not_thread_safe maybe_thread_safe promise_pure promise_semipure tabled_for_io local untrailed trailed attach_to_io_state can_pass_as_mercury_type stable will_not_throw_exception may_modify_trail will_not_modify_trail may_duplicate may_not_duplicate affects_liveness does_not_affect_liveness doesnt_affect_liveness no_sharing unknown_sharing sharing",
      "built_in":
          "some all not if then else true fail false try catch catch_any semidet_true semidet_false semidet_fail impure_true impure semipure"
    },
    contains: <Mode>[
      Mode(className: 'built_in', variants: <Mode>[
        Mode(begin: "<=>"),
        Mode(begin: "<=", relevance: 0),
        Mode(begin: "=>", relevance: 0),
        Mode(begin: "/\\\\"),
        Mode(begin: "\\\\/")
      ]),
      Mode(className: 'built_in', variants: <Mode>[
        Mode(begin: ":-\\|-->"),
        Mode(begin: "=", relevance: 0)
      ]),
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
      C_BLOCK_COMMENT_MODE,
      Mode(className: 'number', begin: "0'.\\|0[box][0-9a-fA-F]*"),
      NUMBER_MODE,
      Mode(
          scope: 'string',
          begin: "'",
          end: "'",
          illegal: "\\n",
          contains: <Mode>[BACKSLASH_ESCAPE],
          relevance: 0),
      Mode(
          scope: 'string',
          begin: "\"",
          end: "\"",
          illegal: "\\n",
          contains: <Mode>[
            BACKSLASH_ESCAPE,
            Mode(
                className: 'subst',
                begin:
                    "\\\\[abfnrtv]\\|\\\\x[0-9a-fA-F]*\\\\\\|%[-+# *.0-9]*[dioxXucsfeEgGp]",
                relevance: 0)
          ],
          relevance: 0),
      Mode(begin: ":-"),
      Mode(begin: "\\.\$")
    ]);
