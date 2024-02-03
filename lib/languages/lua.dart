// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langLua = Mode(
    refs: {
      '~contains~0': Mode(
          scope: 'comment',
          begin: "--(?!\\[=*\\[)",
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
          ]),
      '~contains~1': Mode(
          scope: 'comment',
          begin: "--\\[=*\\[",
          end: "\\]=*\\]",
          contains: <Mode>[
            Mode(
                begin: "\\[=*\\[",
                end: "\\]=*\\]",
                contains: <Mode>[Mode(self: true)]),
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
      '~contains~1~contains~0': Mode(
          begin: "\\[=*\\[",
          end: "\\]=*\\]",
          contains: <Mode>[Mode(self: true)])
    },
    name: "Lua",
    keywords: {
      "\$pattern": "[a-zA-Z_]\\w*",
      "literal": "true false nil",
      "keyword":
          "and break do else elseif end for goto if in local not or repeat return then until while",
      "built_in":
          "_G _ENV _VERSION __index __newindex __mode __call __metatable __tostring __len __gc __add __sub __mul __div __mod __pow __concat __unm __eq __lt __le assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall arg self coroutine resume yield status wrap create running debug getupvalue debug sethook getmetatable gethook setmetatable setlocal traceback setfenv getinfo setupvalue getlocal getregistry getfenv io lines write close flush open output type read stderr stdin input stdout popen tmpfile math log max acos huge ldexp pi cos tanh pow deg tan cosh sinh random randomseed frexp ceil floor rad abs sqrt modf asin min mod fmod log10 atan2 exp sin atan os exit setlocale date getenv difftime remove time clock tmpname rename execute package preload loadlib loaded loaders cpath config path seeall string sub upper len gfind rep find match char dump gmatch reverse byte format gsub lower table setn insert getn foreachi maxn foreach concat sort remove"
    },
    contains: <Mode>[
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      Mode(
          className: 'function',
          beginKeywords: "function",
          end: "\\)",
          contains: <Mode>[
            Mode(
                scope: 'title',
                begin: "([_a-zA-Z]\\w*\\.)*([_a-zA-Z]\\w*:)?[_a-zA-Z]\\w*",
                relevance: 0),
            Mode(
                className: 'params',
                begin: "\\(",
                endsWithParent: true,
                contains: <Mode>[
                  Mode(ref: '~contains~0'),
                  Mode(ref: '~contains~1')
                ]),
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1')
          ]),
      C_NUMBER_MODE,
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      Mode(
          className: 'string',
          begin: "\\[=*\\[",
          end: "\\]=*\\]",
          contains: <Mode>[Mode(ref: '~contains~1~contains~0')],
          relevance: 5)
    ]);
