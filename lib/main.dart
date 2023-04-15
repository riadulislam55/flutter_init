import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/module/app.dart';

void main() {
  runZonedGuarded(() async {
    runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );
  }, (error, stack) {});
}
