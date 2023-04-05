import 'dart:async';

import 'app/routes/index.dart';

void main() {
  runZonedGuarded(() async {
    runApp(const MyApp());
  }, (error, stack) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: AppPages.routes,
    );
  }
}
