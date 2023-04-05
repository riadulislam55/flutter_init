import 'index.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static String get INITIAL_ROUTE => "/";

  static final routes = GoRouter(
    initialLocation: INITIAL_ROUTE,
    routes: <RouteBase>[
      GoRoute(
        path: Routes.HOME,
        builder: (context, state) => Container(),
      ),
      GoRoute(
        path: Routes.DETAILS.withId(),
        builder: (context, state) {
          final id = state.params['id'];
          return Container();
        },
      ),
    ],
  );
}
