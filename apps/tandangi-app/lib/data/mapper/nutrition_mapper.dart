import 'package:tandangi/data/dto/nutrition_standard_response_dto.dart';
import 'package:tandangi/data/mapper/enum_mapper.dart';
import 'package:tandangi/domain/entity/nutrition_standard_entity.dart';

class NutritionMapper {
  static NutritionStandardEntity toNutritionStandardEntity(
    NutritionStandardResponseDto dto,
  ) {
    return NutritionStandardEntity(
      id: dto.id,
      userId: dto.userId,
      eerKcal: dto.eerKcal,
      standardSource: dto.standardSource,
      summaryTargetBasisEnum: EnumMapper.toNutritionSummaryTargetBasisEnum(
        dto.summaryTargetBasis,
      ),
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
}
