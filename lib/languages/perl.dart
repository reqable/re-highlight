// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langPerl = Mode(
    refs: {
      '~contains~0': Mode(variants: <Mode>[
        Mode(begin: "\\\$\\d"),
        Mode(
            begin:
                "[\$%@](\\^\\w\\b|#\\w+(::\\w+)*|\\{\\w+\\}|\\w+(::\\w*)*)(?![A-Za-z])(?![@\$%])"),
        Mode(begin: "[\$%@][^\\s\\w{]", relevance: 0)
      ]),
      '~contains~2': Mode(
          scope: 'comment',
          begin: "^=\\w",
          end: "=cut",
          contains: <Mode>[
            Mode(
                scope: 'doctag',
                begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                excludeBegin: true,
                relevance: 0),
            Mode(
                begin:
                    "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
          ],
          endsWithParent: true),
      '~contains~3': Mode(begin: "->\\{", end: "\\}", contains: <Mode>[
        Mode(ref: '~contains~0'),
        HASH_COMMENT_MODE,
        Mode(ref: '~contains~2'),
        Mode(ref: '~contains~3'),
        Mode(className: 'string', contains: <Mode>[
          BACKSLASH_ESCAPE,
          Mode(className: 'subst', begin: "[\$@]\\{", end: "\\}", keywords: {
            "\$pattern": "[\\w.]+",
            "keyword":
                "abs accept alarm and atan2 bind binmode bless break caller chdir chmod chomp chop chown chr chroot close closedir connect continue cos crypt dbmclose dbmopen defined delete die do dump each else elsif endgrent endhostent endnetent endprotoent endpwent endservent eof eval exec exists exit exp fcntl fileno flock for foreach fork format formline getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername getpgrp getpriority getprotobyname getprotobynumber getprotoent getpwent getpwnam getpwuid getservbyname getservbyport getservent getsockname getsockopt given glob gmtime goto grep gt hex if index int ioctl join keys kill last lc lcfirst length link listen local localtime log lstat lt ma map mkdir msgctl msgget msgrcv msgsnd my ne next no not oct open opendir or ord our pack package pipe pop pos print printf prototype push q|0 qq quotemeta qw qx rand read readdir readline readlink readpipe recv redo ref rename require reset return reverse rewinddir rindex rmdir say scalar seek seekdir select semctl semget semop send setgrent sethostent setnetent setpgrp setpriority setprotoent setpwent setservent setsockopt shift shmctl shmget shmread shmwrite shutdown sin sleep socket socketpair sort splice split sprintf sqrt srand stat state study sub substr symlink syscall sysopen sysread sysseek system syswrite tell telldir tie tied time times tr truncate uc ucfirst umask undef unless unlink unpack unshift untie until use utime values vec wait waitpid wantarray warn when while write x|0 xor y|0"
          }, contains: <Mode>[
            Mode(ref: '~contains~0'),
            HASH_COMMENT_MODE,
            Mode(ref: '~contains~2'),
            Mode(ref: '~contains~3'),
            Mode(ref: '~contains~3~contains~4'),
            Mode(
                className: 'number',
                begin:
                    "(\\b0[0-7_]+)|(\\b0x[0-9a-fA-F_]+)|(\\b[1-9][0-9_]*(\\.[0-9_]+)?)|[0_]\\b",
                relevance: 0),
            Mode(
                begin:
                    "(\\/\\/|!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||~|\\b(split|return|print|reverse|grep)\\b)\\s*",
                keywords: "split return print reverse grep",
                relevance: 0,
                contains: <Mode>[
                  HASH_COMMENT_MODE,
                  Mode(
                      className: 'regexp',
                      variants: <Mode>[
                        Mode(
                            begin:
                                "(?:s|tr|y)(!|\\/|\\||\\?|'|\"|#)(?:\\\\.|[^\\\\\\/])*?\\1(?:\\\\.|[^\\\\\\/])*?\\1[dualxmsipngr]{0,12}"),
                        Mode(
                            begin:
                                "(?:s|tr|y)\\((?:\\\\.|[^\\\\\\/])*?\\)\\((?:\\\\.|[^\\\\\\/])*?\\)[dualxmsipngr]{0,12}"),
                        Mode(
                            begin:
                                "(?:s|tr|y)\\[(?:\\\\.|[^\\\\\\/])*?\\]\\[(?:\\\\.|[^\\\\\\/])*?\\][dualxmsipngr]{0,12}"),
                        Mode(
                            begin:
                                "(?:s|tr|y)\\{(?:\\\\.|[^\\\\\\/])*?\\}\\{(?:\\\\.|[^\\\\\\/])*?\\}[dualxmsipngr]{0,12}")
                      ],
                      relevance: 2),
                  Mode(className: 'regexp', variants: <Mode>[
                    Mode(begin: "(m|qr)\\/\\/", relevance: 0),
                    Mode(
                        begin:
                            "(?:(?:m|qr)?)\\/(?:\\\\.|[^\\\\\\/])*?\\/[dualxmsipngr]{0,12}"),
                    Mode(
                        begin:
                            "(?:m|qr)(!|\\/|\\||\\?|'|\"|#)(?:\\\\.|[^\\\\\\/])*?\\1[dualxmsipngr]{0,12}"),
                    Mode(
                        begin:
                            "(?:m|qr)\\((?:\\\\.|[^\\\\\\/])*?\\)[dualxmsipngr]{0,12}"),
                    Mode(
                        begin:
                            "(?:m|qr)\\[(?:\\\\.|[^\\\\\\/])*?\\][dualxmsipngr]{0,12}"),
                    Mode(
                        begin:
                            "(?:m|qr)\\{(?:\\\\.|[^\\\\\\/])*?\\}[dualxmsipngr]{0,12}")
                  ])
                ]),
            Mode(
                className: 'function',
                beginKeywords: "sub",
                end: "(\\s*\\(.*?\\))?[;{]",
                excludeEnd: true,
                relevance: 5,
                contains: <Mode>[TITLE_MODE]),
            Mode(begin: "-\\w\\b", relevance: 0),
            Mode(
                begin: "^__DATA__\$",
                end: "^__END__\$",
                subLanguage: "mojolicious",
                contains: <Mode>[
                  Mode(begin: "^@@.*", end: "\$", className: 'comment')
                ])
          ]),
          Mode(ref: '~contains~0')
        ], variants: <Mode>[
          Mode(begin: "q[qwxr]?\\s*\\(", end: "\\)", relevance: 5),
          Mode(begin: "q[qwxr]?\\s*\\[", end: "\\]", relevance: 5),
          Mode(begin: "q[qwxr]?\\s*\\{", end: "\\}", relevance: 5),
          Mode(begin: "q[qwxr]?\\s*\\|", end: "\\|", relevance: 5),
          Mode(begin: "q[qwxr]?\\s*<", end: ">", relevance: 5),
          Mode(begin: "qw\\s+q", end: "q", relevance: 5),
          Mode(begin: "'", end: "'", contains: <Mode>[BACKSLASH_ESCAPE]),
          Mode(begin: "\"", end: "\""),
          Mode(begin: "`", end: "`", contains: <Mode>[BACKSLASH_ESCAPE]),
          Mode(begin: "\\{\\w+\\}", relevance: 0),
          Mode(begin: "-?\\w+\\s*=>", relevance: 0)
        ]),
        Mode(ref: '~contains~3~contains~4~contains~1~contains~5'),
        Mode(ref: '~contains~3~contains~4~contains~1~contains~6'),
        Mode(ref: '~contains~3~contains~4~contains~1~contains~7'),
        Mode(ref: '~contains~3~contains~4~contains~1~contains~8'),
        Mode(ref: '~contains~3~contains~4~contains~1~contains~9')
      ]),
      '~contains~3~contains~4': Mode(className: 'string', contains: <Mode>[
        BACKSLASH_ESCAPE,
        Mode(className: 'subst', begin: "[\$@]\\{", end: "\\}", keywords: {
          "\$pattern": "[\\w.]+",
          "keyword":
              "abs accept alarm and atan2 bind binmode bless break caller chdir chmod chomp chop chown chr chroot close closedir connect continue cos crypt dbmclose dbmopen defined delete die do dump each else elsif endgrent endhostent endnetent endprotoent endpwent endservent eof eval exec exists exit exp fcntl fileno flock for foreach fork format formline getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername getpgrp getpriority getprotobyname getprotobynumber getprotoent getpwent getpwnam getpwuid getservbyname getservbyport getservent getsockname getsockopt given glob gmtime goto grep gt hex if index int ioctl join keys kill last lc lcfirst length link listen local localtime log lstat lt ma map mkdir msgctl msgget msgrcv msgsnd my ne next no not oct open opendir or ord our pack package pipe pop pos print printf prototype push q|0 qq quotemeta qw qx rand read readdir readline readlink readpipe recv redo ref rename require reset return reverse rewinddir rindex rmdir say scalar seek seekdir select semctl semget semop send setgrent sethostent setnetent setpgrp setpriority setprotoent setpwent setservent setsockopt shift shmctl shmget shmread shmwrite shutdown sin sleep socket socketpair sort splice split sprintf sqrt srand stat state study sub substr symlink syscall sysopen sysread sysseek system syswrite tell telldir tie tied time times tr truncate uc ucfirst umask undef unless unlink unpack unshift untie until use utime values vec wait waitpid wantarray warn when while write x|0 xor y|0"
        }, contains: <Mode>[
          Mode(ref: '~contains~0'),
          HASH_COMMENT_MODE,
          Mode(ref: '~contains~2'),
          Mode(ref: '~contains~3'),
          Mode(ref: '~contains~3~contains~4'),
          Mode(
              className: 'number',
              begin:
                  "(\\b0[0-7_]+)|(\\b0x[0-9a-fA-F_]+)|(\\b[1-9][0-9_]*(\\.[0-9_]+)?)|[0_]\\b",
              relevance: 0),
          Mode(
              begin:
                  "(\\/\\/|!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||~|\\b(split|return|print|reverse|grep)\\b)\\s*",
              keywords: "split return print reverse grep",
              relevance: 0,
              contains: <Mode>[
                HASH_COMMENT_MODE,
                Mode(
                    className: 'regexp',
                    variants: <Mode>[
                      Mode(
                          begin:
                              "(?:s|tr|y)(!|\\/|\\||\\?|'|\"|#)(?:\\\\.|[^\\\\\\/])*?\\1(?:\\\\.|[^\\\\\\/])*?\\1[dualxmsipngr]{0,12}"),
                      Mode(
                          begin:
                              "(?:s|tr|y)\\((?:\\\\.|[^\\\\\\/])*?\\)\\((?:\\\\.|[^\\\\\\/])*?\\)[dualxmsipngr]{0,12}"),
                      Mode(
                          begin:
                              "(?:s|tr|y)\\[(?:\\\\.|[^\\\\\\/])*?\\]\\[(?:\\\\.|[^\\\\\\/])*?\\][dualxmsipngr]{0,12}"),
                      Mode(
                          begin:
                              "(?:s|tr|y)\\{(?:\\\\.|[^\\\\\\/])*?\\}\\{(?:\\\\.|[^\\\\\\/])*?\\}[dualxmsipngr]{0,12}")
                    ],
                    relevance: 2),
                Mode(className: 'regexp', variants: <Mode>[
                  Mode(begin: "(m|qr)\\/\\/", relevance: 0),
                  Mode(
                      begin:
                          "(?:(?:m|qr)?)\\/(?:\\\\.|[^\\\\\\/])*?\\/[dualxmsipngr]{0,12}"),
                  Mode(
                      begin:
                          "(?:m|qr)(!|\\/|\\||\\?|'|\"|#)(?:\\\\.|[^\\\\\\/])*?\\1[dualxmsipngr]{0,12}"),
                  Mode(
                      begin:
                          "(?:m|qr)\\((?:\\\\.|[^\\\\\\/])*?\\)[dualxmsipngr]{0,12}"),
                  Mode(
                      begin:
                          "(?:m|qr)\\[(?:\\\\.|[^\\\\\\/])*?\\][dualxmsipngr]{0,12}"),
                  Mode(
                      begin:
                          "(?:m|qr)\\{(?:\\\\.|[^\\\\\\/])*?\\}[dualxmsipngr]{0,12}")
                ])
              ]),
          Mode(
              className: 'function',
              beginKeywords: "sub",
              end: "(\\s*\\(.*?\\))?[;{]",
              excludeEnd: true,
              relevance: 5,
              contains: <Mode>[TITLE_MODE]),
          Mode(begin: "-\\w\\b", relevance: 0),
          Mode(
              begin: "^__DATA__\$",
              end: "^__END__\$",
              subLanguage: "mojolicious",
              contains: <Mode>[
                Mode(begin: "^@@.*", end: "\$", className: 'comment')
              ])
        ]),
        Mode(ref: '~contains~0')
      ], variants: <Mode>[
        Mode(begin: "q[qwxr]?\\s*\\(", end: "\\)", relevance: 5),
        Mode(begin: "q[qwxr]?\\s*\\[", end: "\\]", relevance: 5),
        Mode(begin: "q[qwxr]?\\s*\\{", end: "\\}", relevance: 5),
        Mode(begin: "q[qwxr]?\\s*\\|", end: "\\|", relevance: 5),
        Mode(begin: "q[qwxr]?\\s*<", end: ">", relevance: 5),
        Mode(begin: "qw\\s+q", end: "q", relevance: 5),
        Mode(begin: "'", end: "'", contains: <Mode>[BACKSLASH_ESCAPE]),
        Mode(begin: "\"", end: "\""),
        Mode(begin: "`", end: "`", contains: <Mode>[BACKSLASH_ESCAPE]),
        Mode(begin: "\\{\\w+\\}", relevance: 0),
        Mode(begin: "-?\\w+\\s*=>", relevance: 0)
      ]),
      '~contains~3~contains~4~contains~1~contains~5': Mode(
          className: 'number',
          begin:
              "(\\b0[0-7_]+)|(\\b0x[0-9a-fA-F_]+)|(\\b[1-9][0-9_]*(\\.[0-9_]+)?)|[0_]\\b",
          relevance: 0),
      '~contains~3~contains~4~contains~1~contains~6': Mode(
          begin:
              "(\\/\\/|!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||\x7e|\\b(split|return|print|reverse|grep)\\b)\\s*",
          keywords: "split return print reverse grep",
          relevance: 0,
          contains: <Mode>[
            HASH_COMMENT_MODE,
            Mode(
                className: 'regexp',
                variants: <Mode>[
                  Mode(
                      begin:
                          "(?:s|tr|y)(!|\\/|\\||\\?|'|\"|#)(?:\\\\.|[^\\\\\\/])*?\\1(?:\\\\.|[^\\\\\\/])*?\\1[dualxmsipngr]{0,12}"),
                  Mode(
                      begin:
                          "(?:s|tr|y)\\((?:\\\\.|[^\\\\\\/])*?\\)\\((?:\\\\.|[^\\\\\\/])*?\\)[dualxmsipngr]{0,12}"),
                  Mode(
                      begin:
                          "(?:s|tr|y)\\[(?:\\\\.|[^\\\\\\/])*?\\]\\[(?:\\\\.|[^\\\\\\/])*?\\][dualxmsipngr]{0,12}"),
                  Mode(
                      begin:
                          "(?:s|tr|y)\\{(?:\\\\.|[^\\\\\\/])*?\\}\\{(?:\\\\.|[^\\\\\\/])*?\\}[dualxmsipngr]{0,12}")
                ],
                relevance: 2),
            Mode(className: 'regexp', variants: <Mode>[
              Mode(begin: "(m|qr)\\/\\/", relevance: 0),
              Mode(
                  begin:
                      "(?:(?:m|qr)?)\\/(?:\\\\.|[^\\\\\\/])*?\\/[dualxmsipngr]{0,12}"),
              Mode(
                  begin:
                      "(?:m|qr)(!|\\/|\\||\\?|'|\"|#)(?:\\\\.|[^\\\\\\/])*?\\1[dualxmsipngr]{0,12}"),
              Mode(
                  begin:
                      "(?:m|qr)\\((?:\\\\.|[^\\\\\\/])*?\\)[dualxmsipngr]{0,12}"),
              Mode(
                  begin:
                      "(?:m|qr)\\[(?:\\\\.|[^\\\\\\/])*?\\][dualxmsipngr]{0,12}"),
              Mode(
                  begin:
                      "(?:m|qr)\\{(?:\\\\.|[^\\\\\\/])*?\\}[dualxmsipngr]{0,12}")
            ])
          ]),
      '~contains~3~contains~4~contains~1~contains~7': Mode(
          className: 'function',
          beginKeywords: "sub",
          end: "(\\s*\\(.*?\\))?[;{]",
          excludeEnd: true,
          relevance: 5,
          contains: <Mode>[TITLE_MODE]),
      '~contains~3~contains~4~contains~1~contains~8':
          Mode(begin: "-\\w\\b", relevance: 0),
      '~contains~3~contains~4~contains~1~contains~9': Mode(
          begin: "^__DATA__\$",
          end: "^__END__\$",
          subLanguage: "mojolicious",
          contains: <Mode>[
            Mode(begin: "^@@.*", end: "\$", className: 'comment')
          ])
    },
    name: "Perl",
    aliases: ["pl", "pm"],
    keywords: {
      "\$pattern": "[\\w.]+",
      "keyword":
          "abs accept alarm and atan2 bind binmode bless break caller chdir chmod chomp chop chown chr chroot close closedir connect continue cos crypt dbmclose dbmopen defined delete die do dump each else elsif endgrent endhostent endnetent endprotoent endpwent endservent eof eval exec exists exit exp fcntl fileno flock for foreach fork format formline getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername getpgrp getpriority getprotobyname getprotobynumber getprotoent getpwent getpwnam getpwuid getservbyname getservbyport getservent getsockname getsockopt given glob gmtime goto grep gt hex if index int ioctl join keys kill last lc lcfirst length link listen local localtime log lstat lt ma map mkdir msgctl msgget msgrcv msgsnd my ne next no not oct open opendir or ord our pack package pipe pop pos print printf prototype push q|0 qq quotemeta qw qx rand read readdir readline readlink readpipe recv redo ref rename require reset return reverse rewinddir rindex rmdir say scalar seek seekdir select semctl semget semop send setgrent sethostent setnetent setpgrp setpriority setprotoent setpwent setservent setsockopt shift shmctl shmget shmread shmwrite shutdown sin sleep socket socketpair sort splice split sprintf sqrt srand stat state study sub substr symlink syscall sysopen sysread sysseek system syswrite tell telldir tie tied time times tr truncate uc ucfirst umask undef unless unlink unpack unshift untie until use utime values vec wait waitpid wantarray warn when while write x|0 xor y|0"
    },
    contains: <Mode>[
      Mode(ref: '~contains~0'),
      HASH_COMMENT_MODE,
      Mode(ref: '~contains~2'),
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~3~contains~4'),
      Mode(ref: '~contains~3~contains~4~contains~1~contains~5'),
      Mode(ref: '~contains~3~contains~4~contains~1~contains~6'),
      Mode(ref: '~contains~3~contains~4~contains~1~contains~7'),
      Mode(ref: '~contains~3~contains~4~contains~1~contains~8'),
      Mode(ref: '~contains~3~contains~4~contains~1~contains~9')
    ]);
