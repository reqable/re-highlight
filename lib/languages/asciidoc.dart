// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langAsciidoc = Mode(
    refs: {},
    name: "AsciiDoc",
    aliases: ["adoc"],
    contains: <Mode>[
      Mode(
          scope: 'comment',
          begin: "^/{4,}\\n",
          end: "\\n/{4,}\$",
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
          relevance: 10),
      Mode(
          scope: 'comment',
          begin: "^//",
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
      Mode(className: 'title', begin: "^\\.\\w.*\$"),
      Mode(begin: "^[=\\*]{4,}\\n", end: "\\n^[=\\*]{4,}\$", relevance: 10),
      Mode(className: 'section', relevance: 10, variants: <Mode>[
        Mode(begin: "^(={1,6})[ \t].+?([ \t]\\1)?\$"),
        Mode(begin: "^[^\\[\\]\\n]+?\\n[=\\-~\\^\\+]{2,}\$")
      ]),
      Mode(
          className: 'meta',
          begin: "^:.+?:",
          end: "\\s",
          excludeEnd: true,
          relevance: 10),
      Mode(className: 'meta', begin: "^\\[.+?\\]\$", relevance: 0),
      Mode(
          className: 'quote',
          begin: "^_{4,}\\n",
          end: "\\n_{4,}\$",
          relevance: 10),
      Mode(
          className: 'code',
          begin: "^[\\-\\.]{4,}\\n",
          end: "\\n[\\-\\.]{4,}\$",
          relevance: 10),
      Mode(
          begin: "^\\+{4,}\\n",
          end: "\\n\\+{4,}\$",
          contains: <Mode>[
            Mode(begin: "<", end: ">", subLanguage: "xml", relevance: 0)
          ],
          relevance: 10),
      Mode(className: 'bullet', begin: "^(\\*+|-+|\\.+|[^\\n]+?::)\\s+"),
      Mode(
          className: 'symbol',
          begin: "^(NOTE|TIP|IMPORTANT|WARNING|CAUTION):\\s+",
          relevance: 10),
      Mode(begin: "\\\\[*_`]"),
      Mode(begin: "\\\\\\\\\\*{2}[^\\n]*?\\*{2}"),
      Mode(begin: "\\\\\\\\_{2}[^\\n]*_{2}"),
      Mode(begin: "\\\\\\\\`{2}[^\\n]*`{2}"),
      Mode(begin: "[:;}][*_`](?![*_`])"),
      Mode(className: 'strong', begin: "\\*{2}([^\\n]+?)\\*{2}"),
      Mode(
          className: 'strong',
          begin:
              "\\*\\*((\\*(?!\\*)|\\\\[^\\n]|[^*\\n\\\\])+\\n)+(\\*(?!\\*)|\\\\[^\\n]|[^*\\n\\\\])*\\*\\*",
          relevance: 0),
      Mode(className: 'strong', begin: "\\B\\*(\\S|\\S[^\\n]*?\\S)\\*(?!\\w)"),
      Mode(className: 'strong', begin: "\\*[^\\s]([^\\n]+\\n)+([^\\n]+)\\*"),
      Mode(className: 'emphasis', begin: "_{2}([^\\n]+?)_{2}"),
      Mode(
          className: 'emphasis',
          begin:
              "__((_(?!_)|\\\\[^\\n]|[^_\\n\\\\])+\\n)+(_(?!_)|\\\\[^\\n]|[^_\\n\\\\])*__",
          relevance: 0),
      Mode(className: 'emphasis', begin: "\\b_(\\S|\\S[^\\n]*?\\S)_(?!\\w)"),
      Mode(className: 'emphasis', begin: "_[^\\s]([^\\n]+\\n)+([^\\n]+)_"),
      Mode(
          className: 'emphasis',
          begin: "\\B'(?!['\\s])",
          end: "(\\n{2}|')",
          contains: <Mode>[Mode(begin: "\\\\'\\w", relevance: 0)],
          relevance: 0),
      Mode(
          className: 'string',
          variants: <Mode>[Mode(begin: "``.+?''"), Mode(begin: "`.+?'")]),
      Mode(className: 'code', begin: "`{2}", end: "(\\n{2}|`{2})"),
      Mode(className: 'code', begin: "(`.+?`|\\+.+?\\+)", relevance: 0),
      Mode(className: 'code', begin: "^[ \\t]", end: "\$", relevance: 0),
      Mode(begin: "^'{3,}[ \\t]*\$", relevance: 10),
      Mode(
          begin: "(link:)?(http|https|ftp|file|irc|image:?):\\S+?\\[[^[]*?\\]",
          returnBegin: true,
          contains: <Mode>[
            Mode(begin: "(link|image:?):", relevance: 0),
            Mode(className: 'link', begin: "\\w", end: "[^\\[]+", relevance: 0),
            Mode(
                className: 'string',
                begin: "\\[",
                end: "\\]",
                excludeBegin: true,
                excludeEnd: true,
                relevance: 0)
          ],
          relevance: 10)
    ]);
