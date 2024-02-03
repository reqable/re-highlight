// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langRouteros = Mode(
    refs: {
      '~contains~2~contains~1': Mode(className: 'variable', variants: <Mode>[
        Mode(begin: "\\\$[\\w\\d#@][\\w\\d_]*"),
        Mode(begin: "\\\$\\{(.*?)\\}")
      ]),
      '~contains~2':
          Mode(className: 'string', begin: "\"", end: "\"", contains: <Mode>[
        BACKSLASH_ESCAPE,
        Mode(className: 'variable', variants: <Mode>[
          Mode(begin: "\\\$[\\w\\d#@][\\w\\d_]*"),
          Mode(begin: "\\\$\\{(.*?)\\}")
        ]),
        Mode(
            className: 'variable',
            begin: "\\\$\\(",
            end: "\\)",
            contains: <Mode>[BACKSLASH_ESCAPE])
      ]),
      '~contains~3': Mode(className: 'string', begin: "'", end: "'")
    },
    name: "MikroTik RouterOS script",
    aliases: ["mikrotik"],
    caseInsensitive: true,
    keywords: {
      "\$pattern": ":?[\\w-]+",
      "literal": "true false yes no nothing nil null",
      "keyword":
          "foreach do while for if from to step else on-error and or not in :foreach :do :while :for :if :from :to :step :else :on-error :and :or :not :in :global :local :beep :delay :put :len :typeof :pick :log :time :set :find :environment :terminal :error :execute :parse :resolve :toarray :tobool :toid :toip :toip6 :tonum :tostr :totime"
    },
    contains: <Mode>[
      Mode(variants: <Mode>[
        Mode(begin: "\\/\\*", end: "\\*\\/"),
        Mode(begin: "\\/\\/", end: "\$"),
        Mode(begin: "<\\/", end: ">")
      ], illegal: "."),
      Mode(scope: 'comment', begin: "^#", end: "\$", contains: <Mode>[
        Mode(
            scope: 'doctag',
            begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
            end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
            excludeBegin: true,
            relevance: 0),
        Mode(
            begin:
                "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
      ]),
      Mode(ref: '~contains~2'),
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~2~contains~1'),
      Mode(
          begin: "[\\w-]+=([^\\s{}[\\]()>]+)",
          relevance: 0,
          returnBegin: true,
          contains: <Mode>[
            Mode(className: 'attribute', begin: "[^=]+"),
            Mode(
                begin: "=",
                endsWithParent: true,
                relevance: 0,
                contains: <Mode>[
                  Mode(ref: '~contains~2'),
                  Mode(ref: '~contains~3'),
                  Mode(ref: '~contains~2~contains~1'),
                  Mode(
                      className: 'literal',
                      begin: "\\b(true|false|yes|no|nothing|nil|null)\\b"),
                  Mode(begin: "(\"[^\"]*\"|[^\\s{}[\\]]+)")
                ])
          ]),
      Mode(className: 'number', begin: "\\*[0-9a-fA-F]+"),
      Mode(
          begin:
              "\\b(add|remove|enable|disable|set|get|print|export|edit|find|run|debug|error|info|warning)([\\s[(\\]|])",
          returnBegin: true,
          contains: <Mode>[Mode(className: 'built_in', begin: "\\w+")]),
      Mode(className: 'built_in', variants: <Mode>[
        Mode(
            begin:
                "(\\.\\./|/|\\s)((traffic-flow|traffic-generator|firewall|scheduler|aaa|accounting|address-list|address|align|area|bandwidth-server|bfd|bgp|bridge|client|clock|community|config|connection|console|customer|default|dhcp-client|dhcp-server|discovery|dns|e-mail|ethernet|filter|firmware|gps|graphing|group|hardware|health|hotspot|identity|igmp-proxy|incoming|instance|interface|ip|ipsec|ipv6|irq|l2tp-server|lcd|ldp|logging|mac-server|mac-winbox|mangle|manual|mirror|mme|mpls|nat|nd|neighbor|network|note|ntp|ospf|ospf-v3|ovpn-server|page|peer|pim|ping|policy|pool|port|ppp|pppoe-client|pptp-server|prefix|profile|proposal|proxy|queue|radius|resource|rip|ripng|route|routing|screen|script|security-profiles|server|service|service-port|settings|shares|smb|sms|sniffer|snmp|snooper|socks|sstp-server|system|tool|tracking|type|upgrade|upnp|user-manager|users|user|vlan|secret|vrrp|watchdog|web-access|wireless|pptp|pppoe|lan|wan|layer7-protocol|lease|simple|raw);?\\s)+"),
        Mode(begin: "\\.\\.", relevance: 0)
      ])
    ]);
