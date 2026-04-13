import 'package:flutter/material.dart';

import 'go_router_watcher.dart';

mixin GoRouterWatcherPage<T extends StatefulWidget> on State<T> {
  GoRouterWatcher get focusedWatcher => GoRouterWatcher.instance;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      focusedWatcher.subscribe(this);
    });
  }

  @override
  void dispose() {
    focusedWatcher.unsubscribe(this);

    super.dispose();
  }

  void onFocused(bool isFirstTime) {}

  void onUnfocused() {}
}
