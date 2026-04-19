import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tandangi/domain/enum/nutrition_grade_enum.dart';
import 'package:tandangi/domain/enum/nutrition_status_enum.dart';

part 'today_nutrition_summary_entity.freezed.dart';
part 'today_nutrition_summary_entity.g.dart';

@freezed
abstract class TodayNutritionSummaryEntity with _$TodayNutritionSummaryEntity {
  const factory TodayNutritionSummaryEntity({
    required DateTime date,
    required String timezone,
    required int analysisCount,
    required double totalKcal,
    required int? baseScore,
    required int? modifierScore,
    required int? totalScore,
    required NutritionGradeEnum? grade,
    required NutrientSummaryEntity carbohydrate,
    required NutrientSummaryEntity protein,
    required NutrientSummaryEntity fat,
    required SugarSummaryEntity sugar,
    required SodiumSummaryEntity sodium,
  }) = _TodayNutritionSummaryEntity;

  factory TodayNutritionSummaryEntity.fromJson(Map<String, Object?> json) =>
      _$TodayNutritionSummaryEntityFromJson(json);
}

@freezed
abstract class NutrientSummaryEntity with _$NutrientSummaryEntity {
  const factory NutrientSummaryEntity({
    required double intakeG,
    required int minG,
    required int targetG,
    required int maxG,
    required double achievementPercent,
    required int? score,
    required NutritionStatusEnum status,
  }) = _NutrientSummaryEntity;

  factory NutrientSummaryEntity.fromJson(Map<String, Object?> json) =>
      _$NutrientSummaryEntityFromJson(json);
}

@freezed
abstract class SugarSummaryEntity with _$SugarSummaryEntity {
  const factory SugarSummaryEntity({
    required double intakeG,
    required int noPenaltyThresholdG,
    required int limitG,
    required int hardLimitG,
    required double limitPercent,
    required int? score,
    required int modifier,
    required NutritionStatusEnum status,
  }) = _SugarSummaryEntity;

  factory SugarSummaryEntity.fromJson(Map<String, Object?> json) =>
      _$SugarSummaryEntityFromJson(json);
}

@freezed
abstract class SodiumSummaryEntity with _$SodiumSummaryEntity {
  const factory SodiumSummaryEntity({
    required double intakeMg,
    required int adequateMg,
    required int riskReductionMg,
    required int hardLimitMg,
    required double limitPercent,
    required int? score,
    required int modifier,
    required NutritionStatusEnum status,
  }) = _SodiumSummaryEntity;

  factory SodiumSummaryEntity.fromJson(Map<String, Object?> json) =>
      _$SodiumSummaryEntityFromJson(json);
}
