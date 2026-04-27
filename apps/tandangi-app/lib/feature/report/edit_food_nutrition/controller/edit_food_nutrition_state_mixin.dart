part of 'edit_food_nutrition_provider.dart';

mixin EditFoodNutritionStateMixin {
  List<AnalyzedFoodItemEntityWithQuantity> watchAnalyzedFoodItemsWithQuantity(
    WidgetRef ref,
  ) {
    return ref.watch(initialAnalyzedFoodItemsWithQuantityProvider);
  }
}
