part of 'report_provider.dart';

mixin ReportStateMixin {
  AsyncValue<FoodAnalysisEntity> watchFoodAnalyzeResult(WidgetRef ref) {
    return ref.watch(_foodAnalyzeResultProvider);
  }

  int watchSelectedFoodItemIndex(WidgetRef ref) {
    return ref.watch(_selectedFoodItemIndexProvider);
  }
}
