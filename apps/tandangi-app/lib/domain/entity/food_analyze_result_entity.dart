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
    NutrientValueEntity? kcal,
    NutrientValueEntity? carbohydrate,
    NutrientValueEntity? protein,
    NutrientValueEntity? fat,
    NutrientValueEntity? sugar,
    NutrientValueEntity? sodium,
  }) = _AnalyzedFoodItemEntity;

  factory AnalyzedFoodItemEntity.fromJson(Map<String, Object?> json) =>
      _$AnalyzedFoodItemEntityFromJson(json);
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
    AnalysisNutritionInfoEntity? analysisNutritionInfo,
  }) = _FoodAnalyzeResultEntity;

  factory FoodAnalyzeResultEntity.fromJson(Map<String, Object?> json) =>
      _$FoodAnalyzeResultEntityFromJson(json);
}

@freezed
abstract class AnalysisNutritionInfoEntity with _$AnalysisNutritionInfoEntity {
  const factory AnalysisNutritionInfoEntity({
    NutrientInfoEntity? kcal,
    NutrientInfoEntity? carbohydrate,
    NutrientInfoEntity? protein,
    NutrientInfoEntity? fat,
    SugarInfoEntity? sugar,
    SodiumInfoEntity? sodium,
  }) = _AnalysisNutritionInfoEntity;

  factory AnalysisNutritionInfoEntity.fromJson(Map<String, Object?> json) =>
      _$AnalysisNutritionInfoEntityFromJson(json);
}

@freezed
abstract class NutrientInfoEntity with _$NutrientInfoEntity {
  const factory NutrientInfoEntity({
    double? intake,
    int? target,
    double? percent,
  }) = _NutrientInfoEntity;

  factory NutrientInfoEntity.fromJson(Map<String, Object?> json) =>
      _$NutrientInfoEntityFromJson(json);
}

@freezed
abstract class SugarInfoEntity with _$SugarInfoEntity {
  const factory SugarInfoEntity({
    double? intake,
    int? max,
    NutritionThresholdStatusEnum? status,
  }) = _SugarInfoEntity;

  factory SugarInfoEntity.fromJson(Map<String, Object?> json) =>
      _$SugarInfoEntityFromJson(json);
}

@freezed
abstract class SodiumInfoEntity with _$SodiumInfoEntity {
  const factory SodiumInfoEntity({
    double? intake,
    int? adequate,
    int? riskReduction,
    NutritionThresholdStatusEnum? status,
  }) = _SodiumInfoEntity;

  factory SodiumInfoEntity.fromJson(Map<String, Object?> json) =>
      _$SodiumInfoEntityFromJson(json);
}
