import 'package:flutter/widgets.dart';

class RouterObserverExt<R extends Route<dynamic>>extends RouteObserver<R>{
  @override
  void subscribe(RouteAware routeAware, R route) {
    super.subscribe(routeAware, route);
  }

  @override
  void unsubscribe(RouteAware routeAware) {
    super.unsubscribe(routeAware);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    //Logger.info('didPop: ${route.settings.name} | ${route.settings.arguments}');
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    //Logger.info('didPush: ${route.settings.name} | ${route.settings.arguments}');
  }
}