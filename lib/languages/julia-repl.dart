// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langJuliaRepl = Mode(
    refs: {},
    name: "Julia REPL",
    contains: <Mode>[
      Mode(
          className: 'meta.prompt',
          begin: "^julia>",
          relevance: 10,
          starts: Mode(end: "^(?![ ]{6})", subLanguage: "julia"))
    ],
    aliases: ["jldoctest"]);
