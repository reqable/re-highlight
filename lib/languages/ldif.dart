// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langLdif = Mode(
    refs: {},
    name: "LDIF",
    contains: <Mode>[
      Mode(className: 'attribute', match: "^dn(?=:)", relevance: 10),
      Mode(className: 'attribute', match: "^\\w+(?=:)"),
      Mode(className: 'literal', match: "^-"),
      HASH_COMMENT_MODE
    ]);
