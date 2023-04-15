import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domains/usecases/todo/todo.usecase.provider.dart';

final todoListProvider =
    StateNotifierProvider<TodosStateNotifier, dynamic>((ref) {
  return TodosStateNotifier(ref);
});

class TodosStateNotifier extends StateNotifier<dynamic> {
  TodosStateNotifier(this.ref) : super({}) {
    loadTodos();
  }

  final Ref ref;
  late final getTodos = ref.read(todoUsecaseProvider);

  Future<void> loadTodos() async {
    state = await getTodos.execute();
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
