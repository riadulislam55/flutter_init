import 'package:flutter/material.dart';

import '../../../../domains/models/theme/theme.model.dart';
import '../../../../domains/repositories/theme.repository.dart';
import '../source/theme.cache.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeCache _themeStorage;

  ThemeRepositoryImpl({required ThemeCache themeStorage})
      : _themeStorage = themeStorage;

  @override
  Future<ThemeModel> getTheme() async {
    final brightness = await _themeStorage.getBrightness();

    return ThemeModel(
      brightness: brightness ? Brightness.light : Brightness.dark,
    );
  }

  @override
  Future<void> setTheme(ThemeModel theme) async {
    await _themeStorage.saveBrightness(theme.brightness == Brightness.light);
  }
}
