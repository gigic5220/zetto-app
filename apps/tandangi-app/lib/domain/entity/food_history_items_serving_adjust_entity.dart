import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_history_items_serving_adjust_entity.freezed.dart';
part 'food_history_items_serving_adjust_entity.g.dart';

@freezed
abstract class FoodHistoryItemServingAdjustmentEntity
    with _$FoodHistoryItemServingAdjustmentEntity {
  const factory FoodHistoryItemServingAdjustmentEntity({
    required int foodHistoryItemId,
    bool? isRemove,
    double? serving,
    double? carbohydrate,
    double? protein,
    double? fat,
    double? sodium,
    double? sugar,
  }) = _FoodHistoryItemServingAdjustmentEntity;

  factory FoodHistoryItemServingAdjustmentEntity.fromJson(
    Map<String, Object?> json,
  ) => _$FoodHistoryItemServingAdjustmentEntityFromJson(json);
}

@freezed
abstract class FoodHistoryItemsServingAdjustEntity
    with _$FoodHistoryItemsServingAdjustEntity {
  const factory FoodHistoryItemsServingAdjustEntity({
    required int foodAnalysisId,
    required FoodHistoryItemsNutritionTotalsEntity totals,
    @Default(<AdjustedFoodHistoryItemEntity>[])
    List<AdjustedFoodHistoryItemEntity> items,
  }) = _FoodHistoryItemsServingAdjustEntity;

  factory FoodHistoryItemsServingAdjustEntity.fromJson(
    Map<String, Object?> json,
  ) => _$FoodHistoryItemsServingAdjustEntityFromJson(json);
}

@freezed
abstract class FoodHistoryItemsNutritionTotalsEntity
    with _$FoodHistoryItemsNutritionTotalsEntity {
  const factory FoodHistoryItemsNutritionTotalsEntity({
    required double kcal,
    required double carbohydrate,
    required double protein,
    required double fat,
  }) = _FoodHistoryItemsNutritionTotalsEntity;

  factory FoodHistoryItemsNutritionTotalsEntity.fromJson(
    Map<String, Object?> json,
  ) => _$FoodHistoryItemsNutritionTotalsEntityFromJson(json);
}

@freezed
abstract class AdjustedFoodHistoryItemEntity
    with _$AdjustedFoodHistoryItemEntity {
  const factory AdjustedFoodHistoryItemEntity({
    required int foodHistoryItemId,
    required String name,
    required String itemType,
    double? serving,
    required double kcal,
    required double carbohydrate,
    required double protein,
    required double fat,
  }) = _AdjustedFoodHistoryItemEntity;

  factory AdjustedFoodHistoryItemEntity.fromJson(Map<String, Object?> json) =>
      _$AdjustedFoodHistoryItemEntityFromJson(json);
}
