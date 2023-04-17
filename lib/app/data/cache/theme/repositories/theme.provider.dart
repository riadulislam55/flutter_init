import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domains/repositories/theme.repository.dart';
import '../source/theme.provider.dart';
import 'theme.repository.impl.dart';

final themeRepositoryProvider = Provider<ThemeRepository>((ref) {
  return ThemeRepositoryImpl(themeStorage: ref.read(themeCacheProvider));
});
