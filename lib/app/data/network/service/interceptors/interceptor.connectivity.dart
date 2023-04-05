import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

class ConnectivityInterceptors extends Interceptor {
  final Connectivity connectivity;

  ConnectivityInterceptors({required this.connectivity});

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return handler.reject(DioError(
        requestOptions: options,
        error: "No internet connection!",
      ));
    }
    return super.onRequest(options, handler);
  }
}
