// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langJbossCli = Mode(
    refs: {},
    name: "JBoss CLI",
    aliases: ["wildfly-cli"],
    keywords: {
      "\$pattern": "[a-z-]+",
      "keyword":
          "alias batch cd clear command connect connection-factory connection-info data-source deploy deployment-info deployment-overlay echo echo-dmr help history if jdbc-driver-info jms-queue|20 jms-topic|20 ls patch pwd quit read-attribute read-operation reload rollout-plan run-batch set shutdown try unalias undeploy unset version xa-data-source",
      "literal": "true false"
    },
    contains: <Mode>[
      HASH_COMMENT_MODE,
      QUOTE_STRING_MODE,
      Mode(className: 'params', begin: "--[\\w\\-=\\/]+"),
      Mode(className: 'function', begin: ":[\\w\\-.]+", relevance: 0),
      Mode(className: 'string', begin: "\\B([\\/.])[\\w\\-.\\/=]+"),
      Mode(
          className: 'params',
          begin: "\\(",
          end: "\\)",
          contains: <Mode>[
            Mode(
                begin: "[\\w-]+ *=",
                returnBegin: true,
                relevance: 0,
                contains: <Mode>[Mode(className: 'attr', begin: "[\\w-]+")])
          ],
          relevance: 0)
    ]);
