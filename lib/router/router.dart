import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static void configureRoute() {
    router.define('/',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: _counterProviderHandler,
        transitionType: TransitionType.fadeIn);
  }

  //Handlers - Manejadores
  static final Handler _counterHandler =
      Handler(handlerFunc: (context, params) => const CounterView());
  static final Handler _counterProviderHandler =
      Handler(handlerFunc: (context, params) => const CounterProviderView());
}
