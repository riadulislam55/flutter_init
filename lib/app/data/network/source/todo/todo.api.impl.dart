import 'package:dio/dio.dart';
import 'package:flutter_init/app/data/network/source/todo/todo.api.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/service/api/api.service.dart';
import 'todo.urls.dart';

class TodoApiImpl extends TodoApi {
  final service = GetIt.instance<ApiService>();

  String get prefix => 'api/';

  @override
  Future<Response> getAllTodos() => service.connect.get(TodoUrls.getAllTodo);
}
