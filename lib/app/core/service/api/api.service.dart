import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_init/app/core/values/configs/app.config.dart';
import 'interceptors/interceptors.dart';

class ApiService {
  late Dio connect;
  late Connectivity connectivity;

  ApiService() {
    connect = Dio();
    connectivity = Connectivity();

    connect.options.baseUrl = AppConfig.baseUrl;
    connect.options.connectTimeout = const Duration(seconds: 20);
    connect.options.receiveTimeout = const Duration(seconds: 20);

    /// for ssl certificate restriction
    // (connect.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
    //   client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    //   return client;
    // };

    connect.interceptors
        .add(ConnectivityInterceptors(connectivity: connectivity));
    connect.interceptors.add(RequestInterceptor());
    connect.interceptors.add(ResponseInterceptor());
    connect.interceptors.add(ErrorInterceptor());
  }
}
