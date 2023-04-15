import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'todo.api.dart';
import 'todo.api.impl.dart';

final todoApiProvider = Provider<TodoApi>((ref) {
  return TodoApiImpl();
});
