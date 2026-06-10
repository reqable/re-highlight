part of 're_highlight.dart';

abstract class HighlightRenderer {
  void addText(String text);

  void openNode(DataNode node);

  void closeNode(DataNode node);
}
