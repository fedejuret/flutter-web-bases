import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view404.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configRoutes() {
    router.define('/',
        handler: _counterHandler, transitionType: TransitionType.none);

    router.define('/stateful',
        handler: _counterHandler, transitionType: TransitionType.none);

    router.define(
      '/stateful/:base',
      handler: _counterHandler,
      transitionType: TransitionType.none,
    );

    router.define('/provider',
        handler: _counterProviderHandler, transitionType: TransitionType.none);

    router.notFoundHandler = _pageNotFoundHandler;
  }

  // Handlers
  static Handler _counterHandler = new Handler(
    handlerFunc: (context, params) {
      return CounterView(
        base: params['base']?[0] ?? '5',
      );
    },
  );

  static Handler _counterProviderHandler = new Handler(
    handlerFunc: (context, params) => CounterProviderView(),
  );

  static Handler _pageNotFoundHandler = new Handler(
    handlerFunc: (_, __) => View404(),
  );
}
