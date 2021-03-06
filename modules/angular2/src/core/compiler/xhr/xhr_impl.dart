import 'dart:async';
import 'dart:html';
import './xhr.dart' show XHR;

class XHRImpl extends XHR {
  Future<String> get(String url) {
    return HttpRequest.request(url).then(
      (HttpRequest request) => request.responseText,
      onError: (Error e) => throw 'Failed to load $url'
    );
  }
}
