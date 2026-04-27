part of 'report_provider.dart';

mixin ReportStateMixin {
  AsyncValue<FoodAnalysisEntity> watchFoodAnalyzeResult(WidgetRef ref) {
    return ref.watch(_foodAnalyzeResultProvider);
  }

  FoodAnalysisFoodEntity? watchSelectedFoodItem(WidgetRef ref) {
    return ref.watch(_selectedFoodItemProvider);
  }
}
