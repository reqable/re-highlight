const path = require('path');
const hljs = require('highlight.js');
const fs = require('fs');
const process = require('child_process');
const lodash = require('lodash');
const postcss = require('postcss');

const NOTICE_COMMENT = '// GENERATED CODE - DO NOT MODIFY BY HAND\n\n';

const stylesDir = 'node_modules/highlight.js/styles';

function _generateAllStyles() {
  const styles = fs.readdirSync(stylesDir).filter(
    file => path.basename(file).endsWith('.css') && !path.basename(file).endsWith('min.css')
  ).map(file => {
    let fileName = file.slice(0, file.length - 4)
    return {
      path: path.join(stylesDir, file),
      name: lodash.camelCase(fileName),
      fileName: fileName
    }
  });
  const base16Styles = fs.readdirSync(path.join(stylesDir, 'base16'),).filter(
    file => path.basename(file).endsWith('.css') && !path.basename(file).endsWith('min.css') && 
      path.basename(file).charAt(0) > '9'
  ).map(file => {
    let fileName = file.slice(0, file.length - 4)
    return {
      path: path.join(stylesDir, 'base16', file),
      name: lodash.camelCase(fileName),
      dirName: 'base16',
      fileName: fileName
    }
  });
  _generateStyles(styles);
  _generateStyles(base16Styles);
  _generateStyleMap(styles, base16Styles);
}

function _generateStyles(styles) {
  styles.forEach(style => {
    console.log(`generating style ${style.path}`);
    const obj = {};
    const ast = postcss.parse(fs.readFileSync(style.path));
    ast.walkRules((rule, _) => {
      // Skip media query
      if (rule.parent.type === 'atrule' && rule.parent.name === 'media') {
        return;
      }
      if (rule.selectors[0] === 'pre code.hljs' || rule.selectors[0] === 'code.hljs') {
        return;
      }
      rule.selectors.forEach(selector => {
        if (selector.includes('\n')) {
          // This might be a highlightjs bug.
          return;
        }
        if (selector === '.hljs') {
          selector = 'root';
        } else {
          var pieces = selector.split(' ')
          if (pieces.length > 1) {
            selector = pieces.map(piece => piece.replace('.hljs-', '')).join('-')
          } else {
            selector = selector.replace('.hljs-', '');
          }
        }
        const flutterStyle = {};
        rule.nodes.forEach(item => {
          if (item.type !== 'decl') {
            return
          }
          switch (item.prop) {
            case 'color': {
              const flutterColor = convertColor(item.value);
              if (flutterColor) {
                flutterStyle.color = flutterColor;
              }
              break;
            }
            case 'background':
            case 'background-color': {
              const flutterColor = convertColor(item.value);
              if (flutterColor) {
                flutterStyle.backgroundColor = flutterColor;
              }
              break;
            }
            case 'font-style':
              flutterStyle.fontStyle = `FontStyle.${item.value}`;
              break;
            case 'font-weight':
              if (item.value === 'bolder') {
                break
              }
              if (item.value === 'bold') {
                flutterStyle.fontWeight = `FontWeight.bold`;
                break;
              }
              if (item.value === 'normal') {
                break;
              }
              flutterStyle.fontWeight = `FontWeight.w${item.value}`;
              break;
          }
        });

        const styleEntries = Object.entries(flutterStyle);

        if (styleEntries.length) {
          if (!obj[selector]) {
            obj[selector] = flutterStyle;
          } else {
            Object.assign(obj[selector], flutterStyle);
          }
        }
      });
    });

    let code = `${NOTICE_COMMENT}import 'package:flutter/painting.dart'; const ${style.name}Theme = {`;
    Object.entries(obj).forEach(([selector, v]) => {
      code += `'${selector}': TextStyle(${Object.entries(v)
        .map(([k, v]) => `${k}:${v}`)
        .join(',')}),`;
    });
    code += '};';

    let file;
    if (style.dirName) {
      file = `../lib/styles/${style.dirName}/${style.fileName}.dart`
    } else {
      file = `../lib/styles/${style.fileName}.dart`
    }
    fs.writeFileSync(file, code);
    process.execSync(`dart format ${file}`);
  });
}

function _generateStyleMap(styles, base16Styles) {
  let code = NOTICE_COMMENT;
  styles.forEach((item) => {
    code += `import '${item.fileName}.dart';\n`;
  });
  code += '\n';
  base16Styles.forEach((item) => {
    code += `import 'base16/${item.fileName}.dart' as base16;\n`;
  });
  code += '\n';
  code += 'final builtThemes = {'
  styles.forEach((item) => {
    code += `'${item.fileName}': ${item.name}Theme,`;
  });
  code += '};'
  code += '\n';
  code += '\n';
  code += 'final builtBase16Themes = {'
  base16Styles.forEach((item) => {
    code += `'base16-${item.fileName}': base16.${item.name}Theme,`;
  });
  code += '};'
  code += 'final builtinAllThemes = {...builtThemes, ...builtBase16Themes};'
  code += '\n';
  code += '\n';
  let file = `../lib/styles/all.dart`;
  fs.writeFileSync(file, code);
  process.execSync(`dart format ${file}`);
}

const convertColor = color => {
  if (color === 'inherit') {
    return;
  }
  if (color.startsWith('rgba(')) {
    return `Color.fromRGBO${color.slice(4)}`;
  }
  let rgb = '';
  if (color.includes('url(')) {
    return;
  } else if (color === 'white') {
    rgb = 'ffffff';
  } else if (color === 'black') {
    rgb = '000000';
  } else if (color === 'navy') {
    rgb = '000080';
  } else if (color === 'gold') {
    rgb = 'ffd700';
  } else if (color.startsWith('#')) {
    rgb = color.slice(1);
    if (rgb.length === 3) {
      rgb = rgb
        .split('')
        .map(x => x + x)
        .join('');
    }
  }
  return `Color(0xff${rgb})`;
};

exports.exec = function() {
  _generateAllStyles();
}