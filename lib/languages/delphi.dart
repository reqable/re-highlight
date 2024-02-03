// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langDelphi = Mode(
    refs: {
      '~contains~0': Mode(
          className: 'string',
          begin: "'",
          end: "'",
          contains: <Mode>[Mode(begin: "''")]),
      '~contains~1': Mode(className: 'string', begin: "(#\\d+)+"),
      '~contains~5~contains~1~contains~2': Mode(
          className: 'meta',
          variants: <Mode>[
            Mode(begin: "\\{\\\$", end: "\\}"),
            Mode(begin: "\\(\\*\\\$", end: "\\*\\)")
          ]),
      '~contains~5~contains~1~contains~4': Mode(
          scope: 'comment',
          begin: "\\{",
          end: "\\}",
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
      '~contains~5~contains~1~contains~5': Mode(
          scope: 'comment',
          begin: "\\(\\*",
          end: "\\*\\)",
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
          relevance: 10)
    },
    name: "Delphi",
    aliases: ["dpr", "dfm", "pas", "pascal"],
    caseInsensitive: true,
    keywords: [
      "exports",
      "register",
      "file",
      "shl",
      "array",
      "record",
      "property",
      "for",
      "mod",
      "while",
      "set",
      "ally",
      "label",
      "uses",
      "raise",
      "not",
      "stored",
      "class",
      "safecall",
      "var",
      "interface",
      "or",
      "private",
      "static",
      "exit",
      "index",
      "inherited",
      "to",
      "else",
      "stdcall",
      "override",
      "shr",
      "asm",
      "far",
      "resourcestring",
      "finalization",
      "packed",
      "virtual",
      "out",
      "and",
      "protected",
      "library",
      "do",
      "xorwrite",
      "goto",
      "near",
      "function",
      "end",
      "div",
      "overload",
      "object",
      "unit",
      "begin",
      "string",
      "on",
      "inline",
      "repeat",
      "until",
      "destructor",
      "write",
      "message",
      "program",
      "with",
      "read",
      "initialization",
      "except",
      "default",
      "nil",
      "if",
      "case",
      "cdecl",
      "in",
      "downto",
      "threadvar",
      "of",
      "try",
      "pascal",
      "const",
      "external",
      "constructor",
      "type",
      "public",
      "then",
      "implementation",
      "finally",
      "published",
      "procedure",
      "absolute",
      "reintroduce",
      "operator",
      "as",
      "is",
      "abstract",
      "alias",
      "assembler",
      "bitpacked",
      "break",
      "continue",
      "cppdecl",
      "cvar",
      "enumerator",
      "experimental",
      "platform",
      "deprecated",
      "unimplemented",
      "dynamic",
      "export",
      "far16",
      "forward",
      "generic",
      "helper",
      "implements",
      "interrupt",
      "iochecks",
      "local",
      "name",
      "nodefault",
      "noreturn",
      "nostackframe",
      "oldfpccall",
      "otherwise",
      "saveregisters",
      "softfloat",
      "specialize",
      "strict",
      "unaligned",
      "varargs"
    ],
    illegal: "\"|\\\$[G-Zg-z]|\\/\\*|<\\/|\\|",
    contains: <Mode>[
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      NUMBER_MODE,
      Mode(className: 'number', relevance: 0, variants: <Mode>[
        Mode(begin: "\\\$[0-9A-Fa-f]+"),
        Mode(begin: "&[0-7]+"),
        Mode(begin: "%[01]+")
      ]),
      Mode(
          begin: "[a-zA-Z]\\w*\\s*=\\s*class\\s*\\(",
          returnBegin: true,
          contains: <Mode>[TITLE_MODE]),
      Mode(
          className: 'function',
          beginKeywords: "function constructor destructor procedure",
          end: "[:;]",
          keywords: "function constructor|10 destructor|10 procedure|10",
          contains: <Mode>[
            TITLE_MODE,
            Mode(className: 'params', begin: "\\(", end: "\\)", keywords: [
              "exports",
              "register",
              "file",
              "shl",
              "array",
              "record",
              "property",
              "for",
              "mod",
              "while",
              "set",
              "ally",
              "label",
              "uses",
              "raise",
              "not",
              "stored",
              "class",
              "safecall",
              "var",
              "interface",
              "or",
              "private",
              "static",
              "exit",
              "index",
              "inherited",
              "to",
              "else",
              "stdcall",
              "override",
              "shr",
              "asm",
              "far",
              "resourcestring",
              "finalization",
              "packed",
              "virtual",
              "out",
              "and",
              "protected",
              "library",
              "do",
              "xorwrite",
              "goto",
              "near",
              "function",
              "end",
              "div",
              "overload",
              "object",
              "unit",
              "begin",
              "string",
              "on",
              "inline",
              "repeat",
              "until",
              "destructor",
              "write",
              "message",
              "program",
              "with",
              "read",
              "initialization",
              "except",
              "default",
              "nil",
              "if",
              "case",
              "cdecl",
              "in",
              "downto",
              "threadvar",
              "of",
              "try",
              "pascal",
              "const",
              "external",
              "constructor",
              "type",
              "public",
              "then",
              "implementation",
              "finally",
              "published",
              "procedure",
              "absolute",
              "reintroduce",
              "operator",
              "as",
              "is",
              "abstract",
              "alias",
              "assembler",
              "bitpacked",
              "break",
              "continue",
              "cppdecl",
              "cvar",
              "enumerator",
              "experimental",
              "platform",
              "deprecated",
              "unimplemented",
              "dynamic",
              "export",
              "far16",
              "forward",
              "generic",
              "helper",
              "implements",
              "interrupt",
              "iochecks",
              "local",
              "name",
              "nodefault",
              "noreturn",
              "nostackframe",
              "oldfpccall",
              "otherwise",
              "saveregisters",
              "softfloat",
              "specialize",
              "strict",
              "unaligned",
              "varargs"
            ], contains: <Mode>[
              Mode(ref: '~contains~0'),
              Mode(ref: '~contains~1'),
              Mode(ref: '~contains~5~contains~1~contains~2'),
              C_LINE_COMMENT_MODE,
              Mode(ref: '~contains~5~contains~1~contains~4'),
              Mode(ref: '~contains~5~contains~1~contains~5')
            ]),
            Mode(ref: '~contains~5~contains~1~contains~2'),
            C_LINE_COMMENT_MODE,
            Mode(ref: '~contains~5~contains~1~contains~4'),
            Mode(ref: '~contains~5~contains~1~contains~5')
          ]),
      Mode(ref: '~contains~5~contains~1~contains~2'),
      C_LINE_COMMENT_MODE,
      Mode(ref: '~contains~5~contains~1~contains~4'),
      Mode(ref: '~contains~5~contains~1~contains~5')
    ]);