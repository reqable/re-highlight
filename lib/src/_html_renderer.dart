part of 're_highlight.dart';

const String _kSpanClose = '</span>';

String _escapeHTML(String value) {
  return value
      .replaceAll(r'&', '&amp;')
      .replaceAll(getRegExp(r'<'), '&lt;')
      .replaceAll(getRegExp(r'>'), '&gt;')
      .replaceAll(getRegExp(r'"'), '&quot;')
      .replaceAll(getRegExp(r"'"), '&#x27;');
}

/// Determines if a node needs to be wrapped in <span>
bool _emitsWrappingTags(DataNode node) {
  return node.scope != null;
}

String scopeToCSSClass(String name, String prefix) {
  // sub-language
  if (name.startsWith("language:")) {
    return name.replaceAll("language:", "language-");
  }
  // tiered scope: comment.line
  if (name.contains('.')) {
    final List<String> pieces = name.split('.');
    return [
      '$prefix${pieces.removeAt(0)}',
      ...(pieces.mapIndexed((i, x) => '$x${'_' * (i + 1)}')),
    ].join(' ');
  }
  // simple scope
  return '$prefix$name';
}

class _HTMLRenderer implements HighlightRenderer {
  final _TokenTree parseTree;
  final String classPrefix;

  late String buffer;

  /// Creates a new HTMLRenderer
  _HTMLRenderer(this.parseTree, this.classPrefix) {
    buffer = '';
    parseTree.walk(this);
  }

  /// Adds texts to the output stream
  @override
  void addText(String text) {
    buffer += _escapeHTML(text);
  }

  /// Adds a node open to the output stream (if needed)
  @override
  void openNode(DataNode node) {
    if (!_emitsWrappingTags(node)) {
      return;
    }

    final String className = scopeToCSSClass(node.scope!, classPrefix);
    span(className);
  }

  /// Adds a node close to the output stream (if needed)
  @override
  void closeNode(DataNode node) {
    if (!_emitsWrappingTags(node)) {
      return;
    }

    buffer += _kSpanClose;
  }

  /// returns the accumulated buffer
  String value() {
    return buffer;
  }

  // helpers

  /// Builds a span element
  void span(String className) {
    buffer += '<span class="$className">';
  }
}
