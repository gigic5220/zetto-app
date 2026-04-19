import 'package:tandangi/data/dto/nutrition_standard_response_dto.dart';
import 'package:tandangi/data/dto/today_nutrition_summary_response_dto.dart';
import 'package:tandangi/data/mapper/enum_mapper.dart';
import 'package:tandangi/domain/entity/nutrition_standard_entity.dart';
import 'package:tandangi/domain/entity/today_nutrition_summary_entity.dart';

class NutritionMapper {
  static NutritionStandardEntity toNutritionStandardEntity(
    NutritionStandardResponseDto dto,
  ) {
    return NutritionStandardEntity(
      id: dto.id,
      userId: dto.userId,
      eerKcal: dto.eerKcal,
      standardSource: dto.standardSource,
      activityLevel: dto.activityLevel,
      carbohydrateMinG: dto.carbohydrateMinG,
      carbohydrateTargetG: dto.carbohydrateTargetG,
      carbohydrateMaxG: dto.carbohydrateMaxG,
      proteinMinG: dto.proteinMinG,
      proteinTargetG: dto.proteinTargetG,
      proteinMaxG: dto.proteinMaxG,
      fatMinG: dto.fatMinG,
      fatTargetG: dto.fatTargetG,
      fatMaxG: dto.fatMaxG,
      sugarLimitG: dto.sugarLimitG,
      sodiumAdequateMg: dto.sodiumAdequateMg,
      sodiumRiskReductionMg: dto.sodiumRiskReductionMg,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
    );
  }

  static TodayNutritionSummaryEntity toTodayNutritionSummaryEntity(
    TodayNutritionSummaryResponseDto dto,
  ) {
    return TodayNutritionSummaryEntity(
      date: dto.date,
      timezone: dto.timezone,
      analysisCount: dto.analysisCount,
      totalKcal: dto.totalKcal,
      baseScore: dto.baseScore,
      modifierScore: dto.modifierScore,
      totalScore: dto.totalScore,
      grade: EnumMapper.toNutritionGradeEnum(dto.grade),
      carbohydrate: toNutrientSummaryEntity(dto.carbohydrate),
      protein: toNutrientSummaryEntity(dto.protein),
      fat: toNutrientSummaryEntity(dto.fat),
      sugar: toSugarSummaryEntity(dto.sugar),
      sodium: toSodiumSummaryEntity(dto.sodium),
    );
  }

  static NutrientSummaryEntity toNutrientSummaryEntity(
    NutrientSummaryResponseDto dto,
  ) {
    return NutrientSummaryEntity(
      intakeG: dto.intakeG,
      minG: dto.minG,
      targetG: dto.targetG,
      maxG: dto.maxG,
      achievementPercent: dto.achievementPercent,
      score: dto.score,
      status: EnumMapper.toNutritionStatusEnum(dto.status),
    );
  }

  static SugarSummaryEntity toSugarSummaryEntity(SugarSummaryResponseDto dto) {
    return SugarSummaryEntity(
      intakeG: dto.intakeG,
      noPenaltyThresholdG: dto.noPenaltyThresholdG,
      limitG: dto.limitG,
      hardLimitG: dto.hardLimitG,
      limitPercent: dto.limitPercent,
      score: dto.score,
      modifier: dto.modifier,
      status: EnumMapper.toNutritionStatusEnum(dto.status),
    );
  }

  static SodiumSummaryEntity toSodiumSummaryEntity(
    SodiumSummaryResponseDto dto,
  ) {
    return SodiumSummaryEntity(
      intakeMg: dto.intakeMg,
      adequateMg: dto.adequateMg,
      riskReductionMg: dto.riskReductionMg,
      hardLimitMg: dto.hardLimitMg,
      limitPercent: dto.limitPercent,
      score: dto.score,
      modifier: dto.modifier,
      status: EnumMapper.toNutritionStatusEnum(dto.status),
    );
  }
}
