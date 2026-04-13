import 'package:flutter/material.dart';

abstract class AnalyticsInterface {
  Future<void> initialize();

  NavigatorObserver? getNavigatorObserver();

  void setUserProperties(Map<String, dynamic> parameters);

  void setUserId(String userId);

  void signUp(Map<String, dynamic>? parameters, String? provider);

  void purchaseCompleted(int price, Map<String, dynamic>? parameters);

  void sendEvent(String eventName, Map<String, dynamic>? parameters);
}
