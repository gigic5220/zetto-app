part of 'report_provider.dart';

mixin ReportActionMixin {
  void onTapAnalyzedFoodItem(
    WidgetRef ref, {
    required AnalyzedFoodItemEntity foodItem,
  }) {
    ref.read(_selectedFoodItemProvider.notifier).set(foodItem);
  }
}
