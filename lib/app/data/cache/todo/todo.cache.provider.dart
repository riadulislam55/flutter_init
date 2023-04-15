import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'todo.cache.dart';
import 'todo.cache.impl.dart';

final todoCacheProvider = Provider<TodoCache>((ref) {
  return TodoCacheImpl();
});
