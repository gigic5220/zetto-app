part of 'home_provider.dart';

mixin HomeStateMixin {
  AsyncValue<UserCharacterDetailEntity> watchUserCharacterDetail(
    WidgetRef ref,
  ) {
    return ref.watch(_userCharacterDetailProvider);
  }
}
