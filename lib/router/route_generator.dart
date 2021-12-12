import 'package:flutter/material.dart';
import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:bases_web/ui/pages/counter_provider_page_.dart';
import 'package:bases_web/ui/pages/page_404.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterPage(), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderPage(), '/provider');
      default:
        return _fadeRoute(const Page404(), '/404');
    }
  }
  //Construye la transicion

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            child,
        transitionsBuilder: (_, animation, __, ___) => FadeTransition(
              opacity: animation,
              child: child,
            ));
  }
}
