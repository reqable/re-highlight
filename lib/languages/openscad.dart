// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langOpenscad = Mode(
    refs: {
      '~contains~2': Mode(
          className: 'number',
          begin: "\\b\\d+(\\.\\d+)?(e-?\\d+)?",
          relevance: 0),
      '~contains~4': Mode(
          scope: 'string',
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: <Mode>[BACKSLASH_ESCAPE]),
      '~contains~5':
          Mode(className: 'keyword', begin: "\\\$(f[asn]|t|vp[rtd]|children)")
    },
    name: "OpenSCAD",
    aliases: ["scad"],
    keywords: {
      "keyword": "function module include use for intersection_for if else \\%",
      "literal": "false true PI undef",
      "built_in":
          "circle square polygon text sphere cube cylinder polyhedron translate rotate scale resize mirror multmatrix color offset hull minkowski union difference intersection abs sign sin cos tan acos asin atan atan2 floor round ceil ln log pow sqrt exp rands min max concat lookup str chr search version version_num norm cross parent_module echo import import_dxf dxf_linear_extrude linear_extrude rotate_extrude surface projection render children dxf_cross dxf_dim let assign"
    },
    contains: <Mode>[
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(ref: '~contains~2'),
      Mode(
          className: 'meta',
          keywords: {"keyword": "include use"},
          begin: "include|use <",
          end: ">"),
      Mode(ref: '~contains~4'),
      Mode(ref: '~contains~5'),
      Mode(begin: "[*!#%]", relevance: 0),
      Mode(
          className: 'function',
          beginKeywords: "module function",
          end: "=|\\{",
          contains: <Mode>[
            Mode(
                className: 'params',
                begin: "\\(",
                end: "\\)",
                contains: <Mode>[
                  Mode(self: true),
                  Mode(ref: '~contains~2'),
                  Mode(ref: '~contains~4'),
                  Mode(ref: '~contains~5'),
                  Mode(className: 'literal', begin: "false|true|PI|undef")
                ]),
            UNDERSCORE_TITLE_MODE
          ])
    ]);
