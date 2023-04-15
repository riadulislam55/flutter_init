// ignore_for_file: non_constant_identifier_names

import '../../app/core/values/language/string.translate.helper.dart';

import 'index.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static String get INITIAL_ROUTE => _Paths.HOME;

  static final routes = GoRouter(
    initialLocation: INITIAL_ROUTE,
    routes: <RouteBase>[
      GoRoute(
        path: _Paths.HOME,
        builder: (context, state) => Container(
          child: Center(
            child: Text("helloWorld".tr),
          ),
        ),
      ),
      GoRoute(
        path: _Paths.DETAILS,
        builder: (context, state) {
          final id = state.params['id'];
          return Container();
        },
      ),
    ],
  );
}
