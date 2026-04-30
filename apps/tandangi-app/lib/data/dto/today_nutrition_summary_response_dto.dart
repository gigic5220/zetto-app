import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_nutrition_summary_response_dto.freezed.dart';
part 'today_nutrition_summary_response_dto.g.dart';

@freezed
abstract class TodayNutritionSummaryResponseDto
    with _$TodayNutritionSummaryResponseDto {
  const factory TodayNutritionSummaryResponseDto({
    required DateTime date,
    required String timezone,
    required int analysisCount,
    required double totalKcal,
    required String summaryTargetBasis,
    int? baseScore,
    int? modifierScore,
    int? totalScore,
    String? grade,
    required NutrientSummaryResponseDto carbohydrate,
    required NutrientSummaryResponseDto protein,
    required NutrientSummaryResponseDto fat,
    required SugarSummaryResponseDto sugar,
    required SodiumSummaryResponseDto sodium,
  }) = _TodayNutritionSummaryResponseDto;

  factory TodayNutritionSummaryResponseDto.fromJson(
    Map<String, Object?> json,
  ) => _$TodayNutritionSummaryResponseDtoFromJson(json);
}

@freezed
abstract class NutrientSummaryResponseDto with _$NutrientSummaryResponseDto {
  const factory NutrientSummaryResponseDto({
    required double intakeG,
    required int minG,
    required int targetG,
    required int maxG,
    required double achievementPercent,
    int? score,
    required String status,
  }) = _NutrientSummaryResponseDto;

  factory NutrientSummaryResponseDto.fromJson(Map<String, Object?> json) =>
      _$NutrientSummaryResponseDtoFromJson(json);
}

@freezed
abstract class SugarSummaryResponseDto with _$SugarSummaryResponseDto {
  const factory SugarSummaryResponseDto({
    required double intakeG,
    required int noPenaltyThresholdG,
    required int limitG,
    required int hardLimitG,
    required double limitPercent,
    int? score,
    required int modifier,
    required String status,
  }) = _SugarSummaryResponseDto;

  factory SugarSummaryResponseDto.fromJson(Map<String, Object?> json) =>
      _$SugarSummaryResponseDtoFromJson(json);
}

@freezed
abstract class SodiumSummaryResponseDto with _$SodiumSummaryResponseDto {
  const factory SodiumSummaryResponseDto({
    required double intakeMg,
    required int adequateMg,
    required int riskReductionMg,
    required int hardLimitMg,
    required double limitPercent,
    int? score,
    required int modifier,
    required String status,
  }) = _SodiumSummaryResponseDto;

  factory SodiumSummaryResponseDto.fromJson(Map<String, Object?> json) =>
      _$SodiumSummaryResponseDtoFromJson(json);
}
