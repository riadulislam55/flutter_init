import '../../repositories/todo.repository.dart';
import 'todo.usecase.dart';

class GetTodosUseCaseImpl extends GetTodosUseCase {
  GetTodosUseCaseImpl(this.todosRepository);
  final TodosRepository todosRepository;

  @override
  Future<List<dynamic>> execute() => todosRepository.loadTodos();
}
