import '../../../core/utils/type_defs.dart';
import '../../models/todo/todo.dart';
import '../../repositories/todo.repository.dart';
import 'todo.usecase.dart';

class GetTodosUseCaseImpl extends GetTodosUseCase {
  GetTodosUseCaseImpl(this.todosRepository);
  final TodosRepository todosRepository;

  @override
  FutureEither<List<Todo>> execute() => todosRepository.loadTodos();
}
