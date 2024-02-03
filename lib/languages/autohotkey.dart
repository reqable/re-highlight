// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langAutohotkey = Mode(
    refs: {'~contains~0': Mode(begin: "`[\\s\\S]")},
    name: "AutoHotkey",
    caseInsensitive: true,
    aliases: ["ahk"],
    keywords: {
      "keyword":
          "Break Continue Critical Exit ExitApp Gosub Goto New OnExit Pause return SetBatchLines SetTimer Suspend Thread Throw Until ahk_id ahk_class ahk_pid ahk_exe ahk_group",
      "literal": "true false NOT AND OR",
      "built_in": "ComSpec Clipboard ClipboardAll ErrorLevel"
    },
    contains: <Mode>[
      Mode(ref: '~contains~0'),
      Mode(
          scope: 'string',
          begin: "\"",
          end: "\"",
          illegal: "\\n",
          contains: <Mode>[Mode(ref: '~contains~0')]),
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
      C_BLOCK_COMMENT_MODE,
      Mode(className: 'number', begin: "\\b\\d+(\\.\\d+)?", relevance: 0),
      Mode(className: 'variable', begin: "%[a-zA-Z0-9#_\$@]+%"),
      Mode(className: 'built_in', begin: "^\\s*\\w+\\s*(,|%)"),
      Mode(className: 'title', variants: <Mode>[
        Mode(begin: "^[^\\n\";]+::(?!=)"),
        Mode(begin: "^[^\\n\";]+:(?!=)", relevance: 0)
      ]),
      Mode(className: 'meta', begin: "^\\s*#\\w+", end: "\$", relevance: 0),
      Mode(className: 'built_in', begin: "A_[a-zA-Z0-9]+"),
      Mode(begin: ",\\s*,")
    ]);
