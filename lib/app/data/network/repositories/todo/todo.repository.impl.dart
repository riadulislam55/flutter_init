import 'package:flutter_init/app/core/utils/type_defs.dart';
import 'package:flutter_init/app/domains/models/todo/todo.dart';

import '../../../../domains/repositories/todo.repository.dart';
import '../../source/todo/todo.api.dart';

class TodoRepositoryImpl implements TodosRepository {
  TodoRepositoryImpl(this.api);
  final TodoApi api;

  @override
  FutureEitherVoid deleteAllTodos() {
    // TODO: implement deleteAllTodos
    throw UnimplementedError();
  }

  @override
  FutureEitherVoid deleteTodo(String id) {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }

  @override
  FutureEither getTodoById(String id) {
    // TODO: implement getTodoById
    throw UnimplementedError();
  }

  @override
  FutureEitherVoid saveTodo(todo) {
    // TODO: implement saveTodo
    throw UnimplementedError();
  }

  @override
  FutureEither<List<Todo>> loadTodos() {
    // TODO: implement loadTodos
    throw UnimplementedError();
  }
}
