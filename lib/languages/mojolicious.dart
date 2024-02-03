// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langMojolicious = Mode(
    refs: {},
    name: "Mojolicious",
    subLanguage: "xml",
    contains: <Mode>[
      Mode(className: 'meta', begin: "^__(END|DATA)__\$"),
      Mode(begin: "^\\s*%{1,2}={0,2}", end: "\$", subLanguage: "perl"),
      Mode(
          begin: "<%{1,2}={0,2}",
          end: "={0,1}%>",
          subLanguage: "perl",
          excludeBegin: true,
          excludeEnd: true)
    ]);
