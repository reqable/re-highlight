// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langFix = Mode(
    refs: {},
    name: "FIX",
    contains: <Mode>[
      Mode(
          begin: "[^\\u2401\\u0001]+",
          end: "[\\u2401\\u0001]",
          excludeEnd: true,
          returnBegin: true,
          returnEnd: false,
          contains: <Mode>[
            Mode(
                begin: "([^\\u2401\\u0001=]+)",
                end: "=([^\\u2401\\u0001=]+)",
                returnEnd: true,
                returnBegin: false,
                className: 'attr'),
            Mode(
                begin: "=",
                end: "([\\u2401\\u0001])",
                excludeEnd: true,
                excludeBegin: true,
                className: 'string')
          ])
    ],
    caseInsensitive: true);
