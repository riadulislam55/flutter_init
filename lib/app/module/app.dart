import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return ref.watch(themeLoadProvider(themeModel.brightness)).when(
          loading: () => Container(),
          data: (data) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
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
            theme: data,
          ),
          error: (error, stackTrace) => Container(),
        );
  }
}

// final themeData1 = ref.watch(themeControllerProvider);
// ref.watch(themeControllerProvider.notifier).saveTheme(themeData1);
