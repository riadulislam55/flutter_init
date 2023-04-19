import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domains/usecases/todo/todo.usecase.provider.dart';
import 'state/todo_state.dart';

final homeControllerProvider =
    StateNotifierProvider<HomeController, TodoState>((ref) {
  return HomeController(ref);
});

class HomeController extends StateNotifier<TodoState> {
  final Ref ref;

  HomeController(this.ref) : super(const TodoState.loading()) {
    loadTodos();
  }

  late final getTodos = ref.read(todoUsecaseProvider);

  Future<void> loadTodos() async {
    state = const TodoState.loading();
    var todos = await getTodos.execute();
    todos.fold(
      (l) => state = TodoState.error(l),
      (r) => state = TodoState.loaded(r),
    );
  }

  // Future<void> save(dynamic todo) async {
  //   await ref.read(saveTodoProvider).execute(todo);
  //   await loadTodos();
  // }

  // Future<dynamic> get(String id) async {
  //   return await ref.read(getTodoProvider).execute(id);
  // }

  // Future<void> delete(String id) async {
  //   await ref.read(deleteTodoProvider).execute(id);
  //   await loadTodos();
  // }
}
