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
        builder: (context, state) => const HomeView(),
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
