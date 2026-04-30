part of 'edit_food_nutrition_provider.dart';

mixin EditFoodNutritionStateMixin {
  List<AnalyzedFoodItemEntity> watchAnalyzedFoodItems(WidgetRef ref) {
    return ref.watch(initialAnalyzedFoodItemsProvider);
  }

  AnalyzedFoodItemEntity? watchSelectedFoodItem(WidgetRef ref) {
    return ref.watch(_selectedFoodItemProvider);
  }
}
