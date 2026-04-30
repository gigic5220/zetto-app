import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_analysis_dto.freezed.dart';
part 'food_analysis_dto.g.dart';

@freezed
abstract class FoodAnalysisResultDto with _$FoodAnalysisResultDto {
  const factory FoodAnalysisResultDto({required int foodAnalysisId}) =
      _FoodAnalysisResultDto;

  factory FoodAnalysisResultDto.fromJson(Map<String, Object?> json) =>
      _$FoodAnalysisResultDtoFromJson(json);
}

@freezed
abstract class FoodAnalysisDto with _$FoodAnalysisDto {
  const factory FoodAnalysisDto({
    required int foodAnalysisId,
    List<FoodAnalysisFoodDto>? mainFoodItems,
    List<FoodAnalysisFoodDto>? sideFoodItems,
    List<FoodAnalysisFoodDto>? otherFoodItems,
    List<String>? assumptions,
    String? foodImageUrl,
    NutritionCompareInfoDto? nutritionCompareInfo,
    DateTime? createdAt,
  }) = _FoodAnalysisDto;

  factory FoodAnalysisDto.fromJson(Map<String, Object?> json) =>
      _$FoodAnalysisDtoFromJson(json);
}

@freezed
abstract class FoodAnalysisFoodDto with _$FoodAnalysisFoodDto {
  const factory FoodAnalysisFoodDto({
    required int id,
    String? name,
    double? serving,
    FoodAnalysisFoodNutrientDto? originalKcal,
    FoodAnalysisFoodNutrientDto? originalCarbohydrate,
    FoodAnalysisFoodNutrientDto? originalProtein,
    FoodAnalysisFoodNutrientDto? originalFat,
    FoodAnalysisFoodNutrientDto? originalSugar,
    FoodAnalysisFoodNutrientDto? originalSodium,
    FoodAnalysisFoodNutrientDto? kcal,
    FoodAnalysisFoodNutrientDto? carbohydrate,
    FoodAnalysisFoodNutrientDto? protein,
    FoodAnalysisFoodNutrientDto? fat,
    FoodAnalysisFoodNutrientDto? sugar,
    FoodAnalysisFoodNutrientDto? sodium,
  }) = _FoodAnalysisFoodDto;

  factory FoodAnalysisFoodDto.fromJson(Map<String, Object?> json) =>
      _$FoodAnalysisFoodDtoFromJson(json);
}

@freezed
abstract class FoodAnalysisFoodNutrientDto with _$FoodAnalysisFoodNutrientDto {
  const factory FoodAnalysisFoodNutrientDto({
    double? value,
    List<double>? range,
    String? unit,
  }) = _FoodAnalysisFoodNutrientDto;

  factory FoodAnalysisFoodNutrientDto.fromJson(Map<String, Object?> json) =>
      _$FoodAnalysisFoodNutrientDtoFromJson(json);
}

@freezed
abstract class NutritionCompareInfoDto with _$NutritionCompareInfoDto {
  const factory NutritionCompareInfoDto({
    NutrientCompareInfoDto? kcal,
    NutrientCompareInfoDto? carbohydrate,
    NutrientCompareInfoDto? protein,
    NutrientCompareInfoDto? fat,
    SugarCompareInfoDto? sugar,
    SodiumCompareInfoDto? sodium,
  }) = _NutritionCompareInfoDto;

  factory NutritionCompareInfoDto.fromJson(Map<String, Object?> json) =>
      _$NutritionCompareInfoDtoFromJson(json);
}

@freezed
abstract class NutrientCompareInfoDto with _$NutrientCompareInfoDto {
  const factory NutrientCompareInfoDto({
    double? intake,
    int? target,
    double? percent,
  }) = _NutrientCompareInfoDto;

  factory NutrientCompareInfoDto.fromJson(Map<String, Object?> json) =>
      _$NutrientCompareInfoDtoFromJson(json);
}

@freezed
abstract class SugarCompareInfoDto with _$SugarCompareInfoDto {
  const factory SugarCompareInfoDto({
    double? intake,
    int? max,
    String? statusCode,
  }) = _SugarCompareInfoDto;

  factory SugarCompareInfoDto.fromJson(Map<String, Object?> json) =>
      _$SugarCompareInfoDtoFromJson(json);
}

@freezed
abstract class SodiumCompareInfoDto with _$SodiumCompareInfoDto {
  const factory SodiumCompareInfoDto({
    double? intake,
    int? adequate,
    int? riskReduction,
    String? statusCode,
  }) = _SodiumCompareInfoDto;

  factory SodiumCompareInfoDto.fromJson(Map<String, Object?> json) =>
      _$SodiumCompareInfoDtoFromJson(json);
}
