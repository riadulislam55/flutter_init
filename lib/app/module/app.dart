import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_theme/json_theme.dart';

import '../core/app.initializer.dart';
import '../core/values/language/app.localization.dart';
import '../routes/index.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

import 'common/controllers/theme.controller.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModel = ref.watch(themeControllerProvider);
    AppInitializer.getIt.registerSingleton<BuildContext>(context);
    return FutureBuilder(
      future: _loadTheme(themeModel.brightness),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container();
        }

        final themeData = snapshot.data;

        return MaterialApp.router(
          title: 'Flutter Demo',

          /// routings
          routeInformationParser: AppPages.routes.routeInformationParser,
          routeInformationProvider: AppPages.routes.routeInformationProvider,
          routerDelegate: AppPages.routes.routerDelegate,

          /// localizations
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English
          ],
          theme: themeData,
        );
      },
    );
  }

  Future<ThemeData> _loadTheme(Brightness brightness) async {
    var theme = brightness == Brightness.light ? "light_theme" : "light_theme";
    final themeStr = await rootBundle.loadString('themes/$theme.json');
    final themeJson = json.decode(themeStr);

    final themeData = ThemeDecoder.decodeThemeData(
          themeJson,
          validate: true,
        ) ??
        ThemeData();
    return themeData;
  }
}

// final themeData1 = ref.watch(themeControllerProvider);
// ref.watch(themeControllerProvider.notifier).saveTheme(themeData1);
