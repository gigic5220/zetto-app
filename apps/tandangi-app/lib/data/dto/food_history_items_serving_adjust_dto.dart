import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_history_items_serving_adjust_dto.freezed.dart';
part 'food_history_items_serving_adjust_dto.g.dart';

@freezed
abstract class FoodHistoryItemsServingAdjustRequestDto
    with _$FoodHistoryItemsServingAdjustRequestDto {
  const factory FoodHistoryItemsServingAdjustRequestDto({
    required List<FoodHistoryItemServingAdjustmentRequestItemDto> items,
  }) = _FoodHistoryItemsServingAdjustRequestDto;

  factory FoodHistoryItemsServingAdjustRequestDto.fromJson(
    Map<String, Object?> json,
  ) => _$FoodHistoryItemsServingAdjustRequestDtoFromJson(json);
}

@freezed
abstract class FoodHistoryItemServingAdjustmentRequestItemDto
    with _$FoodHistoryItemServingAdjustmentRequestItemDto {
  const factory FoodHistoryItemServingAdjustmentRequestItemDto({
    required int foodHistoryItemId,
    bool? isRemove,
    double? serving,
    double? carbohydrate,
    double? protein,
    double? fat,
    double? sodium,
    double? sugar,
  }) = _FoodHistoryItemServingAdjustmentRequestItemDto;

  factory FoodHistoryItemServingAdjustmentRequestItemDto.fromJson(
    Map<String, Object?> json,
  ) => _$FoodHistoryItemServingAdjustmentRequestItemDtoFromJson(json);
}

@freezed
abstract class FoodHistoryItemsServingAdjustResponseDto
    with _$FoodHistoryItemsServingAdjustResponseDto {
  const factory FoodHistoryItemsServingAdjustResponseDto({
    required int foodAnalysisId,
    required FoodHistoryItemsNutritionTotalsDto totals,
    @Default(<AdjustedFoodHistoryItemDto>[])
    List<AdjustedFoodHistoryItemDto> items,
  }) = _FoodHistoryItemsServingAdjustResponseDto;

  factory FoodHistoryItemsServingAdjustResponseDto.fromJson(
    Map<String, Object?> json,
  ) => _$FoodHistoryItemsServingAdjustResponseDtoFromJson(json);
}

@freezed
abstract class FoodHistoryItemsNutritionTotalsDto
    with _$FoodHistoryItemsNutritionTotalsDto {
  const factory FoodHistoryItemsNutritionTotalsDto({
    required double kcal,
    required double carbohydrate,
    required double protein,
    required double fat,
  }) = _FoodHistoryItemsNutritionTotalsDto;

  factory FoodHistoryItemsNutritionTotalsDto.fromJson(
    Map<String, Object?> json,
  ) => _$FoodHistoryItemsNutritionTotalsDtoFromJson(json);
}

@freezed
abstract class AdjustedFoodHistoryItemDto with _$AdjustedFoodHistoryItemDto {
  const factory AdjustedFoodHistoryItemDto({
    required int foodHistoryItemId,
    required String name,
    required String itemType,
    double? serving,
    required double kcal,
    required double carbohydrate,
    required double protein,
    required double fat,
  }) = _AdjustedFoodHistoryItemDto;

  factory AdjustedFoodHistoryItemDto.fromJson(Map<String, Object?> json) =>
      _$AdjustedFoodHistoryItemDtoFromJson(json);
}
