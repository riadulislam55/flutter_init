import 'package:flutter_init/app/data/cache/cache.keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cache.interface.dart';

class CacheStorage extends CacheInterface {
  late SharedPreferences preferences;

  CacheStorage({required this.preferences});

  @override
  void setId(String id) {
    print(CacheKeys.isLogin);
  }

}