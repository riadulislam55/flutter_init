// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = RouteName.HOME;
  static const DETAILS = RouteName.DETAILS;
}

abstract class _Paths {
  _Paths._();
  static const HOME = RouteName.DETAILS;
  static const DETAILS = '${RouteName.DETAILS}/:id';
}

abstract class RouteName {
  static const HOME = '/home';
  static const DETAILS = '/details';
}
