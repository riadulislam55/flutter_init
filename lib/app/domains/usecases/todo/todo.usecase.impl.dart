import '../../repositories/todo.repository.dart';
import 'todo.usecase.dart';

class GetTodoUseCaseImpl extends GetTodosUseCase {
  GetTodoUseCaseImpl(this.todosRepository);
  final TodosRepository todosRepository;

  @override
  Future<List<dynamic>> execute() => todosRepository.loadTodos();
}
