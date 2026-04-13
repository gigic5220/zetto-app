part of 'report_provider.dart';

mixin ReportStateMixin {
  FoodAnalyzeResultEntity? watchFoodAnalyzeResult(WidgetRef ref) {
    return ref.watch(_foodAnalyzeResultProvider);
  }
}
