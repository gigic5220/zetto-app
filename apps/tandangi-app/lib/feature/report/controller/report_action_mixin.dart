part of 'report_provider.dart';

mixin ReportActionMixin {
  void onPageFocused(WidgetRef ref) {
    print('onPageFocused');
    ref.invalidate(_foodAnalyzeResultProvider);
  }

  void onTapAnalyzedFoodItem(
    WidgetRef ref, {
    required FoodAnalysisFoodEntity foodItem,
  }) {
    ref.read(_selectedFoodItemProvider.notifier).set(foodItem);
  }

  void onTapEditFoodNutrition(WidgetRef ref) {
    final foodAnalyzeResultEntity = ref.read(_foodAnalyzeResultProvider).value;
    if (foodAnalyzeResultEntity == null) return;
    final List<FoodAnalysisFoodEntity> analyzedFoodItems = [
      ...foodAnalyzeResultEntity.mainFoodItems,
      ...foodAnalyzeResultEntity.sideFoodItems,
      ...foodAnalyzeResultEntity.otherFoodItems,
    ];

    ref.context.pushNamed(
      EditFoodNutritionPage.routeName,
      extra: {
        'foodAnalysisId': foodAnalyzeResultEntity.foodAnalysisId,
        'analyzedFoodItems': analyzedFoodItems,
      },
    );
  }
}
