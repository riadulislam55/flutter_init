part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const DETAILS = _Paths.DETAILS;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const DETAILS = '/details';
}

extension RouteExtension on String {
  String withId() {
    return "$this/:id";
  }
}
