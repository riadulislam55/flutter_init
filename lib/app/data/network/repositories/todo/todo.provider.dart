import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domains/repositories/todo.repository.dart';
import '../../source/todo/todo.provider.dart';
import 'todo.repository.impl.dart';

final todosProvider = Provider<TodosRepository>((ref) {
  return TodoRepositoryImpl(ref.read(todoApiProvider));
});
