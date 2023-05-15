import 'package:flutter/material.dart';
import 'package:flutter_init/app/core/theme/app_theme.dart';
import 'package:flutter_init/app/core/utils/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domains/usecases/theme/theme.usecase.dart';
import '../../../domains/usecases/theme/theme.usecase.provider.dart';
import 'states/theme_state.dart';

final themeControllerProvider =
    StateNotifierProvider<ThemeController, ThemeState>((ref) {
  return ThemeController(useCase: ref.watch(themeUseCaseProvider));
});

class ThemeController extends StateNotifier<ThemeState> {
  final ThemeUseCase _useCase;

  ThemeController({required ThemeUseCase useCase})
      : _useCase = useCase,
        super(const ThemeState.loading()) {
    getTheme();
  }

  Future<void> getTheme() async {
    final theme = await _useCase.getTheme();
    theme.fold(
      (l) => state = ThemeState.error(l),
      (r) async {
        try {
          var themeData = await loadThemeData(r);
          state = ThemeState.loaded(themeData);
        } catch (msg, stack) {
          state = ThemeState.error(Failure(msg.toString(), stack));
        }
      },
    );
  }

  Future<void> saveTheme(Brightness brightness) async {
    await _useCase.saveTheme(brightness);
    getTheme();
  }

  Future<ThemeData> loadThemeData(Brightness brightness) async {
    var themeData = brightness == Brightness.light
        ? AppTheme.lightTheme
        : AppTheme.lightTheme;
    return themeData;
  }
}
