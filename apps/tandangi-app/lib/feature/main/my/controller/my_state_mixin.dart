part of 'my_provider.dart';

mixin MyStateMixin {
  AsyncValue<List<UserPushTimeEntity>> watchUserPushTimes(WidgetRef ref) {
    return ref.watch(_userPushTimesProvider);
  }
}
