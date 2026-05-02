import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_nutrition_summaries_response_dto.freezed.dart';
part 'daily_nutrition_summaries_response_dto.g.dart';

DateTime dailySummaryLocalDateFromJson(Object? json) {
  if (json == null) {
    throw FormatException('dailySummaryLocalDateFromJson: null');
  }
  if (json is String) {
    return DateTime.parse(json);
  }
  if (json is List<Object?>) {
    if (json.length < 3) {
      throw FormatException('dailySummaryLocalDateFromJson: list too short');
    }
    return DateTime(
      (json[0] as num).toInt(),
      (json[1] as num).toInt(),
      (json[2] as num).toInt(),
    );
  }
  throw FormatException('dailySummaryLocalDateFromJson: $json');
}

/// Server `DailyNutritionSummariesResponse`.
@freezed
abstract class DailyNutritionSummariesResponseDto
    with _$DailyNutritionSummariesResponseDto {
  const factory DailyNutritionSummariesResponseDto({
    @JsonKey(fromJson: dailySummaryLocalDateFromJson) required DateTime startDate,
    @JsonKey(fromJson: dailySummaryLocalDateFromJson) required DateTime endDate,
    required List<DailyNutritionSummaryResponseDto> summaries,
  }) = _DailyNutritionSummariesResponseDto;

  factory DailyNutritionSummariesResponseDto.fromJson(
    Map<String, Object?> json,
  ) => _$DailyNutritionSummariesResponseDtoFromJson(json);
}

/// Server `DailyNutritionSummaryResponse`.
@freezed
abstract class DailyNutritionSummaryResponseDto
    with _$DailyNutritionSummaryResponseDto {
  const factory DailyNutritionSummaryResponseDto({
    required int id,
    @JsonKey(fromJson: dailySummaryLocalDateFromJson) required DateTime date,
    required String day,
    required int analysisCount,
    String? grade,
    int? baseScore,
    int? modifierScore,
    int? totalScore,
    required double totalKcal,
    required double carbohydrateIntakeG,
    required double proteinIntakeG,
    required double fatIntakeG,
    required double sugarIntakeG,
    required double sodiumIntakeMg,
    required String summaryTargetBasis,
    required int carbohydrateTargetG,
    required int proteinTargetG,
    required int fatTargetG,
    required int sugarLimitG,
    required int sodiumAdequateMg,
    required int sodiumRiskReductionMg,
    required String standardSource,
    required int eerKcal,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DailyNutritionSummaryResponseDto;

  factory DailyNutritionSummaryResponseDto.fromJson(
    Map<String, Object?> json,
  ) => _$DailyNutritionSummaryResponseDtoFromJson(json);
}
