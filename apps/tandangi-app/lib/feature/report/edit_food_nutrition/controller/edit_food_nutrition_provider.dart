import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/entity/food_history_items_serving_adjust_entity.dart';
import 'package:tandangi/domain/enum/nutrition_type_enum.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';

part 'edit_food_nutrition_action_mixin.dart';
part 'edit_food_nutrition_provider.g.dart';
part 'edit_food_nutrition_state_mixin.dart';

enum EditModeEnum { amount, directInput }

class AnalyzedFoodItemEntityWithQuantity {
  AnalyzedFoodItemEntityWithQuantity({
    required this.foodAnalysisFoodEntity,
    required this.quantity,
    double? carbohydrate,
    double? protein,
    double? fat,
    double? sodium,
    double? sugar,
    this.editModeEnum = EditModeEnum.amount,
  }) : carbohydrate =
           carbohydrate ?? (foodAnalysisFoodEntity.carbohydrate?.value ?? 0),
       protein = protein ?? (foodAnalysisFoodEntity.protein?.value ?? 0),
       fat = fat ?? (foodAnalysisFoodEntity.fat?.value ?? 0),
       sodium = sodium ?? (foodAnalysisFoodEntity.sodium?.value ?? 0),
       sugar = sugar ?? (foodAnalysisFoodEntity.sugar?.value ?? 0);

  final FoodAnalysisFoodEntity foodAnalysisFoodEntity;
  final double carbohydrate;
  final double protein;
  final double fat;
  final double sodium;
  final double sugar;
  final double quantity;
  final EditModeEnum editModeEnum;

  bool get isEdited =>
      carbohydrate != foodAnalysisFoodEntity.carbohydrate?.value ||
      protein != foodAnalysisFoodEntity.protein?.value ||
      fat != foodAnalysisFoodEntity.fat?.value ||
      sodium != foodAnalysisFoodEntity.sodium?.value ||
      sugar != foodAnalysisFoodEntity.sugar?.value;

  AnalyzedFoodItemEntityWithQuantity copyWith({
    double? quantity,
    double? carbohydrate,
    double? protein,
    double? fat,
    double? sodium,
    double? sugar,
    EditModeEnum? editModeEnum,
  }) {
    return AnalyzedFoodItemEntityWithQuantity(
      foodAnalysisFoodEntity: foodAnalysisFoodEntity,
      carbohydrate: carbohydrate ?? this.carbohydrate,
      protein: protein ?? this.protein,
      fat: fat ?? this.fat,
      sodium: sodium ?? this.sodium,
      sugar: sugar ?? this.sugar,
      quantity: quantity ?? this.quantity,
      editModeEnum: editModeEnum ?? this.editModeEnum,
    );
  }
}

@Riverpod(dependencies: [])
int initialFoodAnalysisId(Ref ref) {
  throw Exception('argument를 초기화 시켜 주어야 합니다');
}

@Riverpod(dependencies: [])
class InitialAnalyzedFoodItemsWithQuantity
    extends _$InitialAnalyzedFoodItemsWithQuantity {
  @override
  List<AnalyzedFoodItemEntityWithQuantity> build() {
    throw Exception('argument를 초기화 시켜 주어야 합니다');
  }

  void set(List<AnalyzedFoodItemEntityWithQuantity> value) {
    state = value;
  }
}

@Riverpod(dependencies: [InitialAnalyzedFoodItemsWithQuantity])
class _SelectedFoodItem extends _$SelectedFoodItem {
  @override
  AnalyzedFoodItemEntityWithQuantity? build() {
    final analyzedFoodItems = ref.watch(
      initialAnalyzedFoodItemsWithQuantityProvider,
    );
    return analyzedFoodItems.first;
  }

  void set(AnalyzedFoodItemEntityWithQuantity value) {
    state = value;
  }
}
