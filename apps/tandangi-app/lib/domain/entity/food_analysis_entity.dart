import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tandangi/domain/enum/nutrition_threshhold_status_enum.dart';

part 'food_analysis_entity.freezed.dart';
part 'food_analysis_entity.g.dart';

@freezed
abstract class FoodAnalysisResultEntity with _$FoodAnalysisResultEntity {
  const factory FoodAnalysisResultEntity({required int foodAnalysisId}) =
      _FoodAnalysisResultEntity;

  factory FoodAnalysisResultEntity.fromJson(Map<String, Object?> json) =>
      _$FoodAnalysisResultEntityFromJson(json);
}

@freezed
abstract class FoodAnalysisEntity with _$FoodAnalysisEntity {
  const factory FoodAnalysisEntity({
    required int foodAnalysisId,
    @Default(<FoodAnalysisFoodEntity>[])
    List<FoodAnalysisFoodEntity> mainFoodItems,
    @Default(<FoodAnalysisFoodEntity>[])
    List<FoodAnalysisFoodEntity> sideFoodItems,
    @Default(<FoodAnalysisFoodEntity>[])
    List<FoodAnalysisFoodEntity> otherFoodItems,
    @Default(<String>[]) List<String> assumptions,
    @Default('') String foodImageUrl,
    DateTime? createdAt,
    NutritionCompareInfoEntity? nutritionCompareInfo,
  }) = _FoodAnalysisEntity;

  factory FoodAnalysisEntity.fromJson(Map<String, Object?> json) =>
      _$FoodAnalysisEntityFromJson(json);
}

@freezed
abstract class FoodAnalysisFoodEntity with _$FoodAnalysisFoodEntity {
  const factory FoodAnalysisFoodEntity({
    required int id,
    @Default('') String name,
    required double serving,
    FoodAnalysisFoodNutrientEntity? originalKcal,
    FoodAnalysisFoodNutrientEntity? originalCarbohydrate,
    FoodAnalysisFoodNutrientEntity? originalProtein,
    FoodAnalysisFoodNutrientEntity? originalFat,
    FoodAnalysisFoodNutrientEntity? originalSugar,
    FoodAnalysisFoodNutrientEntity? originalSodium,
    FoodAnalysisFoodNutrientEntity? kcal,
    FoodAnalysisFoodNutrientEntity? carbohydrate,
    FoodAnalysisFoodNutrientEntity? protein,
    FoodAnalysisFoodNutrientEntity? fat,
    FoodAnalysisFoodNutrientEntity? sugar,
    FoodAnalysisFoodNutrientEntity? sodium,
  }) = _FoodAnalysisFoodEntity;

  factory FoodAnalysisFoodEntity.fromJson(Map<String, Object?> json) =>
      _$FoodAnalysisFoodEntityFromJson(json);
}

@freezed
abstract class FoodAnalysisFoodNutrientEntity
    with _$FoodAnalysisFoodNutrientEntity {
  const factory FoodAnalysisFoodNutrientEntity({
    double? value,
    @Default(<double>[]) List<double> range,
    String? unit,
  }) = _FoodAnalysisFoodNutrientEntity;

  factory FoodAnalysisFoodNutrientEntity.fromJson(Map<String, Object?> json) =>
      _$FoodAnalysisFoodNutrientEntityFromJson(json);
}

@freezed
abstract class NutritionCompareInfoEntity with _$NutritionCompareInfoEntity {
  const factory NutritionCompareInfoEntity({
    NutrientCompareInfoEntity? kcal,
    NutrientCompareInfoEntity? carbohydrate,
    NutrientCompareInfoEntity? protein,
    NutrientCompareInfoEntity? fat,
    SugarCompareInfoEntity? sugar,
    SodiumCompareInfoEntity? sodium,
  }) = _NutritionCompareInfoEntity;

  factory NutritionCompareInfoEntity.fromJson(Map<String, Object?> json) =>
      _$NutritionCompareInfoEntityFromJson(json);
}

@freezed
abstract class NutrientCompareInfoEntity with _$NutrientCompareInfoEntity {
  const factory NutrientCompareInfoEntity({
    double? intake,
    int? target,
    double? percent,
  }) = _NutrientCompareInfoEntity;

  factory NutrientCompareInfoEntity.fromJson(Map<String, Object?> json) =>
      _$NutrientCompareInfoEntityFromJson(json);
}

@freezed
abstract class SugarCompareInfoEntity with _$SugarCompareInfoEntity {
  const factory SugarCompareInfoEntity({
    double? intake,
    int? max,
    NutritionThresholdStatusEnum? nutritionThresholdStatusEnum,
  }) = _SugarCompareInfoEntity;

  factory SugarCompareInfoEntity.fromJson(Map<String, Object?> json) =>
      _$SugarCompareInfoEntityFromJson(json);
}

@freezed
abstract class SodiumCompareInfoEntity with _$SodiumCompareInfoEntity {
  const factory SodiumCompareInfoEntity({
    double? intake,
    int? adequate,
    int? riskReduction,
    NutritionThresholdStatusEnum? nutritionThresholdStatusEnum,
  }) = _SodiumCompareInfoEntity;

  factory SodiumCompareInfoEntity.fromJson(Map<String, Object?> json) =>
      _$SodiumCompareInfoEntityFromJson(json);
}
