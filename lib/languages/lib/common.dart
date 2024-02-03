import 'package:re_highlight/re_highlight.dart';

/// END_SAME_AS_BEGIN
ModeCallback callbackOnBegin1 = (EnhancedMatch m, ModeCallbackResponse resp) {
  resp.data['_beginMatch'] = m[1];
};

/// END_SAME_AS_BEGIN
ModeCallback callbackOnEnd1 = (EnhancedMatch m, ModeCallbackResponse resp) {
  if (resp.data['_beginMatch'] != m[1]) {
    resp.ignoreMatch();
  }
};

/// SHEBANG
ModeCallback callbackOnBegin2 = (EnhancedMatch m, ModeCallbackResponse resp) {
  if (m.index != 0) {
    resp.ignoreMatch();
  }
};