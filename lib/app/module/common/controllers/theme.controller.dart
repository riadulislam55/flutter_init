import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_theme/json_theme.dart';

import '../../../core/utils/log.print.helper.dart';
import '../../../domains/models/theme/theme.model.dart';
import '../../../domains/usecases/theme/theme.usecase.dart';
import '../../../domains/usecases/theme/theme.usecase.provider.dart';

final themeControllerProvider =
    StateNotifierProvider<ThemeController, ThemeModel>((ref) {
  return ThemeController(useCase: ref.watch(themeUseCaseProvider));
});

final themeLoadProvider =
    FutureProvider.autoDispose.family((ref, brightness) async {
  var theme = brightness == Brightness.light ? "light_theme" : "light_theme";
  final themeStr = await rootBundle.loadString('assets/themes/$theme.json');
  final themeJson = json.decode(themeStr);

  final themeData = ThemeDecoder.decodeThemeData(
        themeJson,
        validate: true,
      ) ??
      ThemeData();
  return themeData;
});

class ThemeController extends StateNotifier<ThemeModel> {
  final ThemeUseCase _useCase;

  ThemeController({required ThemeUseCase useCase})
      : _useCase = useCase,
        super(ThemeModel(brightness: Brightness.light));

  Future<void> getTheme() async {
    final theme = await _useCase.getTheme();
    theme.fold((l) => logError(l.message), (r) => state = r);
  }

  Future<void> saveTheme(ThemeModel theme) async {
    await _useCase.saveTheme(theme);
    state = theme;
  }
}
