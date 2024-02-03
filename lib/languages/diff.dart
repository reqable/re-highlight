// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langDiff = Mode(
    refs: {},
    name: "Diff",
    aliases: ["patch"],
    contains: <Mode>[
      Mode(
          className: 'meta',
          relevance: 10,
          match:
              "(?:^@@ +-\\d+,\\d+ +\\+\\d+,\\d+ +@@|^\\*\\*\\* +\\d+,\\d+ +\\*\\*\\*\\*\$|^--- +\\d+,\\d+ +----\$)"),
      Mode(className: 'comment', variants: <Mode>[
        Mode(
            begin:
                "(?:Index: |^index|={3,}|^-{3}|^\\*{3} |^\\+{3}|^diff --git)",
            end: "\$"),
        Mode(match: "^\\*{15}\$")
      ]),
      Mode(className: 'addition', begin: "^\\+", end: "\$"),
      Mode(className: 'deletion', begin: "^-", end: "\$"),
      Mode(className: 'addition', begin: "^!", end: "\$")
    ]);
