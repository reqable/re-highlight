# Re-Highlight

[![latest version](https://img.shields.io/pub/v/re_highlight.svg?color=blue)](https://pub.dev/packages/re_highlight)

`Re-Highlight`是一个强大的文本语法高亮库，是[Reqable](https://reqable.com)项目中的一个模块。`Re-Highlight`可以将一个文本自动语法高亮，只需要定义好一个语法规则。当然，`Re-Highlight`已经内置了几十种编程语言的语法高亮规则，几行代码即可实现代码语法高亮。

`Re-Highlight`的实现代码全部由`Dart`语言编写，翻译自[highlightjs](https://github.com/highlightjs/highlight.js)项目。`Re-Highlight`的实现思路和灵感则来自于[highlight.dart](https://github.com/git-touch/highlight.dart)项目，感谢这些伟大的开源项目。由于`highlight.dart`项目存在一些问题且已停止更新， 所以才有了本项目的诞生。

👏👏👏 `Re-Highlight`已同步`highlightjs`当前的最新版本v11.9.0，并验证通过全部的测试用例。

下图是高亮效果，更多的样式和语言请参考example。

![art](./arts/art01.png)

## 开始使用

添加依赖到 `pubspec.yaml`.

```yaml
dependencies:
  re_highlight: ^0.0.3
```

高亮你的文字或者代码。

```dart
final Highlight highlight = Highlight();
highlight.registerLanguages(builtinAllLanguages);

const languages = [
  'json',
  'python',
  // other language
];

// Highlight your text or code.
final HighlightResult result = _highlight.highlightAuto('Your text or code', languages);

// Define your styles.
final TextStyle defaultStyle = TextStyle();
final Map<String, TextStyle> yourTheme = rainbowTheme;

// Convert highlight result to TextSpan
final TextSpanRenderer renderer = TextSpanRenderer(defaultStyle, yourTheme);
result.render(renderer);
final TextSpan? span = renderer.span;

// Pass the span to your Text Widget or TextEditingController.
```

更多代码请参考example。

## 原理和调试

`Re-Highlight`项目分为三个部分：高亮规则解释器，高亮规则文件和主题样式文件。规则解释器位于`src`目录下，高亮规则文件位于`lib\languages`目录下，主题样式文件文件位于`lib\styles`目录下。其中后两者是根据`highlightjs`中的文件自动生成，无需手动修改。

您可以使用下面的步骤自动生成高亮规则文件和主题样式文件。

- 安装`gulp`。

```
npm install gulp -g
```

- 同步`highlightjs`相关模块。

```
git submodule update --remote --init
```

- 生成高亮规则和主题样式。

```
cd tool
npm install
gulp generate
```

- 运行测试用例。

```
flutter test
```

高亮规则解释器部分的代码是完全参照`highlightjs`翻译而来，我们尽量保持了文件结构、类名、函数名和代码逻辑的一致，方便后续升级同步。

## 接入项目

- [re-editor](https://github.com/reqable/re-editor) 基于Flutter的轻量级文本和代码编辑器。

## 问题和需求

`Re-Highlight`的高亮语法和逻辑严格翻译自`highlightjs`项目，如果您发现有语法问题或者需要支持新的语言，建议提交至[highlightjs](https://github.com/highlightjs/highlight.js)，我们会尽量及时同步。

如果是`Dart`或者`Flutter`相关的问题，欢迎在此项目提交Issue或者PR。

## 赞助

如果您希望赞助本项目，请优先赞助给`highlightjs`项目。如果仍有余力的话，可以通过购买[Reqable](https://reqable.com/pricing)的许可证来赞助我们。