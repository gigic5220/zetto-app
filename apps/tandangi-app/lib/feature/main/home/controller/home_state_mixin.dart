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
}
