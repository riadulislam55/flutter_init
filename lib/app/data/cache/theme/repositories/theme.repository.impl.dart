import 'package:flutter/material.dart';
import 'package:flutter_init/app/core/utils/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/type_defs.dart';
import '../../../../domains/repositories/theme.repository.dart';
import '../source/theme.cache.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeCache _themeStorage;

  ThemeRepositoryImpl({required ThemeCache themeStorage})
      : _themeStorage = themeStorage;

  @override
  FutureEither<Brightness> getTheme() async {
    try {
      final brightness = await _themeStorage.getBrightness();
      return right(brightness ? Brightness.light : Brightness.dark);
    } catch (err, stack) {
      return left(Failure(err.toString(), stack));
    }
  }

  @override
  FutureEitherVoid setTheme(Brightness brightness) async {
    try {
      return right(
          await _themeStorage.saveBrightness(brightness == Brightness.light));
    } catch (err, stack) {
      return left(Failure(err.toString(), stack));
    }
  }
}
