import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static void configureRoute() {
    router.define('/',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/stateful',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/stateful/:base',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/provider',
        handler: _counterProviderHandler,
        transitionType: TransitionType.fadeIn);

    router.notFoundHandler = _pageNotFound;
  }

  //Handlers - Manejadores
  static final Handler _counterHandler =
      Handler(handlerFunc: (context, params) {
    return CounterView(
      base: params['base']?[0] ?? '5',
    );
  });
  static final Handler _counterProviderHandler =
      Handler(handlerFunc: (context, params) {
    return CounterProviderView(
      base: params['q']?[0] ?? '10',
    );
  });

  //
  static final Handler _pageNotFound =
      Handler(handlerFunc: (context, params) => const View404());
}
