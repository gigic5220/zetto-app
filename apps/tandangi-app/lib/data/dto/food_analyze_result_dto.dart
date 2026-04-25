import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_analyze_result_dto.freezed.dart';
part 'food_analyze_result_dto.g.dart';

/// `/api/ai/analyze`, `/api/food-analyses`, `/api/food-analyses/{id}`
@freezed
abstract class FoodAnalyzeResultDto with _$FoodAnalyzeResultDto {
  const factory FoodAnalyzeResultDto({
    List<AnalyzedFoodItemDto>? main,
    List<AnalyzedFoodItemDto>? sides,
    List<AnalyzedFoodItemDto>? others,
    List<String>? assumptions,
    String? foodImageUrl,
    NutritionComparisonDto? nutritionComparison,
    DateTime? createdAt,
  }) = _FoodAnalyzeResultDto;

  factory FoodAnalyzeResultDto.fromJson(Map<String, Object?> json) =>
      _$FoodAnalyzeResultDtoFromJson(json);
}

@freezed
abstract class AnalyzedFoodItemDto with _$AnalyzedFoodItemDto {
  const factory AnalyzedFoodItemDto({
    required int id,
    String? name,
    DishNutrientsDto? nutrients,
  }) = _AnalyzedFoodItemDto;

  factory AnalyzedFoodItemDto.fromJson(Map<String, Object?> json) =>
      _$AnalyzedFoodItemDtoFromJson(json);
}

@freezed
abstract class DishNutrientsDto with _$DishNutrientsDto {
  const factory DishNutrientsDto({
    NutrientValueDto? kcal,
    NutrientValueDto? carbG,
    NutrientValueDto? proteinG,
    NutrientValueDto? fatG,
    NutrientValueDto? sugarG,
    NutrientValueDto? sodiumMg,
  }) = _DishNutrientsDto;

  factory DishNutrientsDto.fromJson(Map<String, Object?> json) =>
      _$DishNutrientsDtoFromJson(json);
}

@freezed
abstract class NutrientValueDto with _$NutrientValueDto {
  const factory NutrientValueDto({
    double? value,
    List<double>? range,
    String? unit,
  }) = _NutrientValueDto;

  factory NutrientValueDto.fromJson(Map<String, Object?> json) =>
      _$NutrientValueDtoFromJson(json);
}

@freezed
abstract class NutritionComparisonDto with _$NutritionComparisonDto {
  const factory NutritionComparisonDto({
    KcalComparisonDto? kcal,
    MacronutrientComparisonDto? carbohydrate,
    MacronutrientComparisonDto? protein,
    MacronutrientComparisonDto? fat,
    SugarComparisonDto? sugar,
    SodiumComparisonDto? sodium,
  }) = _NutritionComparisonDto;

  factory NutritionComparisonDto.fromJson(Map<String, Object?> json) =>
      _$NutritionComparisonDtoFromJson(json);
}

@freezed
abstract class KcalComparisonDto with _$KcalComparisonDto {
  const factory KcalComparisonDto({
    double? intakeKcal,
    int? dailyTargetKcal,
    double? percent,
  }) = _KcalComparisonDto;

  factory KcalComparisonDto.fromJson(Map<String, Object?> json) =>
      _$KcalComparisonDtoFromJson(json);
}

@freezed
abstract class MacronutrientComparisonDto with _$MacronutrientComparisonDto {
  const factory MacronutrientComparisonDto({
    double? intakeG,
    int? dailyTargetG,
    double? percent,
  }) = _MacronutrientComparisonDto;

  factory MacronutrientComparisonDto.fromJson(Map<String, Object?> json) =>
      _$MacronutrientComparisonDtoFromJson(json);
}

@freezed
abstract class SugarComparisonDto with _$SugarComparisonDto {
  const factory SugarComparisonDto({
    double? intakeG,
    int? maxG,
    String? statusCode,
  }) = _SugarComparisonDto;

  factory SugarComparisonDto.fromJson(Map<String, Object?> json) =>
      _$SugarComparisonDtoFromJson(json);
}

@freezed
abstract class SodiumComparisonDto with _$SodiumComparisonDto {
  const factory SodiumComparisonDto({
    double? intakeMg,
    int? adequateMg,
    int? riskReductionMg,
    String? statusCode,
  }) = _SodiumComparisonDto;

  factory SodiumComparisonDto.fromJson(Map<String, Object?> json) =>
      _$SodiumComparisonDtoFromJson(json);
}
