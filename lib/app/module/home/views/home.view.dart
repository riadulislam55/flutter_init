import 'package:flutter_init/app/routes/index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/home.controller.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    var controller = ref.watch(homeControllerProvider);
    return controller.when(
      loading: () => const CircularProgressIndicator(),
      data: (data) => Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text("Home View"),
        ),
      ),
      error: (error, stactTrace) => Container(),
    );
  }
}
