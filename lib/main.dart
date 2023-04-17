import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_init/app/core/app.initializer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/module/app.dart';

void main() {
  runZonedGuarded(() async {
    await AppInitializer.init();
    runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );
  }, (error, stack) {});
}
