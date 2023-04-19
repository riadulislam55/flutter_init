import 'package:flutter/material.dart';
import 'package:flutter_init/app/core/utils/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/type_defs.dart';
import '../../../../domains/models/theme/theme.model.dart';
import '../../../../domains/repositories/theme.repository.dart';
import '../source/theme.cache.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeCache _themeStorage;

  ThemeRepositoryImpl({required ThemeCache themeStorage})
      : _themeStorage = themeStorage;

  @override
  FutureEither<ThemeModel> getTheme() async {
    try {
      final brightness = await _themeStorage.getBrightness();
      return right(ThemeModel(
        brightness: brightness ? Brightness.light : Brightness.dark,
      ));
    } catch (err, stack) {
      return left(Failure(err.toString(), stack));
    }
  }

  @override
  FutureEitherVoid setTheme(ThemeModel theme) async {
    try {
      return right(await _themeStorage
          .saveBrightness(theme.brightness == Brightness.light));
    } catch (err, stack) {
      return left(Failure(err.toString(), stack));
    }
  }
}
