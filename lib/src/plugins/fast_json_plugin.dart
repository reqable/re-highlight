part of '../re_highlight.dart';

class FastJsonPlugin implements HLPlugin {
  const FastJsonPlugin();

  @override
  void beforeHighlight(BeforeHighlightContext context) {
    if (context.language != 'json') {
      return;
    }
    final String code = context.code;
    if (code.isEmpty) {
      return;
    }
    context.result = _highlightJson(code);
  }

  @override
  void afterHighlight(HighlightResult result) {}

  HighlightResult? _highlightJson(String code) {
    final _TokenTree tokenTree = _TokenTreeEmitter();
    try {
      final _JsonParser parser = _JsonParser(code, tokenTree);
      parser.parse();
    } catch (e) {
      // Fallback to highlight engine
      return null;
    }
    return HighlightResult(
      code: code,
      illegal: false,
      relevance: 1,
      emitter: tokenTree,
    );
  }
}

class _JsonParser {
  final String _code;
  final _TokenTree _tokenTree;
  int _pos = 0;
  int _lastPos = 0;
  late final int _codeLength;

  _JsonParser(this._code, this._tokenTree) {
    _codeLength = _code.length;
  }

  void parse() {
    while (_pos < _codeLength) {
      _parseValue();
      _skipWhitespace();
      _flushText();
    }
  }

  void _flushText() {
    if (_pos > _lastPos) {
      _tokenTree.addText(_code.substring(_lastPos, _pos));
      _lastPos = _pos;
    }
  }

  void _parseValue() {
    _skipWhitespace();
    if (_pos >= _codeLength) {
      return;
    }

    final char = _code[_pos];

    if (char == '{') {
      _parseObject();
    } else if (char == '[') {
      _parseArray();
    } else if (char == '"') {
      _parseString(false);
    } else if (_isDigit(char) || char == '-') {
      _parseNumber();
    } else if (char == 't') {
      _parseLiteral('true');
    } else if (char == 'f') {
      _parseLiteral('false');
    } else if (char == 'n') {
      _parseLiteral('null');
    } else {
      throw FormatException(
        'Invalid character ${_code[_pos]} at position $_pos',
      );
    }
  }

  void _parseObject() {
    _flushText();
    _tokenTree.openNode('punctuation');
    _tokenTree.addText('{');
    _tokenTree.closeNode();
    _pos++;
    _lastPos = _pos;

    bool first = true;
    while (_pos < _codeLength) {
      _skipWhitespace();
      _flushText();

      if (_pos < _codeLength && _code[_pos] == '}') {
        _tokenTree.openNode('punctuation');
        _tokenTree.addText('}');
        _tokenTree.closeNode();
        _pos++;
        _lastPos = _pos;
        return;
      }

      if (!first) {
        if (_pos < _codeLength && _code[_pos] == ',') {
          _tokenTree.openNode('punctuation');
          _tokenTree.addText(',');
          _tokenTree.closeNode();
          _pos++;
          _lastPos = _pos;
        } else {
          throw FormatException('Missing comma at position $_pos');
        }
      }

      _skipWhitespace();
      _flushText();

      if (_pos < _codeLength && _code[_pos] == '"') {
        _parseString(true);
      } else {
        throw FormatException('Key should be a string at position $_pos');
      }

      _skipWhitespace();
      _flushText();

      if (_pos < _codeLength && _code[_pos] == ':') {
        _tokenTree.openNode('punctuation');
        _tokenTree.addText(':');
        _tokenTree.closeNode();
        _pos++;
        _lastPos = _pos;
      } else {
        throw FormatException('Missing colon at position $_pos');
      }

      _parseValue();
      first = false;
    }

    throw const FormatException('Object not closed');
  }

  void _parseArray() {
    _flushText();
    _tokenTree.openNode('punctuation');
    _tokenTree.addText('[');
    _tokenTree.closeNode();
    _pos++;
    _lastPos = _pos;

    bool first = true;
    while (_pos < _codeLength) {
      _skipWhitespace();
      _flushText();

      if (_pos < _codeLength && _code[_pos] == ']') {
        _tokenTree.openNode('punctuation');
        _tokenTree.addText(']');
        _tokenTree.closeNode();
        _pos++;
        _lastPos = _pos;
        return;
      }

      if (!first) {
        if (_pos < _codeLength && _code[_pos] == ',') {
          _tokenTree.openNode('punctuation');
          _tokenTree.addText(',');
          _tokenTree.closeNode();
          _pos++;
          _lastPos = _pos;
        } else {
          throw FormatException('Missing comma at position $_pos');
        }
      }

      _parseValue();
      first = false;
    }

    throw const FormatException('Array not closed');
  }

  void _parseString(bool isKey) {
    _flushText();
    final startPos = _pos;
    _tokenTree.openNode(isKey ? 'attr' : 'string');

    _pos++;
    bool escaped = false;

    while (_pos < _codeLength) {
      final char = _code[_pos];
      if (escaped) {
        escaped = false;
      } else {
        if (char == '\\') {
          escaped = true;
        } else if (char == '"') {
          break;
        }
      }
      _pos++;
    }

    if (_pos >= _codeLength) {
      throw const FormatException('String not closed');
    }

    _pos++; // Skip closing quote
    _tokenTree.addText(_code.substring(startPos, _pos));
    _tokenTree.closeNode();
    _lastPos = _pos;
  }

  void _parseNumber() {
    _flushText();
    final startPos = _pos;

    if (_code[_pos] == '-') {
      _pos++;
    }

    if (_pos < _codeLength && _code[_pos] == '0') {
      _pos++;
    } else if (_pos < _codeLength && _isDigit(_code[_pos])) {
      while (_pos < _codeLength && _isDigit(_code[_pos])) {
        _pos++;
      }
    } else {
      throw FormatException('Invalid number at position $_pos');
    }

    if (_pos < _codeLength && _code[_pos] == '.') {
      _pos++;

      if (_pos >= _codeLength || !_isDigit(_code[_pos])) {
        throw const FormatException('Decimal part should have digits');
      }

      while (_pos < _codeLength && _isDigit(_code[_pos])) {
        _pos++;
      }
    }

    if (_pos < _codeLength && (_code[_pos] == 'e' || _code[_pos] == 'E')) {
      _pos++;

      if (_pos < _codeLength && (_code[_pos] == '+' || _code[_pos] == '-')) {
        _pos++;
      }

      if (_pos >= _codeLength || !_isDigit(_code[_pos])) {
        throw const FormatException('Exponential part should have digits');
      }

      while (_pos < _codeLength && _isDigit(_code[_pos])) {
        _pos++;
      }
    }

    _tokenTree.openNode('number');
    _tokenTree.addText(_code.substring(startPos, _pos));
    _tokenTree.closeNode();
    _lastPos = _pos;
  }

  void _parseLiteral(String literal) {
    if (_pos + literal.length > _codeLength ||
        _code.substring(_pos, _pos + literal.length) != literal) {
      throw FormatException('Expected $literal at position $_pos');
    }

    _flushText();
    _tokenTree.openNode('keyword');
    _tokenTree.addText(literal);
    _tokenTree.closeNode();
    _pos += literal.length;
    _lastPos = _pos;
  }

  void _skipWhitespace() {
    while (_pos < _codeLength && _isWhitespace(_code[_pos])) {
      _pos++;
    }
  }

  bool _isWhitespace(String char) {
    return char == ' ' || char == '\t' || char == '\n' || char == '\r';
  }

  bool _isDigit(String char) {
    final int code = char.codeUnitAt(0);
    return code >= 48 && code <= 57;
  }
}
