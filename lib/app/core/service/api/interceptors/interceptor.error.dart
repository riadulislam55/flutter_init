import 'dart:convert';

import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.type == DioErrorType.badResponse) {
      if (err.response != null) {
        try {
          final errorJson = json.decode(err.response.toString());
          return getDioError(err, handler, errorJson['message']);
        } catch (e) {
          return getDioError(err, handler, e.toString());
        }
      } else {
        return getDioError(err, handler, "Response not found!");
      }
    } else if (err.type == DioErrorType.connectionTimeout) {
      return getDioError(err, handler, "Connection Time Out!");
    } else if (err.type == DioErrorType.receiveTimeout) {
      return getDioError(err, handler, "Received Time Out!");
    } else if (err.type == DioErrorType.cancel) {
      return getDioError(err, handler, "Request canceled!");
    } else if (err.type == DioErrorType.sendTimeout) {
      return getDioError(err, handler, "Send Time Out!");
    } else if (err.type == DioErrorType.badCertificate) {
      return getDioError(err, handler, "Bad certificate!");
    } else if (err.type == DioErrorType.unknown) {
      return getDioError(err, handler, "Unable to Process your request");
    }
    return handler.next(err);
  }

  void getDioError(
      DioError err, ErrorInterceptorHandler handler, String message) {
    return handler.reject(
      DioError(
        requestOptions: err.requestOptions,
        error: message,
      ),
    );
  }
}
