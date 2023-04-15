import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_init/app/core/service/service.bindings.dart';
import 'package:get_it/get_it.dart';

class AppInitializer {
  static late GetIt getIt;

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    /// catch flutter error in release mode
    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      if (kReleaseMode) exit(1);
    };

    await _initServiceLocator();
    await _initServiceBindings();
  }

  static Future<void> _initServiceLocator() async {
    getIt = GetIt.instance;
  }

  static Future<void> _initServiceBindings() async {
    await ServiceBindings.init();
  }
}
