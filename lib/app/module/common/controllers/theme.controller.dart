import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domains/models/theme/theme.model.dart';
import '../../../domains/usecases/theme/theme.usecase.dart';
import '../../../domains/usecases/theme/theme.usecase.provider.dart';

final themeControllerProvider =
    StateNotifierProvider<ThemeController, ThemeModel>((ref) {
  return ThemeController(useCase: ref.watch(themeUseCaseProvider));
});

class ThemeController extends StateNotifier<ThemeModel> {
  final ThemeUseCase _useCase;

  ThemeController({required ThemeUseCase useCase})
      : _useCase = useCase,
        super(ThemeModel(brightness: Brightness.light));

  Future<void> getTheme() async {
    final theme = await _useCase.getTheme();
    state = theme;
  }

  Future<void> saveTheme(ThemeModel theme) async {
    await _useCase.saveTheme(theme);
    state = theme;
  }
}
