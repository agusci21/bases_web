import 'package:flutter/material.dart';
import 'router/router.dart';
import 'locator.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'services/navigation_service.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoute();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
