part of 'edit_food_nutrition_provider.dart';

mixin EditFoodNutritionActionMixin {
  void onTapAnalyzedFoodItemEntityWithQuantity(
    WidgetRef ref, {
    required AnalyzedFoodItemEntityWithQuantity
    analyzedFoodItemEntityWithQuantity,
  }) {
    ref
        .read(_selectedFoodItemProvider.notifier)
        .set(analyzedFoodItemEntityWithQuantity);
  }

  void onTapQuantity(
    WidgetRef ref, {
    required int index,
    required AnalyzedFoodItemEntityWithQuantity
    analyzedFoodItemEntityWithQuantity,
    required bool isPlus,
  }) {
    final currentQuantity = analyzedFoodItemEntityWithQuantity.quantity;

    if ((isPlus && currentQuantity >= 2.0) ||
        (!isPlus && currentQuantity <= 0.25)) {
      return;
    }

    final updatedQuantity = isPlus
        ? currentQuantity + 0.25
        : currentQuantity - 0.25;

    final updatedAnalyzedFoodItemEntityWithQuantity =
        analyzedFoodItemEntityWithQuantity.copyWith(quantity: updatedQuantity);

    final analyzedFoodItemsWithQuantity = ref.read(
      initialAnalyzedFoodItemsWithQuantityProvider,
    );
    final updatedAnalyzedFoodItemsWithQuantity = [
      ...analyzedFoodItemsWithQuantity,
    ];

    updatedAnalyzedFoodItemsWithQuantity[index] =
        updatedAnalyzedFoodItemEntityWithQuantity;

    ref
        .read(initialAnalyzedFoodItemsWithQuantityProvider.notifier)
        .set(updatedAnalyzedFoodItemsWithQuantity);
  }

  Future<void> onTapSave(WidgetRef ref) async {
    final foodAnalysisId = ref.read(initialFoodAnalysisIdProvider);
    final analyzedFoodItemsWithQuantity = ref.read(
      initialAnalyzedFoodItemsWithQuantityProvider,
    );
    await getIt<FoodAnalyzeRepository>().adjustHistoryItemsServings(
      foodAnalysisId: foodAnalysisId,
      items: analyzedFoodItemsWithQuantity
          .map(
            (analyzedFoodItemWithQuantity) =>
                FoodHistoryItemServingAdjustmentEntity(
                  foodHistoryItemId:
                      analyzedFoodItemWithQuantity.foodAnalysisFoodEntity.id,
                  serving: analyzedFoodItemWithQuantity.quantity,
                ),
          )
          .toList(),
    );
    if (!ref.context.mounted) return;
    ref.context.pop(true);
  }
}
