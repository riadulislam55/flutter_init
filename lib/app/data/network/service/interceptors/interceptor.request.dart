import 'package:dio/dio.dart';

class RequestInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Accept'] = "application/json";
    // if (storage.getUser() != null && storage.getUser()!.token != null) {
    //   options.headers['Authorization'] =
    //   "Bearer ${storage.getUser()!.token}";
    // }
    return handler.next(options);
  }
}