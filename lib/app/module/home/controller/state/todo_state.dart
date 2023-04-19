import 'package:flutter_init/app/domains/models/todo/todo.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/failure.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.loading() = _Loading;
  const factory TodoState.loaded(List<Todo> todos) = _Loaded;
  const factory TodoState.error(Failure message) = _Error;
}
