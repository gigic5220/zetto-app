import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tandangi/domain/enum/nutrition_threshhold_status_enum.dart';

part 'food_analyze_result_entity.freezed.dart';
part 'food_analyze_result_entity.g.dart';

/// One analyzed dish (name + nutrient map per item).
@freezed
abstract class AnalyzedFoodItemEntity with _$AnalyzedFoodItemEntity {
  const factory AnalyzedFoodItemEntity({
    required int id,
    @Default('') String name,
    DishNutrientsEntity? nutrients,
  }) = _AnalyzedFoodItemEntity;

  factory AnalyzedFoodItemEntity.fromJson(Map<String, Object?> json) =>
      _$AnalyzedFoodItemEntityFromJson(json);
}

@freezed
abstract class DishNutrientsEntity with _$DishNutrientsEntity {
  const factory DishNutrientsEntity({
    NutrientValueEntity? kcal,
    NutrientValueEntity? carbohydrate,
    NutrientValueEntity? protein,
    NutrientValueEntity? fat,
    NutrientValueEntity? sugar,
    NutrientValueEntity? sodium,
  }) = _DishNutrientsEntity;

  factory DishNutrientsEntity.fromJson(Map<String, Object?> json) =>
      _$DishNutrientsEntityFromJson(json);
}

@freezed
abstract class NutrientValueEntity with _$NutrientValueEntity {
  const factory NutrientValueEntity({
    double? value,
    @Default(<double>[]) List<double> range,
    String? unit,
  }) = _NutrientValueEntity;

  factory NutrientValueEntity.fromJson(Map<String, Object?> json) =>
      _$NutrientValueEntityFromJson(json);
}

/// Food image analyze API result (domain).
@freezed
abstract class FoodAnalyzeResultEntity with _$FoodAnalyzeResultEntity {
  const factory FoodAnalyzeResultEntity({
    @Default(<AnalyzedFoodItemEntity>[]) List<AnalyzedFoodItemEntity> main,
    @Default(<AnalyzedFoodItemEntity>[]) List<AnalyzedFoodItemEntity> sides,
    @Default(<AnalyzedFoodItemEntity>[]) List<AnalyzedFoodItemEntity> others,
    @Default(<String>[]) List<String> assumptions,
    @Default('') String foodImageUrl,
    DateTime? createdAt,
    NutritionComparisonEntity? nutritionComparison,
  }) = _FoodAnalyzeResultEntity;

  factory FoodAnalyzeResultEntity.fromJson(Map<String, Object?> json) =>
      _$FoodAnalyzeResultEntityFromJson(json);
}

@freezed
abstract class NutritionComparisonEntity with _$NutritionComparisonEntity {
  const factory NutritionComparisonEntity({
    KcalComparisonEntity? kcal,
    MacronutrientComparisonEntity? carbohydrate,
    MacronutrientComparisonEntity? protein,
    MacronutrientComparisonEntity? fat,
    SugarComparisonEntity? sugar,
    SodiumComparisonEntity? sodium,
  }) = _NutritionComparisonEntity;

  factory NutritionComparisonEntity.fromJson(Map<String, Object?> json) =>
      _$NutritionComparisonEntityFromJson(json);
}

@freezed
abstract class KcalComparisonEntity with _$KcalComparisonEntity {
  const factory KcalComparisonEntity({
    double? intakeKcal,
    int? dailyTargetKcal,
    double? percent,
  }) = _KcalComparisonEntity;

  factory KcalComparisonEntity.fromJson(Map<String, Object?> json) =>
      _$KcalComparisonEntityFromJson(json);
}

@freezed
abstract class MacronutrientComparisonEntity
    with _$MacronutrientComparisonEntity {
  const factory MacronutrientComparisonEntity({
    double? intakeG,
    int? dailyTargetG,
    double? percent,
  }) = _MacronutrientComparisonEntity;

  factory MacronutrientComparisonEntity.fromJson(Map<String, Object?> json) =>
      _$MacronutrientComparisonEntityFromJson(json);
}

@freezed
abstract class SugarComparisonEntity with _$SugarComparisonEntity {
  const factory SugarComparisonEntity({
    double? intakeG,
    int? maxG,
    NutritionThresholdStatusEnum? statusEnum,
  }) = _SugarComparisonEntity;

  factory SugarComparisonEntity.fromJson(Map<String, Object?> json) =>
      _$SugarComparisonEntityFromJson(json);
}

@freezed
abstract class SodiumComparisonEntity with _$SodiumComparisonEntity {
  const factory SodiumComparisonEntity({
    double? intakeMg,
    int? adequateMg,
    int? riskReductionMg,
    NutritionThresholdStatusEnum? statusEnum,
  }) = _SodiumComparisonEntity;

  factory SodiumComparisonEntity.fromJson(Map<String, Object?> json) =>
      _$SodiumComparisonEntityFromJson(json);
}
