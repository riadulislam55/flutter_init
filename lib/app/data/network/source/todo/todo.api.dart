import 'package:dio/dio.dart';

abstract class TodoApi {
  Future<Response> getAllTodos();
}
