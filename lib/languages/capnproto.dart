// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langCapnproto = Mode(
    refs: {},
    name: "Cap’n Proto",
    aliases: ["capnp"],
    keywords: {
      "keyword": [
        "struct",
        "enum",
        "interface",
        "union",
        "group",
        "import",
        "using",
        "const",
        "annotation",
        "extends",
        "in",
        "of",
        "on",
        "as",
        "with",
        "from",
        "fixed"
      ],
      "type": [
        "Void",
        "Bool",
        "Int8",
        "Int16",
        "Int32",
        "Int64",
        "UInt8",
        "UInt16",
        "UInt32",
        "UInt64",
        "Float32",
        "Float64",
        "Text",
        "Data",
        "AnyPointer",
        "AnyStruct",
        "Capability",
        "List"
      ],
      "literal": ["true", "false"]
    },
    contains: <Mode>[
      QUOTE_STRING_MODE,
      NUMBER_MODE,
      HASH_COMMENT_MODE,
      Mode(className: 'meta', begin: "@0x[\\w\\d]{16};", illegal: "\\n"),
      Mode(className: 'symbol', begin: "@\\d+\\b"),
      Mode(variants: <Mode>[
        Mode(match: ["(struct|enum|interface)", "\\s+", "[a-zA-Z]\\w*"]),
        Mode(match: ["extends", "\\s*\\(", "[a-zA-Z]\\w*", "\\s*\\)"])
      ], scope: <int, String>{
        1: 'keyword',
        3: 'title.class',
      })
    ]);
