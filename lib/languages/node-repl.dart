// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langNodeRepl = Mode(
    refs: {},
    name: "Node REPL",
    contains: <Mode>[
      Mode(
          className: 'meta.prompt',
          starts: Mode(
              end: " |\$", starts: Mode(end: "\$", subLanguage: "javascript")),
          variants: <Mode>[
            Mode(begin: "^>(?=[ ]|\$)"),
            Mode(begin: "^\\.\\.\\.(?=[ ]|\$)")
          ])
    ]);
