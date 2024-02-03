// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langHaxe = Mode(
    refs: {},
    name: "Haxe",
    aliases: ["hx"],
    keywords: {
      "keyword":
          "abstract break case cast catch continue default do dynamic else enum extern final for function here if import in inline is macro never new override package private get set public return static super switch this throw trace try typedef untyped using var while Int Float String Bool Dynamic Void Array ",
      "built_in": "trace this",
      "literal": "true false null _"
    },
    contains: <Mode>[
      Mode(className: 'string', begin: "'", end: "'", contains: <Mode>[
        BACKSLASH_ESCAPE,
        Mode(className: 'subst', begin: "\\\$\\{", end: "\\}"),
        Mode(className: 'subst', begin: "\\\$", end: "\\W\\}")
      ]),
      QUOTE_STRING_MODE,
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(
          className: 'number',
          begin:
              "(-?)(\\b0[xX][a-fA-F0-9_]+|(\\b\\d+(\\.[\\d_]*)?|\\.[\\d_]+)(([eE][-+]?\\d+)|i32|u32|i64|f64)?)",
          relevance: 0),
      Mode(className: 'variable', begin: "\\\$[a-zA-Z_\$][a-zA-Z0-9_\$]*"),
      Mode(className: 'meta', begin: "@:?", end: "\\(|\$", excludeEnd: true),
      Mode(
          className: 'meta',
          begin: "#",
          end: "\$",
          keywords: {"keyword": "if else elseif end error"}),
      Mode(
          className: 'type',
          begin: ":[ \\t]*",
          end: "[^A-Za-z0-9_ \\t\\->]",
          excludeBegin: true,
          excludeEnd: true,
          relevance: 0),
      Mode(
          className: 'type',
          begin: ":[ \\t]*",
          end: "\\W",
          excludeBegin: true,
          excludeEnd: true),
      Mode(
          className: 'type',
          begin: "new *",
          end: "\\W",
          excludeBegin: true,
          excludeEnd: true),
      Mode(
          className: 'title.class',
          beginKeywords: "enum",
          end: "\\{",
          contains: <Mode>[TITLE_MODE]),
      Mode(
          className: 'title.class',
          begin: "\\babstract\\b(?=\\s*[a-zA-Z]\\w*\\s*\\()",
          end: "[\\{\$]",
          contains: <Mode>[
            Mode(
                className: 'type',
                begin: "\\(",
                end: "\\)",
                excludeBegin: true,
                excludeEnd: true),
            Mode(
                className: 'type',
                begin: "from +",
                end: "\\W",
                excludeBegin: true,
                excludeEnd: true),
            Mode(
                className: 'type',
                begin: "to +",
                end: "\\W",
                excludeBegin: true,
                excludeEnd: true),
            TITLE_MODE
          ],
          keywords: {
            "keyword": "abstract from to"
          }),
      Mode(
          className: 'title.class',
          begin: "\\b(class|interface) +",
          end: "[\\{\$]",
          excludeEnd: true,
          keywords: "class interface",
          contains: <Mode>[
            Mode(
                className: 'keyword',
                begin: "\\b(extends|implements) +",
                keywords: "extends implements",
                contains: <Mode>[
                  Mode(className: 'type', begin: "[a-zA-Z]\\w*", relevance: 0)
                ]),
            TITLE_MODE
          ]),
      Mode(
          className: 'title.function',
          beginKeywords: "function",
          end: "\\(",
          excludeEnd: true,
          illegal: "\\S",
          contains: <Mode>[TITLE_MODE])
    ],
    illegal: "<\\/");
