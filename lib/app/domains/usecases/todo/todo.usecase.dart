import 'package:flutter_init/app/domains/models/todo/todo.dart';

import '../../../core/utils/type_defs.dart';

abstract class GetTodosUseCase {
  FutureEither<List<Todo>> execute();
}

abstract class SaveTodoUseCase {
  Future<void> execute(dynamic todo);
}

abstract class GetTodoUseCase {
  Future<dynamic> execute(String id);
}

abstract class DeleteTodoUseCase {
  Future<void> execute(String id);
}
