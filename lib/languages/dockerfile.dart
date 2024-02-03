// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langDockerfile = Mode(
    refs: {},
    name: "Dockerfile",
    aliases: ["docker"],
    caseInsensitive: true,
    keywords: [
      "from",
      "maintainer",
      "expose",
      "env",
      "arg",
      "user",
      "onbuild",
      "stopsignal"
    ],
    contains: <Mode>[
      HASH_COMMENT_MODE,
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      NUMBER_MODE,
      Mode(
          beginKeywords:
              "run cmd entrypoint volume add copy workdir label healthcheck shell",
          starts: Mode(end: "[^\\\\]\$", subLanguage: "bash"))
    ],
    illegal: "</");
