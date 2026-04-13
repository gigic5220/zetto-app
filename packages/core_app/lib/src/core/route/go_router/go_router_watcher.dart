import 'package:go_router/go_router.dart';

import '../focused_watcher_base.dart';
import 'go_router_watcher_page.dart';

/// Singleton class for watching focused page. using GoRouter
class GoRouterWatcher implements FocusedWatcherBase<GoRouter, GoRoute, GoRouterWatcherPage> {
  GoRouterWatcher._internal();

  static final GoRouterWatcher instance = GoRouterWatcher._internal();

  @override
  GoRoute? previousRoute;

  @override
  late GoRouter router;

  @override
  Map<GoRoute, Set<GoRouterWatcherPage>> listeners = <GoRoute, Set<GoRouterWatcherPage>>{};

  @override
  void initialize(GoRouter router) {
    this.router = router;

    this.router.routerDelegate.addListener(onRouteChanged);
  }

  @override
  void subscribe(GoRouterWatcherPage page) {
    final route = router.routerDelegate.currentConfiguration.lastOrNull?.route;
    if (route == null) throw Exception('Route is not found');

    final Set<GoRouterWatcherPage> subscribers = listeners.putIfAbsent(route, () => <GoRouterWatcherPage>{});
    if (subscribers.add(page)) {
      page.onFocused(true);
    }
  }

  @override
  void unsubscribe(GoRouterWatcherPage page) {
    final List<GoRoute> routes = listeners.keys.toList();
    for (final GoRoute route in routes) {
      final Set<GoRouterWatcherPage>? subscribers = listeners[route];
      if (subscribers != null) {
        subscribers.remove(page);
        if (subscribers.isEmpty) {
          listeners.remove(route);
        }
      }
    }
  }

  @override
  void onRouteChanged() {
    final Set<GoRouterWatcherPage>? previousSubscribers = listeners[previousRoute];
    if (previousSubscribers != null) {
      for (final GoRouterWatcherPage page in previousSubscribers) {
        page.onUnfocused();
      }
    }

    final route = router.routerDelegate.currentConfiguration.lastOrNull?.route;
    final Set<GoRouterWatcherPage>? subscribers = listeners[route];

    if (subscribers != null) {
      for (final GoRouterWatcherPage page in subscribers) {
        page.onFocused(false);
      }
    }

    previousRoute = route;
  }
}
