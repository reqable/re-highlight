// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langPhpTemplate = Mode(
    refs: {},
    name: "PHP template",
    subLanguage: "xml",
    contains: <Mode>[
      Mode(
          begin: "<\\?(php|=)?",
          end: "\\?>",
          subLanguage: "php",
          contains: <Mode>[
            Mode(begin: "/\\*", end: "\\*/", skip: true),
            Mode(begin: "b\"", end: "\"", skip: true),
            Mode(begin: "b'", end: "'", skip: true),
            Mode(
                scope: null,
                begin: "'",
                end: "'",
                illegal: null,
                contains: null,
                className: 'delete',
                skip: true),
            Mode(
                scope: null,
                begin: "\"",
                end: "\"",
                illegal: null,
                contains: null,
                className: 'delete',
                skip: true)
          ])
    ]);
