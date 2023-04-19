import '../../core/utils/type_defs.dart';
import '../models/todo/todo.dart';

abstract class TodosRepository {
  FutureEither<List<Todo>> loadTodos();

  FutureEitherVoid saveTodo(dynamic todo);

  FutureEitherVoid deleteTodo(String id);

  FutureEither<dynamic> getTodoById(String id);

  FutureEitherVoid deleteAllTodos();
}
