import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tandangi/domain/enum/nutrition_grade_enum.dart';
import 'package:tandangi/domain/enum/nutrition_summary_target_basis_enum.dart';

part 'daily_nutrition_summary_entity.freezed.dart';
part 'daily_nutrition_summary_entity.g.dart';

/// 서버 `DailyNutritionSummariesResponse` 묶음.
@freezed
abstract class DailyNutritionSummariesEntity
    with _$DailyNutritionSummariesEntity {
  const factory DailyNutritionSummariesEntity({
    required DateTime startDate,
    required DateTime endDate,
    required List<DailyNutritionSummaryEntity> summaries,
  }) = _DailyNutritionSummariesEntity;

  factory DailyNutritionSummariesEntity.fromJson(Map<String, Object?> json) =>
      _$DailyNutritionSummariesEntityFromJson(json);
}

/// 서버 `DailyNutritionSummaryResponse`.
@freezed
abstract class DailyNutritionSummaryEntity with _$DailyNutritionSummaryEntity {
  const factory DailyNutritionSummaryEntity({
    required int id,
    required DateTime date,
    required String day,
    required int analysisCount,
    NutritionGradeEnum? gradeEnum,
    int? baseScore,
    int? modifierScore,
    int? totalScore,
    required double totalKcal,
    required double carbohydrateIntakeG,
    required double proteinIntakeG,
    required double fatIntakeG,
    required double sugarIntakeG,
    required double sodiumIntakeMg,
    required NutritionSummaryTargetBasisEnum summaryTargetBasisEnum,
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
  }) = _DailyNutritionSummaryEntity;

  factory DailyNutritionSummaryEntity.fromJson(Map<String, Object?> json) =>
      _$DailyNutritionSummaryEntityFromJson(json);
}
