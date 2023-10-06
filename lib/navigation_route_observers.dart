import 'package:flutter/material.dart';

class NavRouteObservers extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    debugPrint(
        "Pushed from ${previousRoute?.settings.name} to ${route.settings.name}");
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    debugPrint(
        "Replaced ${oldRoute?.settings.name} with ${newRoute?.settings.name}");
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    debugPrint(
        "Popped from ${route.settings.name} to ${previousRoute?.settings.name}");
  }
}
