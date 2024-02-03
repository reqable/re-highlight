// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langQml = Mode(
    refs: {},
    name: "QML",
    aliases: ["qt"],
    caseInsensitive: false,
    keywords: {
      "keyword":
          "in of on if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const export super debugger as async await import",
      "literal": "true false null undefined NaN Infinity",
      "built_in":
          "eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document Symbol Set Map WeakSet WeakMap Proxy Reflect Behavior bool color coordinate date double enumeration font geocircle georectangle geoshape int list matrix4x4 parent point quaternion real rect size string url variant vector2d vector3d vector4d Promise"
    },
    contains: <Mode>[
      Mode(className: 'meta', begin: "^\\s*['\"]use (strict|asm)['\"]"),
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      Mode(className: 'string', begin: "`", end: "`", contains: <Mode>[
        BACKSLASH_ESCAPE,
        Mode(className: 'subst', begin: "\\\$\\{", end: "\\}")
      ]),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(
          className: 'number',
          variants: <Mode>[
            Mode(begin: "\\b(0[bB][01]+)"),
            Mode(begin: "\\b(0[oO][0-7]+)"),
            Mode(
                begin:
                    "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)")
          ],
          relevance: 0),
      Mode(
          begin:
              "(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||~|\\b(case|return|throw)\\b)\\s*",
          keywords: "return throw case",
          contains: <Mode>[
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            REGEXP_MODE,
            Mode(
                begin: "<",
                end: ">\\s*[);\\]]",
                relevance: 0,
                subLanguage: "xml")
          ],
          relevance: 0),
      Mode(
          className: 'keyword',
          begin: "\\bsignal\\b",
          starts: Mode(
              className: 'string',
              end: "(\\(|:|=|;|,|//|/\\*|\$)",
              returnEnd: true)),
      Mode(
          className: 'keyword',
          begin: "\\bproperty\\b",
          starts: Mode(
              className: 'string',
              end: "(:|=|;|,|//|/\\*|\$)",
              returnEnd: true)),
      Mode(
          className: 'function',
          beginKeywords: "function",
          end: "\\{",
          excludeEnd: true,
          contains: <Mode>[
            Mode(
                scope: 'title',
                begin: "[A-Za-z\$_][0-9A-Za-z\$_]*",
                relevance: 0),
            Mode(
                className: 'params',
                begin: "\\(",
                end: "\\)",
                excludeBegin: true,
                excludeEnd: true,
                contains: <Mode>[C_LINE_COMMENT_MODE, C_BLOCK_COMMENT_MODE])
          ],
          illegal: "\\[|%"),
      Mode(begin: "\\.[a-zA-Z]\\w*", relevance: 0),
      Mode(
          className: 'attribute',
          begin: "\\bid\\s*:",
          starts: Mode(
              className: 'string',
              end: "[a-zA-Z_][a-zA-Z0-9\\._]*",
              returnEnd: false)),
      Mode(
          begin: "[a-zA-Z_][a-zA-Z0-9\\._]*\\s*:",
          returnBegin: true,
          contains: <Mode>[
            Mode(
                className: 'attribute',
                begin: "[a-zA-Z_][a-zA-Z0-9\\._]*",
                end: "\\s*:",
                excludeEnd: true,
                relevance: 0)
          ],
          relevance: 0),
      Mode(
          begin: "[a-zA-Z_][a-zA-Z0-9\\._]*\\s*\\{",
          end: "\\{",
          returnBegin: true,
          relevance: 0,
          contains: <Mode>[
            Mode(
                scope: 'title',
                begin: "[a-zA-Z_][a-zA-Z0-9\\._]*",
                relevance: 0)
          ])
    ],
    illegal: "#");
