const path = require('path');
const hljs = require('highlight.js');
const fs = require('fs');
const process = require('child_process');
const lodash = require("lodash");
const flatted = require('circular-json');

const NOTICE_COMMENT = '// GENERATED CODE - DO NOT MODIFY BY HAND\n\n';

// Inject hljs to identify callback function
hljs.END_SAME_AS_BEGIN = function(mode) {
  return Object.assign(mode,
    {
      /** @type {ModeCallback} */
      'on:begin': 'callbackOnBegin1',
      /** @type {ModeCallback} */
      'on:end': 'callbackOnEnd1'
    });
};
hljs.SHEBANG = (opts = {}) => {
  const beginShebang = /^#![ ]*\//;
  if (opts.binary) {
    opts.begin = [
      beginShebang,
      /.*\b/,
      opts.binary,
      /\b.*/
    ].map((re) => {
      if (typeof re === "string") {
        return re;
      } else {
        return re.source;
      }
    }).join("");
  }
  return hljs.inherit({
    scope: 'meta',
    begin: beginShebang,
    end: /$/,
    relevance: 0,
    /** @type {ModeCallback} */
    "on:begin": 'callbackOnBegin2'
  }, opts);
};

const modeEntries = Object.entries(hljs).filter(
  ([k]) => /^[A-Z]/.test(k) && !k.endsWith('_RE') &&
    typeof hljs[k] !== 'function' && hljs[k] != hljs
);

const languagesDir = 'node_modules/highlight.js/lib/languages';

function _generateCommonModes() {
  let code = `${NOTICE_COMMENT}part of re_highlight;`;
  modeEntries.forEach(([k, v]) => {
    code += `final ${k}=${_generateModeCode(v)};`;
  });
  _writeCode('../lib/src/generated/modes.dart', code);
}

function _generateLanguageModes() {
  const dirs = fs.readdirSync(languagesDir);
  const items = [
    ...dirs.filter(file => !path.basename(file, path.extname(file)).endsWith('.js'))
    .map(file => {
      let name = path.basename(file, path.extname(file));
      return {
        name: name,
        factory: require(path.resolve(languagesDir, name)),
        community: false
      };
    }),
    {
      name: 'vue',
      factory: require('../vendor/highlightjs-vue/vue').definer,
      community: true
    },
    {
      name: 'gn',
      factory: require('../vendor/highlightjs-GN').definer,
      community: true
    },
  ];
  items.forEach(item => {
    if (item.name === '') {
      return;
    }
    console.log(`generating ${item.name}`);
    let code = `${NOTICE_COMMENT}import 'package:re_highlight/re_highlight.dart';`;
    let findOwnCallback = false;
    let findCommonCallback = false;
    const json = flatted.stringify(item.factory(hljs), (key, value) => {
      if (value instanceof RegExp) {
        return value.source;
      }
      for (let entry of modeEntries) {
        if (entry[1] === value) {
          return entry[0];
        }
      }
      // Must not make the array point to a ref.
      if (Array.isArray(value)) {
        return lodash.clone(value);
      }
      // Must not make the non-mode object point to a ref
      if (['keywords', 'className', 'scope', 'beginScope', 'endScope'].includes(key)) {
        return lodash.clone(value);
      }
      // Handle onBegin/onEnd callback functions
      if (key === 'on:begin') {
        if (typeof value === 'function') {
          findOwnCallback = true;
          return 'callbackOnBegin';
        } else {
          findCommonCallback = true;
          return value;
        }
      }
      if (key === 'on:end') {
        if (typeof value === 'function') {
          findOwnCallback = true;
          return 'callbackOnEnd';
        } else {
          findCommonCallback = true;
          return value;
        }
      }

      return value;
    });
    if (findOwnCallback) {
      code += `import 'lib/${item.name}.dart';`;
    }
    if (findCommonCallback) {
      code += `import 'lib/common.dart';`;
    }
    const mode = JSON.parse(json);
    const refs = {};
    _parseRefs(mode, mode, refs);
    code += 'final ';
    code += `lang${lodash.camelCase(item.name).capitalize()}`;
    code += ' = ';
    code += _generateLanguageCode(mode, refs);
    code += ';';
    _writeCode(`../lib/languages/${item.name}.dart`, code);
  });
  _generateAllDart(items);
}

function _generateLanguageCode(obj, refs) {
  let modeCode = _generateModeCode(obj, refs, true);
  if (!refs) {
    return modeCode;
  }
  let refsCode = 'Mode(refs: {';
  refsCode += Object.entries(refs).map(([key, value]) => `'${key}': ${_generateModeCode(value, refs, false)}`).join(',')
  refsCode += '}, '
  return refsCode + modeCode.slice(5);
}

function _generateModeCode(obj, refs, useRef) {
  if (obj === null) {
    return 'null';
  }
  if (typeof obj === 'string') {
    if (obj === 'self') {
      return 'Mode(self: true)';
    }
    for (let entry of modeEntries) {
      if (entry[0] === obj) {
        return entry[0];
      }
    }
    if (obj.startsWith('~')) {
      return `Mode(ref: '${obj}')`;
    }
    throw `String '${obj}' should not be here`;
  }
  if (refs && useRef) {
    for (let entry of Object.entries(refs)) {
      if (obj === entry[1]) {
        return `Mode(ref: '${entry[0]}')`;
      }
    }
  }
  let code = 'Mode(';
  Object.entries(obj).forEach(([key, value], i, array) => {
    if (['binary', 'exports'].includes(key)) {
      return;
    }
    if (key === 'case_insensitive') {
      key = 'caseInsensitive';
    }
    if (refs) {
      for (let entry of Object.entries(refs)) {
        if (value === entry[0] || value === entry[1]) {
          code += `${key}: Mode(ref: '${entry[0]}'),`;
          return;
        }
      }
    }
    if (value instanceof RegExp) {
      value = value.source;
    }
    switch (key) {
      case 'starts':
        code += `${key}: ${_generateModeCode(value, refs, useRef)}`;
        break;
      case 'contains':
      case 'variants':
        if (value === null) {
          code += `${key}: null`;
        } else {
          code += `${key}: <Mode>[${_flatArray(value).map((e) => _generateModeCode(e, refs, useRef)).join(',')}]`;
        }
        break;
      case 'className':
      case 'scope':
      case 'beginScope':
      case 'endScope':
        // TODO removed when highlightjs not use className
        // In JS undefine is not same as null, but in dart there are same
        if (key === 'scope' && obj.className === null) {
          value = null;
        }
        // This is a trick, mark the className value should be deleted in dart code.
        if (key === 'className' && value === null) {
          value = 'delete';
        }
        if (value === null) {
          code += `${key}: null`;
        } else if (typeof value === 'string') {
          code += `${key}: '${value}'`;
        } else {
          code += `${key}: <int, String>{`;
          Object.entries(value).forEach(([k, v]) => {
            code += `${k}: '${v}',`;
          });
          code += `}`;
        }
        break;
      case 'end':
          // TODO removed when the bug from highlightjs is fixed.
          if (typeof value === "boolean") {
            code += `${key}: null`;
          } else {
            code += `${key}: ${JSON.stringify(value)}`;
          }
          break;
      case 'on:begin':
        code += `onBegin: ${value}`;
        break;
      case 'on:end':
        code += `onEnd: ${value}`;
        break;
      default:
        if (Array.isArray(value) && value.length == 0) {
          code += `${key}: <String>[]`;
        } else {
          code += `${key}: ${JSON.stringify(value)}`;
        }
        break;
    }
    if (i < array.length - 1) {
      code += ",";
    }
  });
  code += ')';
  // Fixed `~` escape issue, see circular-json.node.js
  return code.replace('\\\\x7e', '<x7e>').replace('\\x7e', '~').replace('<x7e>', '\\x7e');
}

function _parseRefs(root, node, refs) {
  if (!node) {
    return;
  }
  if (typeof node === 'string' && node.startsWith('~')) {
    if (refs[node] === undefined) {
      refs[node] = _findInstance(root, node);
    }
    return;
  }
  if (Array.isArray(node)) {
    node.forEach((e) => _parseRefs(root, e, refs));
    return;
  }
  if (!(node instanceof Object)) {
    return;
  }
  Object.entries(node).forEach(([key, value]) => {
    _parseRefs(root, value, refs);
  });
}

function _findInstance(root, ref) {
  let path = '';
  const pieces = ref.split('~').slice(1).forEach((e) => {
    if (isNaN(e)) {
      path += '.' + e;
    } else {
      path += '[' + e + ']';
    }
  });
  return lodash.get(root, path.slice(1));
}

function _flatArray(array) {
  let newArray = [];
  array.forEach((e, index) => {
    if (Array.isArray(e)) {
      newArray = newArray.concat(e);
    } else {
      newArray.push(e);
    }
  });
  return newArray;
}

function _generateAllDart(items) {
  // Align the register order with highlightjs, so that we no need to
  // resovle the language dependency.
  let orderedItems = [];
  const communityLanguages = hljs.listLanguages();
  communityLanguages.forEach((lang) => {
    orderedItems = orderedItems.concat(items.filter((item) => item.name === lang));
  });
  orderedItems = orderedItems.concat(items.filter((item) => !orderedItems.includes(item)));
  let code = NOTICE_COMMENT;
  let communityLanguagesCode = '';
  let builtinLanguagesCode = '';
  orderedItems.forEach((item) => {
    code += `import '${item.name}.dart';\n`;
    const lang = `lang${lodash.camelCase(item.name).capitalize()}`;
    if (item.community) {
      communityLanguagesCode += `'${item.name}': ${lang},`;
    } else {
      builtinLanguagesCode += `'${item.name}': ${lang},`;
    }
  });
  code += '\n';
  code += 'final builtinCommunityLanguages = {'
  code += communityLanguagesCode;
  code += '};'
  code += '\n';
  code += 'final builtinLanguages = {'
  code += builtinLanguagesCode;
  code += '};'
  code += 'final builtinAllLanguages = {...builtinLanguages, ...builtinCommunityLanguages};'
  _writeCode('../lib/languages/all.dart', code);
}

function _writeCode(file, code) {
  fs.writeFileSync(
    file,
    code.replace(/\$/g, '\\$')
  );
  process.execSync(`dart format ${file}`);
}

String.prototype.capitalize = function() {
  return this.charAt(0).toUpperCase() + this.slice(1);
}

exports.exec = function() {
  _generateCommonModes();
  _generateLanguageModes();
}