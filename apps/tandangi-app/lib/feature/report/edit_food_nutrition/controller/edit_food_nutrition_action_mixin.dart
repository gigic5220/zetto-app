part of 'edit_food_nutrition_provider.dart';

mixin EditFoodNutritionActionMixin {
  void handleBackAction(
    WidgetRef ref, {
    required Widget Function({
      required VoidCallback onTapCancel,
      required VoidCallback onTapConfirm,
    })
    buildBackModalWidgetCallback,
  }) {
    showDialog(
      context: ref.context,
      builder: (context) => buildBackModalWidgetCallback(
        onTapCancel: () async {
          context.pop();
        },
        onTapConfirm: () {
          context.pop();
          context.pop();
        },
      ),
    );
  }

  void onTapAnalyzedFoodItemEntity(
    WidgetRef ref, {
    required int selectedFoodItemIndex,
  }) {
    ref
        .read(_selectedFoodItemIndexProvider.notifier)
        .set(selectedFoodItemIndex);
  }

  void onTapToggleEditMode(
    WidgetRef ref, {
    required AnalyzedFoodItemEntity selectedFoodItem,
    required EditModeEnum editModeEnum,
  }) {
    if (selectedFoodItem.isRemoved) {
      return;
    }
    final analyzedFoodItems = ref.read(initialAnalyzedFoodItemsProvider);
    final copiedAnalyzedFoodItems = [...analyzedFoodItems];

    final targetIndex = copiedAnalyzedFoodItems.indexWhere(
      (analyzedFoodItem) =>
          analyzedFoodItem.foodAnalysisFoodEntity.id ==
          selectedFoodItem.foodAnalysisFoodEntity.id,
    );

    final targetAnalyzedFoodItemEntity = copiedAnalyzedFoodItems[targetIndex];

    if (targetAnalyzedFoodItemEntity.editModeEnum == editModeEnum) {
      return;
    }

    copiedAnalyzedFoodItems[targetIndex] = targetAnalyzedFoodItemEntity
        .copyWith(editModeEnum: editModeEnum);

    ref
        .read(initialAnalyzedFoodItemsProvider.notifier)
        .set(copiedAnalyzedFoodItems);
  }

  void onChangeNutrition(
    WidgetRef ref, {
    required int analyzedFoodItemId,
    required NutritionTypeEnum nutritionTypeEnum,
    required String text,
  }) {
    final analyzedFoodItems = ref.read(initialAnalyzedFoodItemsProvider);
    final index = analyzedFoodItems.indexWhere(
      (analyzedFoodItem) =>
          analyzedFoodItem.foodAnalysisFoodEntity.id == analyzedFoodItemId,
    );

    final updatedAnalyzedFoodItems = [...analyzedFoodItems];

    final double value = double.tryParse(text) ?? 0;

    switch (nutritionTypeEnum) {
      case NutritionTypeEnum.carbohydrate:
        updatedAnalyzedFoodItems[index] = updatedAnalyzedFoodItems[index]
            .copyWith(
              foodAnalysisFoodEntity: updatedAnalyzedFoodItems[index]
                  .foodAnalysisFoodEntity
                  .copyWith(
                    carbohydrate: updatedAnalyzedFoodItems[index]
                        .foodAnalysisFoodEntity
                        .carbohydrate
                        ?.copyWith(value: value),
                  ),
            );
        break;
      case NutritionTypeEnum.protein:
        updatedAnalyzedFoodItems[index] = updatedAnalyzedFoodItems[index]
            .copyWith(
              foodAnalysisFoodEntity: updatedAnalyzedFoodItems[index]
                  .foodAnalysisFoodEntity
                  .copyWith(
                    protein: updatedAnalyzedFoodItems[index]
                        .foodAnalysisFoodEntity
                        .protein
                        ?.copyWith(value: value),
                  ),
            );
        break;
      case NutritionTypeEnum.fat:
        updatedAnalyzedFoodItems[index] = updatedAnalyzedFoodItems[index]
            .copyWith(
              foodAnalysisFoodEntity: updatedAnalyzedFoodItems[index]
                  .foodAnalysisFoodEntity
                  .copyWith(
                    fat: updatedAnalyzedFoodItems[index]
                        .foodAnalysisFoodEntity
                        .fat
                        ?.copyWith(value: value),
                  ),
            );
        break;
      case NutritionTypeEnum.sugar:
        updatedAnalyzedFoodItems[index] = updatedAnalyzedFoodItems[index]
            .copyWith(
              foodAnalysisFoodEntity: updatedAnalyzedFoodItems[index]
                  .foodAnalysisFoodEntity
                  .copyWith(
                    sugar: updatedAnalyzedFoodItems[index]
                        .foodAnalysisFoodEntity
                        .sugar
                        ?.copyWith(value: value),
                  ),
            );
        break;
      case NutritionTypeEnum.sodium:
        updatedAnalyzedFoodItems[index] = updatedAnalyzedFoodItems[index]
            .copyWith(
              foodAnalysisFoodEntity: updatedAnalyzedFoodItems[index]
                  .foodAnalysisFoodEntity
                  .copyWith(
                    sodium: updatedAnalyzedFoodItems[index]
                        .foodAnalysisFoodEntity
                        .sodium
                        ?.copyWith(value: value),
                  ),
            );
        break;
    }

    ref
        .read(initialAnalyzedFoodItemsProvider.notifier)
        .set(updatedAnalyzedFoodItems);
  }

  void onTapChangeServing(
    WidgetRef ref, {
    required AnalyzedFoodItemEntity analyzedFoodItem,
    required bool isPlus,
  }) {
    if (analyzedFoodItem.isRemoved) {
      return;
    }
    final currentServing = analyzedFoodItem.foodAnalysisFoodEntity.serving;
    final analyzedFoodItems = ref.read(initialAnalyzedFoodItemsProvider);
    final index = analyzedFoodItems.indexOf(analyzedFoodItem);

    if ((isPlus && currentServing >= 2.0) ||
        (!isPlus && currentServing <= 0.25)) {
      return;
    }

    final updatedServing = isPlus
        ? currentServing + 0.25
        : currentServing - 0.25;

    final originalCarbohydrate =
        analyzedFoodItem.foodAnalysisFoodEntity.originalCarbohydrate?.value ??
        0;
    final originalProtein =
        analyzedFoodItem.foodAnalysisFoodEntity.originalProtein?.value ?? 0;
    final originalFat =
        analyzedFoodItem.foodAnalysisFoodEntity.originalFat?.value ?? 0;
    final originalSugar =
        analyzedFoodItem.foodAnalysisFoodEntity.originalSugar?.value ?? 0;
    final originalSodium =
        analyzedFoodItem.foodAnalysisFoodEntity.originalSodium?.value ?? 0;

    final updatedAnalyzedFoodItemEntity = analyzedFoodItem.copyWith(
      foodAnalysisFoodEntity: analyzedFoodItem.foodAnalysisFoodEntity.copyWith(
        serving: updatedServing,
        carbohydrate: analyzedFoodItem.foodAnalysisFoodEntity.carbohydrate
            ?.copyWith(value: originalCarbohydrate * updatedServing),
        protein: analyzedFoodItem.foodAnalysisFoodEntity.protein?.copyWith(
          value: originalProtein * updatedServing,
        ),
        fat: analyzedFoodItem.foodAnalysisFoodEntity.fat?.copyWith(
          value: originalFat * updatedServing,
        ),
        sugar: analyzedFoodItem.foodAnalysisFoodEntity.sugar?.copyWith(
          value: originalSugar * updatedServing,
        ),
        sodium: analyzedFoodItem.foodAnalysisFoodEntity.sodium?.copyWith(
          value: originalSodium * updatedServing,
        ),
      ),
    );

    final updatedAnalyzedFoodItems = [...analyzedFoodItems];

    updatedAnalyzedFoodItems[index] = updatedAnalyzedFoodItemEntity;

    ref
        .read(initialAnalyzedFoodItemsProvider.notifier)
        .set(updatedAnalyzedFoodItems);
  }

  Future<void> onTapSave(WidgetRef ref) async {
    final foodAnalysisId = ref.read(initialFoodAnalysisIdProvider);
    final analyzedFoodItems = ref.read(initialAnalyzedFoodItemsProvider);
    await getIt<FoodAnalyzeRepository>().adjustHistoryItems(
      foodAnalysisId: foodAnalysisId,
      items: analyzedFoodItems
          .map(
            (
              analyzedFoodItemWithQuantity,
            ) => FoodHistoryItemServingAdjustmentEntity(
              foodHistoryItemId:
                  analyzedFoodItemWithQuantity.foodAnalysisFoodEntity.id,
              isRemove: analyzedFoodItemWithQuantity.isRemoved,
              serving: analyzedFoodItemWithQuantity.isRemoved
                  ? null
                  : analyzedFoodItemWithQuantity.editModeEnum ==
                        EditModeEnum.amount
                  ? analyzedFoodItemWithQuantity.foodAnalysisFoodEntity.serving
                  : null,
              carbohydrate: analyzedFoodItemWithQuantity.isRemoved
                  ? null
                  : analyzedFoodItemWithQuantity.editModeEnum ==
                        EditModeEnum.directInput
                  ? analyzedFoodItemWithQuantity
                        .foodAnalysisFoodEntity
                        .carbohydrate
                        ?.value
                  : null,
              protein: analyzedFoodItemWithQuantity.isRemoved
                  ? null
                  : analyzedFoodItemWithQuantity.editModeEnum ==
                        EditModeEnum.directInput
                  ? analyzedFoodItemWithQuantity
                        .foodAnalysisFoodEntity
                        .protein
                        ?.value
                  : null,
              fat: analyzedFoodItemWithQuantity.isRemoved
                  ? null
                  : analyzedFoodItemWithQuantity.editModeEnum ==
                        EditModeEnum.directInput
                  ? analyzedFoodItemWithQuantity
                        .foodAnalysisFoodEntity
                        .fat
                        ?.value
                  : null,
              sodium: analyzedFoodItemWithQuantity.isRemoved
                  ? null
                  : analyzedFoodItemWithQuantity.editModeEnum ==
                        EditModeEnum.directInput
                  ? analyzedFoodItemWithQuantity
                        .foodAnalysisFoodEntity
                        .sodium
                        ?.value
                  : null,
              sugar: analyzedFoodItemWithQuantity.isRemoved
                  ? null
                  : analyzedFoodItemWithQuantity.editModeEnum ==
                        EditModeEnum.directInput
                  ? analyzedFoodItemWithQuantity
                        .foodAnalysisFoodEntity
                        .sugar
                        ?.value
                  : null,
            ),
          )
          .toList(),
    );
    if (!ref.context.mounted) return;
    ToastUtils.showToast(
      ref.context,
      (context) => DSToast(type: .success, text: '수정한 내용이 반영됐어요'),
    );
    ref.context.pop();
  }

  void onTapRemoveFood(
    WidgetRef ref, {
    required AnalyzedFoodItemEntity selectedFoodItem,
    required Widget Function({
      required VoidCallback onTapConfirm,
      required VoidCallback onTapCancel,
    })
    buildRemoveLastFoodModalWidgetCallback,
  }) {
    final analyzedFoodItems = ref.read(initialAnalyzedFoodItemsProvider);
    if (analyzedFoodItems.length <= 1) {
      showDialog(
        context: ref.context,
        builder: (context) => buildRemoveLastFoodModalWidgetCallback(
          onTapConfirm: () {
            context.pop();
          },
          onTapCancel: () {
            context.goNamed(HomePage.routeName);
          },
        ),
      );
      return;
    }
    final index = analyzedFoodItems.indexOf(selectedFoodItem);

    final copiedAnalyzedFoodItems = [...analyzedFoodItems];
    copiedAnalyzedFoodItems[index] = copiedAnalyzedFoodItems[index].copyWith(
      isRemoved: !copiedAnalyzedFoodItems[index].isRemoved,
    );
    ref
        .read(initialAnalyzedFoodItemsProvider.notifier)
        .set(copiedAnalyzedFoodItems);
  }
}
