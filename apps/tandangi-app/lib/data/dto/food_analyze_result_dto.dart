import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_analyze_result_dto.freezed.dart';
part 'food_analyze_result_dto.g.dart';

@freezed
abstract class FoodAnalysisDto with _$FoodAnalysisDto {
  const factory FoodAnalysisDto({
    List<AnalysisFoodItemDto>? mainFoodItems,
    List<AnalysisFoodItemDto>? sideFoodItems,
    List<AnalysisFoodItemDto>? otherFoodItems,
    List<String>? assumptions,
    String? foodImageUrl,
    AnalysisNutritionInfoDto? analysisNutritionInfo,
    DateTime? createdAt,
  }) = _FoodAnalysisDto;

  factory FoodAnalysisDto.fromJson(Map<String, Object?> json) =>
      _$FoodAnalysisDtoFromJson(json);
}

@freezed
abstract class AnalysisFoodItemDto with _$AnalysisFoodItemDto {
  const factory AnalysisFoodItemDto({
    required int id,
    String? name,
    FoodNutritionInfoDto? kcal,
    FoodNutritionInfoDto? carbohydrate,
    FoodNutritionInfoDto? protein,
    FoodNutritionInfoDto? fat,
    FoodNutritionInfoDto? sugar,
    FoodNutritionInfoDto? sodium,
  }) = _AnalysisFoodItemDto;

  factory AnalysisFoodItemDto.fromJson(Map<String, Object?> json) =>
      _$AnalysisFoodItemDtoFromJson(json);
}

@freezed
abstract class FoodNutritionInfoDto with _$FoodNutritionInfoDto {
  const factory FoodNutritionInfoDto({
    double? value,
    List<double>? range,
    String? unit,
  }) = _FoodNutritionInfoDto;

  factory FoodNutritionInfoDto.fromJson(Map<String, Object?> json) =>
      _$FoodNutritionInfoDtoFromJson(json);
}

@freezed
abstract class AnalysisNutritionInfoDto with _$AnalysisNutritionInfoDto {
  const factory AnalysisNutritionInfoDto({
    NutrientInfoDto? kcal,
    NutrientInfoDto? carbohydrate,
    NutrientInfoDto? protein,
    NutrientInfoDto? fat,
    SugarInfoDto? sugar,
    SodiumInfoDto? sodium,
  }) = _AnalysisNutritionInfoDto;

  factory AnalysisNutritionInfoDto.fromJson(Map<String, Object?> json) =>
      _$AnalysisNutritionInfoDtoFromJson(json);
}

@freezed
abstract class NutrientInfoDto with _$NutrientInfoDto {
  const factory NutrientInfoDto({
    double? intake,
    int? target,
    double? percent,
  }) = _NutrientInfoDto;

  factory NutrientInfoDto.fromJson(Map<String, Object?> json) =>
      _$NutrientInfoDtoFromJson(json);
}

@freezed
abstract class SugarInfoDto with _$SugarInfoDto {
  const factory SugarInfoDto({double? intake, int? max, String? statusCode}) =
      _SugarInfoDto;

  factory SugarInfoDto.fromJson(Map<String, Object?> json) =>
      _$SugarInfoDtoFromJson(json);
}

@freezed
abstract class SodiumInfoDto with _$SodiumInfoDto {
  const factory SodiumInfoDto({
    double? intake,
    int? adequate,
    int? riskReduction,
    String? statusCode,
  }) = _SodiumInfoDto;

  factory SodiumInfoDto.fromJson(Map<String, Object?> json) =>
      _$SodiumInfoDtoFromJson(json);
}
