// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langShell = Mode(
    refs: {},
    name: "Shell Session",
    aliases: ["console", "shellsession"],
    contains: <Mode>[
      Mode(
          className: 'meta.prompt',
          begin: "^\\s{0,3}[/~\\w\\d[\\]()@-]*[>%\$#][ ]?",
          starts: Mode(end: "[^\\\\](?=\\s*\$)", subLanguage: "bash"))
    ]);
