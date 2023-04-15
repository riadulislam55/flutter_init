import '../core/app.initializer.dart';
import '../core/values/language/app.localization.dart';
import '../routes/index.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppInitializer.getIt.registerSingleton<BuildContext>(context);
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
      theme: ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
    );
  }
}
