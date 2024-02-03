import 'package:re_highlight/re_highlight.dart';

ModeCallback callbackOnBegin = (EnhancedMatch match, ModeCallbackResponse response) {
  response.data['_beginMatch'] = match[1] ?? match[2];
};

ModeCallback callbackOnEnd = (EnhancedMatch match, ModeCallbackResponse response) {
  if (response.data['_beginMatch'] != match[1]) {
    response.ignoreMatch();
  }
};