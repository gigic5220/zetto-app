import 'package:talker_flutter/talker_flutter.dart';

class CustomTalkerObserver extends TalkerObserver {
  @override
  void onError(TalkerError err) {
    // FirebaseCrashlyticsManager.recordError(err.exception, err.stackTrace);
  }

  @override
  void onException(TalkerException err) {
    // FirebaseCrashlyticsManager.record(err.displayMessage);
  }

  @override
  void onLog(TalkerData log) {
    // FirebaseCrashlyticsManager.record(log.displayMessage);
  }
}
