abstract class GetTodosUseCase {
  Future<List<dynamic>> execute();
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
