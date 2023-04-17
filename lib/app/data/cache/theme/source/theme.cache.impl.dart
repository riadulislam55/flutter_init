import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme.cache.dart';
import 'theme.keys.dart';

class ThemeCacheImpl extends ThemeCache {
  final preference = GetIt.instance<SharedPreferences>();

  @override
  Future<bool> getBrightness() async {
    return preference.getBool(ThemeKeys.brightness) ?? false;
  }

  @override
  Future<void> saveBrightness(bool isLight) async {
    preference.setBool(ThemeKeys.brightness, isLight);
  }
}
