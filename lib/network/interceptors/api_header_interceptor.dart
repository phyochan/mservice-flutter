import 'dart:async';

import 'package:chopper/chopper.dart';

class ApiHeaderInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    // TODO: implement onRequest
    Map<String, String> header = {
      "Authorization": "!F{d+_-%]-S%y+oF^MRGoaR)8<XoKErQyq?|l=t|@Ob/d%]|#lMH9_9%ym=C6mhO"
    };
    final newRequest = request.replace(headers: header);
    return newRequest;
  }

}