import 'package:flutter/material.dart';

import '../extension/list_extension.dart';
import 'analytics_interface.dart';

class AnalyticsManager {
  static bool isAvailable = false;

  static final List<AnalyticsInterface> services = [];

  static Future<void> initialize() async {
    await Future.wait(services.map((element) => element.initialize()));
  }

  static void setAvailable(bool available) {
    if (isAvailable == available) return;
    isAvailable = available;
  }

  static List<NavigatorObserver> getNavigatorObservers() {
    return services
        .map((element) => element.getNavigatorObserver())
        .where((element) => element != null)
        .mapToList((element) => element!);
  }

  static void setUserProperties(Map<String, dynamic> parameters) {
    if (!isAvailable) return;

    for (final element in services) {
      element.setUserProperties(parameters);
    }
  }

  static void setUserId(String userId) {
    if (!isAvailable) return;

    for (final element in services) {
      element.setUserId(userId);
    }
  }

  static void signUp(Map<String, dynamic>? parameters, String? provider) {
    if (!isAvailable) return;

    for (final element in services) {
      element.signUp(parameters, provider);
    }
  }

  static void purchaseCompleted(int price, Map<String, dynamic>? parameters) {
    if (!isAvailable) return;

    for (final element in services) {
      element.purchaseCompleted(price, parameters);
    }
  }

  static void sendEvent(String eventName, {Map<String, Object>? parameters}) {
    if (!isAvailable) return;

    for (final element in services) {
      element.sendEvent(eventName, parameters);
    }
  }
}
