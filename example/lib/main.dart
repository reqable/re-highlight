import 'package:flutter/material.dart';
import 'package:re_highlight/languages/all.dart';
import 'package:re_highlight/re_highlight.dart';
import 'package:re_highlight/styles/all.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _language;
  String? _theme;

  final CodeThemeController _controller = CodeThemeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Highlighting by Reqable'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                child: Text('Language'),
              ),
              DropdownButton<String>(
                  items: builtinAllLanguages.keys
                      .map((language) => DropdownMenuItem<String>(
                          value: language, child: Text(language)))
                      .toList(),
                  value: _language,
                  onChanged: (value) {
                    setState(() {
                      _language = value;
                      _controller.languages =
                          value == null ? const [] : [value];
                    });
                  }),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
                child: Text('Theme'),
              ),
              DropdownButton<String>(
                  items: builtinAllThemes.keys
                      .map((theme) => DropdownMenuItem<String>(
                          value: theme, child: Text(theme)))
                      .toList(),
                  value: _theme,
                  onChanged: (value) {
                    setState(() {
                      _theme = value;
                      _controller.theme = value == null
                          ? const {}
                          : builtinAllThemes[value] ?? const {};
                    });
                  }),
            ],
          ),
          Expanded(
            child: TextField(
                controller: _controller,
                maxLines: null,
                expands: true,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(border: OutlineInputBorder())),
          )
        ]),
      ),
    );
  }
}

class CodeThemeController extends TextEditingController {
  List<String> languages;
  Map<String, TextStyle> theme;

  late final Highlight _highlight;

  CodeThemeController({
    String? text,
    this.languages = const [],
    this.theme = const {},
  }) {
    _highlight = Highlight();
    _highlight.registerLanguages(builtinAllLanguages);
  }

  @override
  TextSpan buildTextSpan(
      {required BuildContext context,
      TextStyle? style,
      required bool withComposing}) {
    if (languages.isEmpty || theme.isEmpty) {
      return super.buildTextSpan(
          context: context, style: style, withComposing: withComposing);
    }
    final HighlightResult result = _highlight.highlightAuto(text, languages);
    final TextSpanRenderer renderer = TextSpanRenderer(style, theme);
    result.render(renderer);
    return renderer.span ??
        super.buildTextSpan(
            context: context, style: style, withComposing: withComposing);
  }
}
