import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/network/repositories/todo/todo.provider.dart';
import 'todo.usecase.dart';
import 'todo.usecase.impl.dart';

final todoUsecaseProvider = Provider<GetTodosUseCase>((ref) {
  return GetTodosUseCaseImpl(ref.read(todoRepositoryProvider));
});
