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

  void onTapToggleEditMode(
    WidgetRef ref, {
    required int index,
    required EditModeEnum editModeEnum,
  }) {
    final analyzedFoodItemsWithQuantity = ref.read(
      initialAnalyzedFoodItemsWithQuantityProvider,
    );

    final copiedAnalyzedFoodItemsWithQuantity = [
      ...analyzedFoodItemsWithQuantity,
    ];

    final targetAnalyzedFoodItemEntityWithQuantity =
        copiedAnalyzedFoodItemsWithQuantity[index];

    if (targetAnalyzedFoodItemEntityWithQuantity.editModeEnum == editModeEnum) {
      return;
    }

    copiedAnalyzedFoodItemsWithQuantity[index] =
        targetAnalyzedFoodItemEntityWithQuantity.copyWith(
          editModeEnum: editModeEnum,
        );

    ref
        .read(initialAnalyzedFoodItemsWithQuantityProvider.notifier)
        .set(copiedAnalyzedFoodItemsWithQuantity);
  }

  // void onTapEditFoodItemNutrition(
  //   WidgetRef ref, {
  //   required int index,
  //   required TextEditingController carbohydrateController,
  //   required TextEditingController proteinController,
  //   required TextEditingController fatController,
  //   required TextEditingController sugarController,
  //   required TextEditingController sodiumController,
  // }) {
  //   final analyzedFoodItemsWithQuantity = ref.read(
  //     initialAnalyzedFoodItemsWithQuantityProvider,
  //   );

  //   final updatedAnalyzedFoodItemsWithQuantity = [
  //     ...analyzedFoodItemsWithQuantity,
  //   ];

  //   final editModeEnum =
  //       updatedAnalyzedFoodItemsWithQuantity[index].editModeEnum;

  //   if (editModeEnum == EditModeEnum.amount) {
  //     carbohydrateController.text = updatedAnalyzedFoodItemsWithQuantity[index]
  //         .carbohydrate
  //         .toString();
  //     proteinController.text = updatedAnalyzedFoodItemsWithQuantity[index]
  //         .protein
  //         .toString();
  //     fatController.text = updatedAnalyzedFoodItemsWithQuantity[index].fat
  //         .toString();
  //     sugarController.text = updatedAnalyzedFoodItemsWithQuantity[index].sugar
  //         .toString();
  //     sodiumController.text = updatedAnalyzedFoodItemsWithQuantity[index].sodium
  //         .toString();
  //   }

  //   updatedAnalyzedFoodItemsWithQuantity[index] =
  //       updatedAnalyzedFoodItemsWithQuantity[index].copyWith(
  //         isEditMode: !isEditMode,
  //         quantity: 1.0,
  //         carbohydrate: isEditMode
  //             ? double.parse(carbohydrateController.text)
  //             : updatedAnalyzedFoodItemsWithQuantity[index].carbohydrate,
  //         protein: isEditMode
  //             ? double.parse(proteinController.text)
  //             : updatedAnalyzedFoodItemsWithQuantity[index].protein,
  //         fat: isEditMode
  //             ? double.parse(fatController.text)
  //             : updatedAnalyzedFoodItemsWithQuantity[index].fat,
  //         sugar: isEditMode
  //             ? double.parse(sugarController.text)
  //             : updatedAnalyzedFoodItemsWithQuantity[index].sugar,
  //         sodium: isEditMode
  //             ? double.parse(sodiumController.text)
  //             : updatedAnalyzedFoodItemsWithQuantity[index].sodium,
  //       );

  //   ref
  //       .read(initialAnalyzedFoodItemsWithQuantityProvider.notifier)
  //       .set(updatedAnalyzedFoodItemsWithQuantity);
  // }

  void onChangeNutrition(
    WidgetRef ref, {
    required int index,
    required NutritionTypeEnum nutritionTypeEnum,
    required String text,
  }) {
    final analyzedFoodItemsWithQuantity = ref.read(
      initialAnalyzedFoodItemsWithQuantityProvider,
    );

    final updatedAnalyzedFoodItemsWithQuantity = [
      ...analyzedFoodItemsWithQuantity,
    ];

    final double value = double.tryParse(text) ?? 0;

    switch (nutritionTypeEnum) {
      case NutritionTypeEnum.carbohydrate:
        updatedAnalyzedFoodItemsWithQuantity[index] =
            updatedAnalyzedFoodItemsWithQuantity[index].copyWith(
              carbohydrate: value,
            );
        break;
      case NutritionTypeEnum.protein:
        updatedAnalyzedFoodItemsWithQuantity[index] =
            updatedAnalyzedFoodItemsWithQuantity[index].copyWith(
              protein: value,
            );
        break;
      case NutritionTypeEnum.fat:
        updatedAnalyzedFoodItemsWithQuantity[index] =
            updatedAnalyzedFoodItemsWithQuantity[index].copyWith(fat: value);
        break;
      case NutritionTypeEnum.sugar:
        updatedAnalyzedFoodItemsWithQuantity[index] =
            updatedAnalyzedFoodItemsWithQuantity[index].copyWith(sugar: value);
        break;
      case NutritionTypeEnum.sodium:
        updatedAnalyzedFoodItemsWithQuantity[index] =
            updatedAnalyzedFoodItemsWithQuantity[index].copyWith(sodium: value);
        break;
    }

    ref
        .read(initialAnalyzedFoodItemsWithQuantityProvider.notifier)
        .set(updatedAnalyzedFoodItemsWithQuantity);
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

    final originalCarbohydrate =
        analyzedFoodItemEntityWithQuantity
            .foodAnalysisFoodEntity
            .carbohydrate
            ?.value ??
        0;
    final originalProtein =
        analyzedFoodItemEntityWithQuantity
            .foodAnalysisFoodEntity
            .protein
            ?.value ??
        0;
    final originalFat =
        analyzedFoodItemEntityWithQuantity.foodAnalysisFoodEntity.fat?.value ??
        0;
    final originalSugar =
        analyzedFoodItemEntityWithQuantity
            .foodAnalysisFoodEntity
            .sugar
            ?.value ??
        0;
    final originalSodium =
        analyzedFoodItemEntityWithQuantity
            .foodAnalysisFoodEntity
            .sodium
            ?.value ??
        0;

    final updatedAnalyzedFoodItemEntityWithQuantity =
        analyzedFoodItemEntityWithQuantity.copyWith(
          quantity: updatedQuantity,
          carbohydrate: originalCarbohydrate * updatedQuantity,
          protein: originalProtein * updatedQuantity,
          fat: originalFat * updatedQuantity,
          sugar: originalSugar * updatedQuantity,
          sodium: originalSodium * updatedQuantity,
        );

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
          .where((element) => element.isEdited)
          .map(
            (analyzedFoodItemWithQuantity) =>
                FoodHistoryItemServingAdjustmentEntity(
                  foodHistoryItemId:
                      analyzedFoodItemWithQuantity.foodAnalysisFoodEntity.id,
                  serving:
                      analyzedFoodItemWithQuantity.editModeEnum ==
                          EditModeEnum.amount
                      ? analyzedFoodItemWithQuantity.quantity
                      : null,
                  carbohydrate:
                      analyzedFoodItemWithQuantity.editModeEnum ==
                          EditModeEnum.directInput
                      ? analyzedFoodItemWithQuantity.carbohydrate
                      : null,
                  protein:
                      analyzedFoodItemWithQuantity.editModeEnum ==
                          EditModeEnum.directInput
                      ? analyzedFoodItemWithQuantity.protein
                      : null,
                  fat:
                      analyzedFoodItemWithQuantity.editModeEnum ==
                          EditModeEnum.directInput
                      ? analyzedFoodItemWithQuantity.fat
                      : null,
                  sodium:
                      analyzedFoodItemWithQuantity.editModeEnum ==
                          EditModeEnum.directInput
                      ? analyzedFoodItemWithQuantity.sodium
                      : null,
                  sugar:
                      analyzedFoodItemWithQuantity.editModeEnum ==
                          EditModeEnum.directInput
                      ? analyzedFoodItemWithQuantity.sugar
                      : null,
                ),
          )
          .toList(),
    );
    if (!ref.context.mounted) return;
    ref.context.pop(true);
  }
}
