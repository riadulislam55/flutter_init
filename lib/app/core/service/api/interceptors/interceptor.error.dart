import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }

  static String dioError(DioErrorType type) {
    String message = 'Error';
    if (type == DioErrorType.connectionTimeout) {
      message = "Connection Time Out!";
    } else if (type == DioErrorType.receiveTimeout) {
      message = "Received Time Out!";
    } else if (type == DioErrorType.cancel) {
      message = "Canceled!";
    } else if (type == DioErrorType.sendTimeout) {
      message = "Send Time Out!";
    }
    return message;
  }
}
