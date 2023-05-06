import 'package:flutter/material.dart';

import '../../../core/utils/type_defs.dart';
import '../../repositories/theme.repository.dart';

class ThemeUseCase {
  final ThemeRepository _repository;

  ThemeUseCase({required ThemeRepository repository})
      : _repository = repository;

  FutureEither<Brightness> getTheme() async {
    return await _repository.getTheme();
  }

  FutureEitherVoid saveTheme(Brightness brightness) async {
    return await _repository.setTheme(brightness);
  }
}
