import 'package:flutter_init/app/core/app.initializer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'api/api.service.dart';

class ServiceBindings {
  static init() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    /// registers
    AppInitializer.getIt.registerSingleton<SharedPreferences>(preferences);
    AppInitializer.getIt.registerSingleton<ApiService>(ApiService());
  }
}
