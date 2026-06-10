part of 're_highlight.dart';

class DataNode {
  String? scope;
  String? language;
  // DataNode | String
  final List<dynamic> children;

  DataNode({this.scope, this.language, required this.children});
}

abstract class Emitter {
  DataNode get root;
  void addText(String text);
  void startScope(String scope);
  void endScope();
  bool finalize();
  void closeAllNodes();
  void openNode(String scope);
  void closeNode();
  void _addSublanguage(Emitter emitter, String? subLanguageName);
}

abstract class _TokenTree extends Emitter {
  DataNode rootNode;
  late List<DataNode> stack;

  _TokenTree() : rootNode = DataNode(children: []) {
    stack = [rootNode];
  }

  DataNode get top => stack[stack.length - 1];

  @override
  DataNode get root => rootNode;

  void add(dynamic node) {
    top.children.add(node);
  }

  @override
  void openNode(String scope) {
    final DataNode node = DataNode(scope: scope, children: []);
    add(node);
    stack.add(node);
  }

  @override
  void closeNode() {
    if (stack.length > 1) {
      stack.removeLast();
    }
  }

  @override
  void closeAllNodes() {
    stack.clear();
  }

  void walk(HighlightRenderer builder) {
    _walk(builder, rootNode);
  }

  void _walk(HighlightRenderer builder, dynamic node) {
    if (node is String) {
      builder.addText(node);
    } else if (node is DataNode) {
      builder.openNode(node);
      for (final dynamic child in node.children) {
        _walk(builder, child);
      }
      builder.closeNode(node);
    }
  }
}

class _TokenTreeEmitter extends _TokenTree {
  @override
  void addText(String text) {
    if (text.isEmpty) {
      return;
    }
    add(text);
  }

  @override
  void startScope(String scope) {
    openNode(scope);
  }

  @override
  void endScope() {
    closeNode();
  }

  @override
  void _addSublanguage(Emitter emitter, String? name) {
    final DataNode node = emitter.root;
    if (name != null) {
      node.scope = 'language:$name';
    }
    add(node);
  }

  @override
  bool finalize() {
    closeAllNodes();
    return true;
  }
}
