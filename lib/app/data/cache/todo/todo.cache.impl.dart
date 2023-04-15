import 'package:flutter_init/app/data/cache/todo/todo.cache.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoCacheImpl extends TodoCache {
  final preference = GetIt.instance<SharedPreferences>();

  @override
  read(String key) {}

  @override
  void write(String key, value) {}
}
