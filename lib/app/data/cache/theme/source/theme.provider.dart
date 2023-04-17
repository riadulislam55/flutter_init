import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme.cache.dart';
import 'theme.cache.impl.dart';

final themeCacheProvider = Provider<ThemeCache>((ref) {
  return ThemeCacheImpl();
});
