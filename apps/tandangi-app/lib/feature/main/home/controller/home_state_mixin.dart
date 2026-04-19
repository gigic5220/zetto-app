part of 'home_provider.dart';

mixin HomeStateMixin {
  AsyncValue<UserCharacterDetailEntity> watchUserCharacterDetail(
    WidgetRef ref,
  ) {
    return ref.watch(_userCharacterDetailProvider);
  }

  AsyncValue<TodayNutritionSummaryEntity> watchTodayNutritionSummary(
    WidgetRef ref,
  ) {
    return ref.watch(_todayNutritionSummaryProvider);
  }
}
