part of 'report_provider.dart';

mixin ReportStateMixin {
  AsyncValue<FoodAnalyzeResultEntity> watchFoodAnalyzeResult(WidgetRef ref) {
    return ref.watch(_foodAnalyzeResultProvider);
  }

  AnalyzedFoodItemEntity? watchSelectedFoodItem(WidgetRef ref) {
    return ref.watch(_selectedFoodItemProvider);
  }
}
