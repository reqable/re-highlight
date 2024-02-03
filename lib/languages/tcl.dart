// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langTcl = Mode(
    refs: {
      '~contains~3~variants~1~contains~0': Mode(
          className: 'number',
          variants: <Mode>[BINARY_NUMBER_MODE, C_NUMBER_MODE])
    },
    name: "Tcl",
    aliases: ["tk"],
    keywords: [
      "after",
      "append",
      "apply",
      "array",
      "auto_execok",
      "auto_import",
      "auto_load",
      "auto_mkindex",
      "auto_mkindex_old",
      "auto_qualify",
      "auto_reset",
      "bgerror",
      "binary",
      "break",
      "catch",
      "cd",
      "chan",
      "clock",
      "close",
      "concat",
      "continue",
      "dde",
      "dict",
      "encoding",
      "eof",
      "error",
      "eval",
      "exec",
      "exit",
      "expr",
      "fblocked",
      "fconfigure",
      "fcopy",
      "file",
      "fileevent",
      "filename",
      "flush",
      "for",
      "foreach",
      "format",
      "gets",
      "glob",
      "global",
      "history",
      "http",
      "if",
      "incr",
      "info",
      "interp",
      "join",
      "lappend|10",
      "lassign|10",
      "lindex|10",
      "linsert|10",
      "list",
      "llength|10",
      "load",
      "lrange|10",
      "lrepeat|10",
      "lreplace|10",
      "lreverse|10",
      "lsearch|10",
      "lset|10",
      "lsort|10",
      "mathfunc",
      "mathop",
      "memory",
      "msgcat",
      "namespace",
      "open",
      "package",
      "parray",
      "pid",
      "pkg::create",
      "pkg_mkIndex",
      "platform",
      "platform::shell",
      "proc",
      "puts",
      "pwd",
      "read",
      "refchan",
      "regexp",
      "registry",
      "regsub|10",
      "rename",
      "return",
      "safe",
      "scan",
      "seek",
      "set",
      "socket",
      "source",
      "split",
      "string",
      "subst",
      "switch",
      "tcl_endOfWord",
      "tcl_findLibrary",
      "tcl_startOfNextWord",
      "tcl_startOfPreviousWord",
      "tcl_wordBreakAfter",
      "tcl_wordBreakBefore",
      "tcltest",
      "tclvars",
      "tell",
      "time",
      "tm",
      "trace",
      "unknown",
      "unload",
      "unset",
      "update",
      "uplevel",
      "upvar",
      "variable",
      "vwait",
      "while"
    ],
    contains: <Mode>[
      Mode(scope: 'comment', begin: ";[ \\t]*#", end: "\$", contains: <Mode>[
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
      Mode(scope: 'comment', begin: "^[ \\t]*#", end: "\$", contains: <Mode>[
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
          beginKeywords: "proc",
          end: "[\\{]",
          excludeEnd: true,
          contains: <Mode>[
            Mode(
                className: 'title',
                begin: "[ \\t\\n\\r]+(::)?[a-zA-Z_]((::)?[a-zA-Z0-9_])*",
                end: "[ \\t\\n\\r]",
                endsWithParent: true,
                excludeEnd: true)
          ]),
      Mode(className: 'variable', variants: <Mode>[
        Mode(
            begin:
                "\\\$(?:::)?[a-zA-Z_][a-zA-Z0-9_]*(::[a-zA-Z_][a-zA-Z0-9_]*)*"),
        Mode(
            begin: "\\\$\\{(::)?[a-zA-Z_]((::)?[a-zA-Z0-9_])*",
            end: "\\}",
            contains: <Mode>[Mode(ref: '~contains~3~variants~1~contains~0')])
      ]),
      Mode(className: 'string', contains: <Mode>[
        BACKSLASH_ESCAPE
      ], variants: <Mode>[
        Mode(
            scope: 'string',
            begin: "\"",
            end: "\"",
            illegal: null,
            contains: <Mode>[BACKSLASH_ESCAPE])
      ]),
      Mode(ref: '~contains~3~variants~1~contains~0')
    ]);
