import 'package:flutter_init/app/core/app.initializer.dart';
import 'package:flutter_init/app/data/cache/cache.storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'network/service/api.service.dart';

class DataBindings {

  static init() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    /// registers
    AppInitializer.getIt.registerSingleton<CacheStorage>(CacheStorage(preferences: preferences));
    AppInitializer.getIt.registerSingleton<ApiService>(ApiService());
  }
}