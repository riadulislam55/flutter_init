import 'package:flutter_riverpod/flutter_riverpod.dart';

final todosProvider = StateNotifierProvider<HomeViewModel, bool>((ref) {
  // ref.watch(provider)
  return HomeViewModel();
});

class HomeViewModel extends StateNotifier<bool> {
  HomeViewModel(super.state);

  Future<void> login() async {
    // ref.watch();
  }
}