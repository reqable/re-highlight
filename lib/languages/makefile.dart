// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langMakefile = Mode(
    refs: {
      '~contains~1': Mode(className: 'variable', variants: <Mode>[
        Mode(
            begin: "\\\$\\([a-zA-Z_]\\w*\\)",
            contains: <Mode>[BACKSLASH_ESCAPE]),
        Mode(begin: "\\\$[@%<?\\^\\+\\*]")
      ])
    },
    name: "Makefile",
    aliases: ["mk", "mak", "make"],
    keywords: {
      "\$pattern": "[\\w-]+",
      "keyword":
          "define endef undefine ifdef ifndef ifeq ifneq else endif include -include sinclude override export unexport private vpath"
    },
    contains: <Mode>[
      HASH_COMMENT_MODE,
      Mode(ref: '~contains~1'),
      Mode(
          className: 'string',
          begin: "\"",
          end: "\"",
          contains: <Mode>[BACKSLASH_ESCAPE, Mode(ref: '~contains~1')]),
      Mode(
          className: 'variable',
          begin: "\\\$\\([\\w-]+\\s",
          end: "\\)",
          keywords: {
            "built_in":
                "subst patsubst strip findstring filter filter-out sort word wordlist firstword lastword dir notdir suffix basename addsuffix addprefix join wildcard realpath abspath error warning shell origin flavor foreach if or and call eval file value"
          },
          contains: <Mode>[
            Mode(ref: '~contains~1')
          ]),
      Mode(begin: "^[a-zA-Z_]\\w*\\s*(?=[:+?]?=)"),
      Mode(
          className: 'meta',
          begin: "^\\.PHONY:",
          end: "\$",
          keywords: {"\$pattern": "[\\.\\w]+", "keyword": ".PHONY"}),
      Mode(
          className: 'section',
          begin: "^[^\\s]+:",
          end: "\$",
          contains: <Mode>[Mode(ref: '~contains~1')])
    ]);
