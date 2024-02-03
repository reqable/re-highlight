// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langTwig = Mode(
    refs: {
      '~contains~1~contains~1~contains~0~contains~0': Mode(
          scope: 'string',
          variants: <Mode>[
            Mode(begin: "'", end: "'"),
            Mode(begin: "\"", end: "\"")
          ]),
      '~contains~1~contains~1~contains~0~contains~1':
          Mode(scope: 'number', match: "\\d+"),
      '~contains~1~contains~0': Mode(
          match: "\\|(?=[A-Za-z_]+:?)",
          beginScope: 'punctuation',
          relevance: 0,
          contains: <Mode>[
            Mode(match: "[A-Za-z_]+:?", keywords: [
              "abs",
              "abbr_class",
              "abbr_method",
              "batch",
              "capitalize",
              "column",
              "convert_encoding",
              "country_name",
              "currency_name",
              "currency_symbol",
              "data_uri",
              "date",
              "date_modify",
              "default",
              "escape",
              "file_excerpt",
              "file_link",
              "file_relative",
              "filter",
              "first",
              "format",
              "format_args",
              "format_args_as_text",
              "format_currency",
              "format_date",
              "format_datetime",
              "format_file",
              "format_file_from_text",
              "format_number",
              "format_time",
              "html_to_markdown",
              "humanize",
              "inky_to_html",
              "inline_css",
              "join",
              "json_encode",
              "keys",
              "language_name",
              "last",
              "length",
              "locale_name",
              "lower",
              "map",
              "markdown",
              "markdown_to_html",
              "merge",
              "nl2br",
              "number_format",
              "raw",
              "reduce",
              "replace",
              "reverse",
              "round",
              "slice",
              "slug",
              "sort",
              "spaceless",
              "split",
              "striptags",
              "timezone_name",
              "title",
              "trans",
              "transchoice",
              "trim",
              "u|0",
              "upper",
              "url_encode",
              "yaml_dump",
              "yaml_encode"
            ])
          ]),
      '~contains~1~contains~1': Mode(
          beginKeywords:
              "absolute_url asset|0 asset_version attribute block constant controller|0 country_timezones csrf_token cycle date dump expression form|0 form_end form_errors form_help form_label form_rest form_row form_start form_widget html_classes include is_granted logout_path logout_url max min parent path|0 random range relative_path render render_esi source template_from_string url|0",
          keywords: {
            "name": [
              "absolute_url",
              "asset|0",
              "asset_version",
              "attribute",
              "block",
              "constant",
              "controller|0",
              "country_timezones",
              "csrf_token",
              "cycle",
              "date",
              "dump",
              "expression",
              "form|0",
              "form_end",
              "form_errors",
              "form_help",
              "form_label",
              "form_rest",
              "form_row",
              "form_start",
              "form_widget",
              "html_classes",
              "include",
              "is_granted",
              "logout_path",
              "logout_url",
              "max",
              "min",
              "parent",
              "path|0",
              "random",
              "range",
              "relative_path",
              "render",
              "render_esi",
              "source",
              "template_from_string",
              "url|0"
            ]
          },
          relevance: 0,
          contains: <Mode>[
            Mode(
                begin: "\\(",
                end: "\\)",
                excludeBegin: true,
                excludeEnd: true,
                contains: <Mode>[
                  Mode(scope: 'string', variants: <Mode>[
                    Mode(begin: "'", end: "'"),
                    Mode(begin: "\"", end: "\"")
                  ]),
                  Mode(scope: 'number', match: "\\d+")
                ])
          ])
    },
    name: "Twig",
    aliases: ["craftcms"],
    caseInsensitive: true,
    subLanguage: "xml",
    contains: <Mode>[
      Mode(scope: 'comment', begin: "\\{#", end: "#\\}", contains: <Mode>[
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
          beginScope: <int, String>{
            1: 'template-tag',
            3: 'name',
          },
          relevance: 2,
          endScope: 'template-tag',
          begin: [
            "\\{%",
            "\\s*",
            "(?:apply|autoescape|block|cache|deprecated|do|embed|extends|filter|flush|for|form_theme|from|if|import|include|macro|sandbox|set|stopwatch|trans|trans_default_domain|transchoice|use|verbatim|with|endapply|endautoescape|endblock|endcache|enddeprecated|enddo|endembed|endextends|endfilter|endflush|endfor|endform_theme|endfrom|endif|endimport|endinclude|endmacro|endsandbox|endset|endstopwatch|endtrans|endtrans_default_domain|endtranschoice|enduse|endverbatim|endwith)"
          ],
          end: "%\\}",
          keywords: "in",
          contains: <Mode>[
            Mode(ref: '~contains~1~contains~0'),
            Mode(ref: '~contains~1~contains~1'),
            Mode(ref: '~contains~1~contains~1~contains~0~contains~0'),
            Mode(ref: '~contains~1~contains~1~contains~0~contains~1')
          ]),
      Mode(
          beginScope: <int, String>{
            1: 'template-tag',
            3: 'name',
          },
          relevance: 1,
          endScope: 'template-tag',
          begin: ["\\{%", "\\s*", "(?:[a-z_]+)"],
          end: "%\\}",
          keywords: "in",
          contains: <Mode>[
            Mode(ref: '~contains~1~contains~0'),
            Mode(ref: '~contains~1~contains~1'),
            Mode(ref: '~contains~1~contains~1~contains~0~contains~0'),
            Mode(ref: '~contains~1~contains~1~contains~0~contains~1')
          ]),
      Mode(
          className: 'template-variable',
          begin: "\\{\\{",
          end: "\\}\\}",
          contains: <Mode>[
            Mode(self: true),
            Mode(ref: '~contains~1~contains~0'),
            Mode(ref: '~contains~1~contains~1'),
            Mode(ref: '~contains~1~contains~1~contains~0~contains~0'),
            Mode(ref: '~contains~1~contains~1~contains~0~contains~1')
          ])
    ]);
