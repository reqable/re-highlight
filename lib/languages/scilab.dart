// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langScilab = Mode(
    refs: {
      '~contains~2~contains~1': Mode(
          className: 'string',
          begin: "'|\"",
          end: "'|\"",
          contains: <Mode>[BACKSLASH_ESCAPE, Mode(begin: "''")])
    },
    name: "Scilab",
    aliases: ["sci"],
    keywords: {
      "\$pattern": "%?\\w+",
      "keyword":
          "abort break case clear catch continue do elseif else endfunction end for function global if pause return resume select try then while",
      "literal": "%f %F %t %T %pi %eps %inf %nan %e %i %z %s",
      "built_in":
          "abs and acos asin atan ceil cd chdir clearglobal cosh cos cumprod deff disp error exec execstr exists exp eye gettext floor fprintf fread fsolve imag isdef isempty isinfisnan isvector lasterror length load linspace list listfiles log10 log2 log max min msprintf mclose mopen ones or pathconvert poly printf prod pwd rand real round sinh sin size gsort sprintf sqrt strcat strcmps tring sum system tanh tan type typename warning zeros matrix"
    },
    illegal: "(\"|#|/\\*|\\s+/\\w+)",
    contains: <Mode>[
      Mode(
          className: 'function',
          beginKeywords: "function",
          end: "\$",
          contains: <Mode>[
            UNDERSCORE_TITLE_MODE,
            Mode(className: 'params', begin: "\\(", end: "\\)")
          ]),
      Mode(begin: "[a-zA-Z_][a-zA-Z_0-9]*[\\.']+", relevance: 0),
      Mode(
          begin: "\\[",
          end: "\\][\\.']*",
          relevance: 0,
          contains: <Mode>[C_NUMBER_MODE, Mode(ref: '~contains~2~contains~1')]),
      Mode(scope: 'comment', begin: "//", end: "\$", contains: <Mode>[
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
      C_NUMBER_MODE,
      Mode(ref: '~contains~2~contains~1')
    ]);
