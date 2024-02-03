import hljs from "highlight.js";

export = hljsDefineVue;

/**
 * Add Vue styling to highlight.js
 * @param hljs 
 */
declare function hljsDefineVue(hljs: hljs.HLJSStatic): void;

declare namespace hljsDefineVue {
  /**
   * Manually add Vue styling to highlight.js
   * 
   * ```typescript
   * import hljs from "highlight.js"
   * hljs.registerLanguage("vue", definer)
   * ```
   * @param hljs 
   */
  function definer(hljs: hljs.HLJSStatic): hljs.IModeBase;
}