// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langTap = Mode(
    refs: {},
    name: "Test Anything Protocol",
    caseInsensitive: true,
    contains: <Mode>[
      HASH_COMMENT_MODE,
      Mode(className: 'meta', variants: <Mode>[
        Mode(begin: "^TAP version (\\d+)\$"),
        Mode(begin: "^1\\.\\.(\\d+)\$")
      ]),
      Mode(
          begin: "---\$",
          end: "\\.\\.\\.\$",
          subLanguage: "yaml",
          relevance: 0),
      Mode(className: 'number', begin: " (\\d+) "),
      Mode(
          className: 'symbol',
          variants: <Mode>[Mode(begin: "^ok"), Mode(begin: "^not ok")])
    ]);
