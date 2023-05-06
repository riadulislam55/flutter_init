import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/failure.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.loading() = _Loading;
  const factory ThemeState.loaded(ThemeData data) = _Loaded;
  const factory ThemeState.error(Failure message) = _Error;
}
