import '../../../../domains/repositories/todo.repository.dart';
import '../../source/todo/todo.api.dart';

class TodoRepositoryImpl implements TodosRepository {
  TodoRepositoryImpl(this.api);
  final TodoApi api;

  @override
  Future<void> deleteAllTodos() {
    // api.getAllTodos();
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTodo(String id) {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }

  @override
  Future getTodoById(String id) {
    // TODO: implement getTodoById
    throw UnimplementedError();
  }

  @override
  Future<List<dynamic>> loadTodos() async {
    return <dynamic>[];
  }

  @override
  Future<void> saveTodo(todo) {
    // TODO: implement saveTodo
    throw UnimplementedError();
  }
}
