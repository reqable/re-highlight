// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langVbnet = Mode(
    refs: {
      '~contains~6':
          Mode(scope: 'comment', begin: null, end: "\$", contains: <Mode>[
        Mode(
            scope: 'doctag',
            begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
            end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
            excludeBegin: true,
            relevance: 0),
        Mode(
            begin:
                "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
      ], variants: <Mode>[
        Mode(begin: "'"),
        Mode(begin: "([\\t ]|^)REM(?=\\s)")
      ])
    },
    name: "Visual Basic .NET",
    aliases: ["vb"],
    caseInsensitive: true,
    classNameAliases: {"label": "symbol"},
    keywords: {
      "keyword":
          "addhandler alias aggregate ansi as async assembly auto binary by byref byval call case catch class compare const continue custom declare default delegate dim distinct do each equals else elseif end enum erase error event exit explicit finally for friend from function get global goto group handles if implements imports in inherits interface into iterator join key let lib loop me mid module mustinherit mustoverride mybase myclass namespace narrowing new next notinheritable notoverridable of off on operator option optional order overloads overridable overrides paramarray partial preserve private property protected public raiseevent readonly redim removehandler resume return select set shadows shared skip static step stop structure strict sub synclock take text then throw to try unicode until using when where while widening with withevents writeonly yield",
      "built_in":
          "addressof and andalso await directcast gettype getxmlnamespace is isfalse isnot istrue like mod nameof new not or orelse trycast typeof xor cbool cbyte cchar cdate cdbl cdec cint clng cobj csbyte cshort csng cstr cuint culng cushort",
      "type":
          "boolean byte char date decimal double integer long object sbyte short single string uinteger ulong ushort",
      "literal": "true false nothing"
    },
    illegal: "//|\\{|\\}|endif|gosub|variant|wend|^\\\$ ",
    contains: <Mode>[
      Mode(className: 'string', begin: "\"(\"\"|[^/n])\"C\\b"),
      Mode(
          className: 'string',
          begin: "\"",
          end: "\"",
          illegal: "\\n",
          contains: <Mode>[Mode(begin: "\"\"")]),
      Mode(className: 'literal', variants: <Mode>[
        Mode(
            begin:
                "# *(?:\\d{4}-\\d{1,2}-\\d{1,2}|\\d{1,2}\\/\\d{1,2}\\/\\d{4}) *#"),
        Mode(begin: "# *\\d{1,2}(:\\d{1,2}){1,2} *#"),
        Mode(begin: "# *(\\d|1[012])(:\\d+){0,2} *(AM|PM) *#"),
        Mode(
            begin:
                "# *(?:\\d{4}-\\d{1,2}-\\d{1,2}|\\d{1,2}\\/\\d{1,2}\\/\\d{4}) +(?:(\\d|1[012])(:\\d+){0,2} *(AM|PM)|\\d{1,2}(:\\d{1,2}){1,2}) *#")
      ]),
      Mode(className: 'number', relevance: 0, variants: <Mode>[
        Mode(
            begin:
                "\\b\\d[\\d_]*((\\.[\\d_]+(E[+-]?[\\d_]+)?)|(E[+-]?[\\d_]+))[RFD@!#]?"),
        Mode(begin: "\\b\\d[\\d_]*((U?[SIL])|[%&])?"),
        Mode(begin: "&H[\\dA-F_]+((U?[SIL])|[%&])?"),
        Mode(begin: "&O[0-7_]+((U?[SIL])|[%&])?"),
        Mode(begin: "&B[01_]+((U?[SIL])|[%&])?")
      ]),
      Mode(className: 'label', begin: "^\\w+:"),
      Mode(scope: 'comment', begin: "'''", end: "\$", contains: <Mode>[
        Mode(className: 'doctag', begin: "<\\/?", end: ">"),
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
      Mode(ref: '~contains~6'),
      Mode(
          className: 'meta',
          begin:
              "[\\t ]*#(const|disable|else|elseif|enable|end|externalsource|if|region)\\b",
          end: "\$",
          keywords: {
            "keyword":
                "const disable else elseif enable end externalsource if region then"
          },
          contains: <Mode>[
            Mode(ref: '~contains~6')
          ])
    ]);
