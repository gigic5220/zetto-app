part of 'home_provider.dart';

mixin HomeStateMixin {
  AsyncValue<UserCharacterDetailEntity> watchUserCharacterDetail(
    WidgetRef ref,
  ) {
    return ref.watch(_userCharacterDetailProvider);
  }

  AsyncValue<DailyNutritionSummariesEntity> watchDailyNutritionSummaries(
    WidgetRef ref,
  ) {
    return ref.watch(_dailyNutritionSummariesProvider);
  }

  bool watchIsShowSelectPhotoButton(WidgetRef ref) {
    return ref.watch(_isShowSelectPhotoButtonProvider);
  }

  NutritionSummaryTargetBasisEnum? watchSelectedNutritionSummaryTargetBasisEnum(
    WidgetRef ref,
  ) {
    return ref.watch(_selectedNutritionSummaryTargetBasisEnumProvider);
  }

  AsyncValue<PagedListEntity<FoodAnalysisEntity>> watchFoodAnalysises(
    WidgetRef ref,
  ) {
    return ref.watch(_foodAnalysisesProvider);
  }

  AsyncValue<NutritionStandardEntity> watchNutritionStandard(WidgetRef ref) {
    return ref.watch(_nutritionStandardProvider);
  }
}
