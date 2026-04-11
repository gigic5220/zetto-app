import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:tandangi/core/di/di.dart';

/// AsyncNotifier failures stay inside Riverpod as [AsyncValue.error]; they are not
/// uncaught zone errors, so [runZonedGuarded] and [FlutterError] will not see them.
/// Attach this observer to log those failures to the same [Talker] instance as Dio.
final class TalkerRiverpodObserver extends ProviderObserver {
  @override
  void providerDidFail(
    ProviderObserverContext context,
    Object error,
    StackTrace stackTrace,
  ) {
    getIt<Talker>().error(
      'Riverpod provider failed: ${context.provider}',
      error,
      stackTrace,
    );
  }
}
