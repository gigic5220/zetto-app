abstract class FocusedWatcherBase<Router, Route, Page> {
  /// The router instance used for navigation.
  late Router router;

  /// The previously focused route.
  late Route? previousRoute;

  /// A map of routes to their associated set of pages.
  ///
  /// This map keeps track of which pages are associated with each route,
  /// allowing for efficient management of page focus states.
  late final Map<Route, Set<Page>> listeners;

  /// Initializes the watcher with the given router.
  ///
  /// This method should be called to set up the watcher with the
  /// application's router instance.
  ///
  /// Parameters:
  /// * [router]: The router instance to be used by the watcher.
  void initialize(Router router);

  /// Subscribes a page to be notified of focus changes.
  ///
  /// When a page is subscribed, it will receive notifications when it
  /// gains or loses focus.
  ///
  /// Parameters:
  /// * [page]: The page to be subscribed.
  void subscribe(Page page);

  /// Unsubscribes a page from focus change notifications.
  ///
  /// After unsubscribing, the page will no longer receive focus change
  /// notifications.
  ///
  /// Parameters:
  /// * [page]: The page to be unsubscribed.
  void unsubscribe(Page page);

  /// Handles route changes in the application.
  ///
  /// This method should be called whenever the current route changes.
  /// It is responsible for notifying the appropriate pages about
  /// focus gains and losses.
  void onRouteChanged();
}
