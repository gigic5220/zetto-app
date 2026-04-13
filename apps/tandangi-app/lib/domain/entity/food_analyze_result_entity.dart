import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_analyze_result_entity.freezed.dart';

/// One analyzed dish (name + nutrient map per item).
@freezed
abstract class AnalyzedFoodItemEntity with _$AnalyzedFoodItemEntity {
  const factory AnalyzedFoodItemEntity({
    @Default('') String name,
    @Default(<String, dynamic>{}) Map<String, dynamic> nutrients,
  }) = _AnalyzedFoodItemEntity;
}

/// Vision: ingredients, estimated totals, assumptions.
@freezed
abstract class FoodVisionEntity with _$FoodVisionEntity {
  const factory FoodVisionEntity({
    @Default(<String>[]) List<String> visibleIngredients,
    @Default(<String>[]) List<String> assumedIngredients,
    @Default(<String, dynamic>{}) Map<String, dynamic> estimatedTotalNutrients,
    @Default(<String>[]) List<String> assumptions,
  }) = _FoodVisionEntity;
}

/// Food image analyze API result (domain).
@freezed
abstract class FoodAnalyzeResultEntity with _$FoodAnalyzeResultEntity {
  const factory FoodAnalyzeResultEntity({
    @Default(<AnalyzedFoodItemEntity>[])
    List<AnalyzedFoodItemEntity> main,
    @Default(<AnalyzedFoodItemEntity>[])
    List<AnalyzedFoodItemEntity> sides,
    @Default(<AnalyzedFoodItemEntity>[])
    List<AnalyzedFoodItemEntity> others,
    FoodVisionEntity? vision,
    String? finalSource,
    @Default(<String, dynamic>{}) Map<String, dynamic> finalNutrients,
  }) = _FoodAnalyzeResultEntity;
}
