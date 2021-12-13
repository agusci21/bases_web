import 'package:fluro/fluro.dart';
import 'package:bases_web/router/route_handlers.dart';

//Similar a Express.js => routes

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static void configureRoute() {
    //Stateful routes
    router.define('/',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    //Provider Routes
    router.define('/provider',
        handler: counterProviderHandler, transitionType: TransitionType.fadeIn);

    router.define('/dashboard/users/:userId/:roleId',
        handler: dashBoardUserHandler, transitionType: TransitionType.fadeIn);

    //404Page
    router.notFoundHandler = pageNotFound;
  }
}
