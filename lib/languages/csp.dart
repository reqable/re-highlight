// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langCsp = Mode(
    refs: {},
    name: "CSP",
    caseInsensitive: false,
    keywords: {
      "\$pattern": "[a-zA-Z][a-zA-Z0-9_-]*",
      "keyword": [
        "base-uri",
        "child-src",
        "connect-src",
        "default-src",
        "font-src",
        "form-action",
        "frame-ancestors",
        "frame-src",
        "img-src",
        "manifest-src",
        "media-src",
        "object-src",
        "plugin-types",
        "report-uri",
        "sandbox",
        "script-src",
        "style-src",
        "trusted-types",
        "unsafe-hashes",
        "worker-src"
      ]
    },
    contains: <Mode>[
      Mode(className: 'string', begin: "'", end: "'"),
      Mode(
          className: 'attribute', begin: "^Content", end: ":", excludeEnd: true)
    ]);
