
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static void configureRoute() {
    router.define('/', handler: _counterHandler);
  }

  //Handlers- Manejadores
  static final Handler _counterHandler =
      Handler(handlerFunc: (context, params) => const CounterView());
}
