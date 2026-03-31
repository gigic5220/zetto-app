import 'package:flutter/material.dart';

import 'util/api_interceptor.dart';

class DevTools extends ChangeNotifier {
  DevTools({required this.navigatorKey, this.initialShowInspector = false});

  // Static instances
  static final ApiLoggerInterceptor apiLoggerInterceptor = ApiLoggerInterceptor();

  final GlobalKey<NavigatorState> navigatorKey;
  final bool initialShowInspector;

  OverlayEntry? _performanceOverlayEntry;
  bool _isShowInspector = false;

  bool get isShowInspector => _isShowInspector;
  void setShowInspector(bool show) {
    if (isShowInspector == show) return;

    _isShowInspector = show;
    notifyListeners();
  }

  BuildContext? get context => navigatorKey.currentState?.overlay?.context;

  bool get isShowPerformanceOverlay => _performanceOverlayEntry != null;

  void setShowPerformanceOverlay(bool show) {
    if (isShowPerformanceOverlay == show) return;
    if (context == null) return;

    final OverlayState? overlay = navigatorKey.currentState?.overlay;
    if (overlay == null) return;

    if (show) {
      _performanceOverlayEntry = OverlayEntry(
        builder: (context) => Positioned(top: 0, left: 0, right: 0, child: PerformanceOverlay.allEnabled()),
      );
    } else {
      _performanceOverlayEntry?.remove();
      _performanceOverlayEntry = null;
    }

    if (_performanceOverlayEntry != null) {
      overlay.insert(_performanceOverlayEntry!);
    }

    notifyListeners();
  }
}
