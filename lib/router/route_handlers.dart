import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

//Handlers - Manejadores
// Similar a Express.js => Controllers
final Handler counterHandler = Handler(handlerFunc: (context, params) {
  return CounterView(
    base: params['base']?[0] ?? '5',
  );
});
final Handler counterProviderHandler = Handler(handlerFunc: (context, params) {
  return CounterProviderView(
    base: params['q']?[0] ?? '10',
  );
});

final Handler dashBoardUserHandler = Handler(handlerFunc: (context, params) {
  return const View404();
});

final Handler pageNotFound =
    Handler(handlerFunc: (context, params) => const View404());
