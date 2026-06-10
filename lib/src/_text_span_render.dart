part of 're_highlight.dart';

class _TextSpanRenderer implements TextSpanRenderer {
  final TextStyle? _base;
  final Map<String, TextStyle> _theme;
  final List<_HighlighTextSpan> _stack;
  final List<TextSpan> _results;

  _TextSpanRenderer(this._base, this._theme) : _stack = [], _results = [];

  @override
  void addText(String text) {
    if (_stack.isEmpty) {
      _results.add(TextSpan(text: text, style: _base));
    } else {
      final _HighlighTextSpan top = _stack.removeLast();
      if (top.node.scope != null) {
        _stack.add(
          top.addSpan(
            TextSpan(text: text, style: _theme[top.node.scope] ?? _base),
          ),
        );
      } else {
        _stack.add(top.addSpan(TextSpan(text: text, style: _base)));
      }
    }
  }

  @override
  void closeNode(DataNode node) {
    final TextSpan top = _stack.removeLast();
    if (_stack.isNotEmpty) {
      _stack.last = _stack.last.addSpan(top);
    } else {
      _results.add(top);
    }
  }

  @override
  void openNode(DataNode node) {
    _stack.add(_HighlighTextSpan(node: node, style: _base));
  }

  @override
  TextSpan? get span {
    if (_results.isEmpty) {
      return null;
    }
    if (_results.length == 1) {
      return _results.first;
    }
    return TextSpan(children: _results, style: _base);
  }
}

class _HighlighTextSpan extends TextSpan {
  final DataNode node;

  const _HighlighTextSpan({
    required this.node,
    super.text,
    super.children,
    super.style,
  });

  _HighlighTextSpan addSpan(TextSpan span) {
    return _HighlighTextSpan(
      node: node,
      style: style,
      children: [...children ?? [], span],
    );
  }
}
