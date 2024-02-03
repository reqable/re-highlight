part of re_highlight;

class ModeCallbackResponse {

  late final Map<String, dynamic> data;
  late bool isMatchIgnored;

  ModeCallbackResponse(Mode mode) {
    data = (mode.data ??= {});
    isMatchIgnored = false;
  }

  void ignoreMatch() {
    isMatchIgnored = true;
  }

}