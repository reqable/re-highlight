// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langCss = Mode(
    refs: {
      '~contains~2': Mode(
          scope: 'number',
          begin:
              "\\b\\d+(\\.\\d+)?(%|em|ex|ch|rem|vw|vh|vmin|vmax|cm|mm|in|pt|pc|px|deg|grad|rad|turn|s|ms|Hz|kHz|dpi|dpcm|dppx)?",
          relevance: 0)
    },
    name: "CSS",
    caseInsensitive: true,
    illegal: "[=|'\\\$]",
    keywords: {"keyframePosition": "from to"},
    classNameAliases: {"keyframePosition": "selector-tag"},
    contains: <Mode>[
      C_BLOCK_COMMENT_MODE,
      Mode(begin: "-(webkit|moz|ms|o)-(?=[a-z])"),
      Mode(ref: '~contains~2'),
      Mode(className: 'selector-id', begin: "#[A-Za-z0-9_-]+", relevance: 0),
      Mode(
          className: 'selector-class',
          begin: "\\.[a-zA-Z-][a-zA-Z0-9_-]*",
          relevance: 0),
      Mode(
          scope: 'selector-attr',
          begin: "\\[",
          end: "\\]",
          illegal: "\$",
          contains: <Mode>[APOS_STRING_MODE, QUOTE_STRING_MODE]),
      Mode(className: 'selector-pseudo', variants: <Mode>[
        Mode(
            begin:
                ":(active|any-link|blank|checked|current|default|defined|dir|disabled|drop|empty|enabled|first|first-child|first-of-type|fullscreen|future|focus|focus-visible|focus-within|has|host|host-context|hover|indeterminate|in-range|invalid|is|lang|last-child|last-of-type|left|link|local-link|not|nth-child|nth-col|nth-last-child|nth-last-col|nth-last-of-type|nth-of-type|only-child|only-of-type|optional|out-of-range|past|placeholder-shown|read-only|read-write|required|right|root|scope|target|target-within|user-invalid|valid|visited|where)"),
        Mode(
            begin:
                ":(:)?(after|backdrop|before|cue|cue-region|first-letter|first-line|grammar-error|marker|part|placeholder|selection|slotted|spelling-error)")
      ]),
      Mode(className: 'attr', begin: "--[A-Za-z_][A-Za-z0-9_-]*"),
      Mode(
          className: 'attribute',
          begin:
              "\\b(z-index|writing-mode|word-wrap|word-spacing|word-break|will-change|width|widows|white-space|voice-volume|voice-stress|voice-rate|voice-range|voice-pitch|voice-family|voice-duration|voice-balance|visibility|vertical-align|unicode-bidi|transition-timing-function|transition-property|transition-duration|transition-delay|transition|transform-style|transform-origin|transform-box|transform|top|text-underline-position|text-transform|text-shadow|text-rendering|text-overflow|text-orientation|text-justify|text-indent|text-emphasis-style|text-emphasis-position|text-emphasis-color|text-emphasis|text-decoration-style|text-decoration-line|text-decoration-color|text-decoration|text-combine-upright|text-align-last|text-align-all|text-align|table-layout|tab-size|src|speak-as|speak|shape-outside|shape-margin|shape-image-threshold|scrollbar-width|scrollbar-gutter|scrollbar-color|scroll-snap-type|scroll-snap-stop|scroll-snap-align|scroll-padding-top|scroll-padding-right|scroll-padding-left|scroll-padding-inline-start|scroll-padding-inline-end|scroll-padding-inline|scroll-padding-bottom|scroll-padding-block-start|scroll-padding-block-end|scroll-padding-block|scroll-padding|scroll-margin-top|scroll-margin-right|scroll-margin-left|scroll-margin-inline-start|scroll-margin-inline-end|scroll-margin-inline|scroll-margin-bottom|scroll-margin-block-start|scroll-margin-block-end|scroll-margin-block|scroll-margin|row-gap|right|rest-before|rest-after|rest|resize|quotes|position|pointer-events|perspective-origin|perspective|pause-before|pause-after|pause|page-break-inside|page-break-before|page-break-after|padding-top|padding-right|padding-left|padding-inline-start|padding-inline-end|padding-inline|padding-bottom|padding-block-start|padding-block-end|padding-block|padding|overflow-y|overflow-x|overflow-wrap|overflow|outline-width|outline-style|outline-offset|outline-color|outline|orphans|order|opacity|object-position|object-fit|normal|none|nav-up|nav-right|nav-left|nav-index|nav-down|mix-blend-mode|min-width|min-inline-size|min-height|min-block-size|max-width|max-inline-size|max-height|max-block-size|mask-type|mask-size|mask-repeat|mask-position|mask-origin|mask-mode|mask-image|mask-composite|mask-clip|mask-border-width|mask-border-source|mask-border-slice|mask-border-repeat|mask-border-outset|mask-border-mode|mask-border|mask|marks|margin-top|margin-right|margin-left|margin-inline-start|margin-inline-end|margin-inline|margin-bottom|margin-block-start|margin-block-end|margin-block|margin|list-style-type|list-style-position|list-style-image|list-style|line-height|line-break|letter-spacing|left|justify-content|isolation|inline-size|ime-mode|image-resolution|image-rendering|image-orientation|icon|hyphens|height|hanging-punctuation|grid-template-rows|grid-template-columns|grid-template-areas|grid-template|grid-row-start|grid-row-end|grid-row|grid-gap|grid-column-start|grid-column-end|grid-column|grid-auto-rows|grid-auto-flow|grid-auto-columns|grid-area|grid|glyph-orientation-vertical|gap|font-weight|font-variation-settings|font-variant-position|font-variant-numeric|font-variant-ligatures|font-variant-east-asian|font-variant-caps|font-variant|font-synthesis|font-style|font-stretch|font-smoothing|font-size-adjust|font-size|font-language-override|font-kerning|font-feature-settings|font-family|font-display|font|flow|float|flex-wrap|flex-shrink|flex-grow|flex-flow|flex-direction|flex-basis|flex|filter|empty-cells|display|direction|cursor|cue-before|cue-after|cue|counter-reset|counter-increment|content-visibility|content|contain|columns|column-width|column-span|column-rule-width|column-rule-style|column-rule-color|column-rule|column-gap|column-fill|column-count|color|clip-rule|clip-path|clip|clear|caret-color|caption-side|break-inside|break-before|break-after|box-sizing|box-shadow|box-decoration-break|bottom|border-width|border-top-width|border-top-style|border-top-right-radius|border-top-left-radius|border-top-color|border-top|border-style|border-spacing|border-right-width|border-right-style|border-right-color|border-right|border-radius|border-left-width|border-left-style|border-left-color|border-left|border-inline-width|border-inline-style|border-inline-start-width|border-inline-start-style|border-inline-start-color|border-inline-start|border-inline-end-width|border-inline-end-style|border-inline-end-color|border-inline-end|border-inline-color|border-inline|border-image-width|border-image-source|border-image-slice|border-image-repeat|border-image-outset|border-image|border-color|border-collapse|border-bottom-width|border-bottom-style|border-bottom-right-radius|border-bottom-left-radius|border-bottom-color|border-bottom|border-block-width|border-block-style|border-block-start-width|border-block-start-style|border-block-start-color|border-block-start|border-block-end-width|border-block-end-style|border-block-end-color|border-block-end|border-block-color|border-block|border|block-size|background-size|background-repeat|background-position|background-origin|background-image|background-color|background-clip|background-blend-mode|background-attachment|background|backface-visibility|animation-timing-function|animation-play-state|animation-name|animation-iteration-count|animation-fill-mode|animation-duration|animation-direction|animation-delay|animation|all|align-self|align-items|align-content)\\b"),
      Mode(begin: ":", end: "[;}{]", contains: <Mode>[
        C_BLOCK_COMMENT_MODE,
        Mode(
            scope: 'number',
            begin: "#(([0-9a-fA-F]{3,4})|(([0-9a-fA-F]{2}){3,4}))\\b"),
        Mode(scope: 'meta', begin: "!important"),
        Mode(ref: '~contains~2'),
        APOS_STRING_MODE,
        QUOTE_STRING_MODE,
        Mode(begin: "(url|data-uri)\\(", end: "\\)", relevance: 0, keywords: {
          "built_in": "url data-uri"
        }, contains: <Mode>[
          APOS_STRING_MODE,
          QUOTE_STRING_MODE,
          Mode(
              className: 'string',
              begin: "[^)]",
              endsWithParent: true,
              excludeEnd: true)
        ]),
        Mode(className: 'built_in', begin: "[\\w-]+(?=\\()")
      ]),
      Mode(
          begin: "(?=@)",
          end: "[{;]",
          relevance: 0,
          illegal: ":",
          contains: <Mode>[
            Mode(className: 'keyword', begin: "@-?\\w[\\w]*(-\\w+)*"),
            Mode(
                begin: "\\s",
                endsWithParent: true,
                excludeEnd: true,
                relevance: 0,
                keywords: {
                  "\$pattern": "[a-z-]+",
                  "keyword": "and or not only",
                  "attribute":
                      "any-hover any-pointer aspect-ratio color color-gamut color-index device-aspect-ratio device-height device-width display-mode forced-colors grid height hover inverted-colors monochrome orientation overflow-block overflow-inline pointer prefers-color-scheme prefers-contrast prefers-reduced-motion prefers-reduced-transparency resolution scan scripting update width min-width max-width min-height max-height"
                },
                contains: <Mode>[
                  Mode(begin: "[a-z-]+(?=:)", className: 'attribute'),
                  APOS_STRING_MODE,
                  QUOTE_STRING_MODE,
                  Mode(ref: '~contains~2')
                ])
          ]),
      Mode(
          className: 'selector-tag',
          begin:
              "\\b(a|abbr|address|article|aside|audio|b|blockquote|body|button|canvas|caption|cite|code|dd|del|details|dfn|div|dl|dt|em|fieldset|figcaption|figure|footer|form|h1|h2|h3|h4|h5|h6|header|hgroup|html|i|iframe|img|input|ins|kbd|label|legend|li|main|mark|menu|nav|object|ol|p|q|quote|samp|section|span|strong|summary|sup|table|tbody|td|textarea|tfoot|th|thead|time|tr|ul|var|video)\\b")
    ]);
