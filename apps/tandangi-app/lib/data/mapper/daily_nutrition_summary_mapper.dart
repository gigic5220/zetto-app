import 'package:tandangi/data/dto/daily_nutrition_summaries_response_dto.dart';
import 'package:tandangi/data/mapper/enum_mapper.dart';
import 'package:tandangi/domain/entity/daily_nutrition_summary_entity.dart';

class DailyNutritionSummaryMapper {
  static DailyNutritionSummaryEntity toSummaryEntity(
    DailyNutritionSummaryResponseDto dto,
  ) {
    final basisRaw = dto.summaryTargetBasis.trim().toUpperCase();
    return DailyNutritionSummaryEntity(
      id: dto.id,
      date: DateTime(dto.date.year, dto.date.month, dto.date.day),
      day: dto.day,
      analysisCount: dto.analysisCount,
      gradeEnum: EnumMapper.toNutritionGradeEnum(dto.grade),
      baseScore: dto.baseScore,
      modifierScore: dto.modifierScore,
      totalScore: dto.totalScore,
      totalKcal: dto.totalKcal,
      carbohydrateIntakeG: dto.carbohydrateIntakeG,
      proteinIntakeG: dto.proteinIntakeG,
      fatIntakeG: dto.fatIntakeG,
      sugarIntakeG: dto.sugarIntakeG,
      sodiumIntakeMg: dto.sodiumIntakeMg,
      summaryTargetBasisEnum:
          EnumMapper.toNutritionSummaryTargetBasisEnum(basisRaw),
      carbohydrateTargetG: dto.carbohydrateTargetG,
      proteinTargetG: dto.proteinTargetG,
      fatTargetG: dto.fatTargetG,
      sugarLimitG: dto.sugarLimitG,
      sodiumAdequateMg: dto.sodiumAdequateMg,
      sodiumRiskReductionMg: dto.sodiumRiskReductionMg,
      standardSource: dto.standardSource,
      eerKcal: dto.eerKcal,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
    );
  }

  static DailyNutritionSummariesEntity toSummariesEntity(
    DailyNutritionSummariesResponseDto dto,
  ) {
    return DailyNutritionSummariesEntity(
      startDate: DateTime(
        dto.startDate.year,
        dto.startDate.month,
        dto.startDate.day,
      ),
      endDate: DateTime(
        dto.endDate.year,
        dto.endDate.month,
        dto.endDate.day,
      ),
      summaries:
          dto.summaries.map(toSummaryEntity).toList(growable: false),
    );
  }
}
