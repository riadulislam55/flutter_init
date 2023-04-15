abstract class TodosRepository {
  Future<List<dynamic>> loadTodos();

  Future<void> saveTodo(dynamic todo);

  Future<void> deleteTodo(String id);

  Future<dynamic> getTodoById(String id);

  Future<void> deleteAllTodos();
}
