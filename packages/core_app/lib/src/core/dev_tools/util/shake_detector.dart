import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

/// ShakeDetector class for phone shake functionality
class ShakeDetector {
  /// This constructor automatically calls [startListening] and starts detection and callbacks.\
  ShakeDetector.autoStart({
    this.onPhoneShake,
    this.shakeThresholdGravity = 2.7,
    this.shakeSlopTimeMS = 500,
    this.shakeCountResetTime = 3000,
    this.shakeDetectCount = 1,
  }) {
    startListening();
  }

  /// This constructor waits until [startListening] is called
  ShakeDetector.waitForStart({
    this.onPhoneShake,
    this.shakeThresholdGravity = 2.7,
    this.shakeSlopTimeMS = 500,
    this.shakeCountResetTime = 3000,
    this.shakeDetectCount = 1,
  });

  /// User callback for phone shake
  final VoidCallback? onPhoneShake;

  /// Shake detection threshold
  final double shakeThresholdGravity;

  /// Minimum time between shake
  final int shakeSlopTimeMS;

  /// Time before shake count resets
  final int shakeCountResetTime;

  /// Shake detect count
  final int shakeDetectCount;

  int _shakeTimestamp = DateTime.now().millisecondsSinceEpoch;
  int _shakeCount = 0;

  /// StreamSubscription for Accelerometer events
  StreamSubscription<AccelerometerEvent>? streamSubscription;

  /// Starts listening to accelerometer events
  void startListening() {
    streamSubscription = accelerometerEventStream().listen(_onAccelerometerEvent);
  }

  void _onAccelerometerEvent(AccelerometerEvent event) {
    const double g = 9.80665;
    final double gX = event.x / g;
    final double gY = event.y / g;
    final double gZ = event.z / g;

    // gForce will be close to 1 when there is no movement.
    final double gForce = sqrt(gX * gX + gY * gY + gZ * gZ);

    if (gForce > shakeThresholdGravity) {
      final int now = DateTime.now().millisecondsSinceEpoch;

      // reset the shake count after 3 seconds of no shakes
      if (_shakeTimestamp + shakeCountResetTime < now) {
        _shakeCount = 0;
      }

      if (_shakeTimestamp + shakeSlopTimeMS > now) {
        return;
      }

      _shakeCount++;
      _shakeTimestamp = now;

      if (_shakeCount >= shakeDetectCount) {
        onPhoneShake?.call();
        _shakeCount = 0;
      }
    }
  }

  /// Stops listening to accelerometer events
  void stopListening() {
    dispose();
  }

  /// Disposes all subscriptions.
  void dispose() {
    streamSubscription?.cancel();
    streamSubscription = null;
  }
}
