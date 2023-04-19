import 'package:flutter_init/app/core/values/language/string.translate.helper.dart';
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
    var homeState = ref.watch(homeControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("home".tr(context)),
        centerTitle: false,
      ),
      body: Center(
        child: homeState.when(
          loading: () => const CircularProgressIndicator(),
          loaded: (data) => const Text("Home View"),
          error: (failer) => const Text("failure"),
        ),
      ),
    );
  }
}
