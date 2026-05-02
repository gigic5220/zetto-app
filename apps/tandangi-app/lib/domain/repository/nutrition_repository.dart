import 'package:tandangi/domain/entity/nutrition_standard_entity.dart';
import 'package:tandangi/domain/enum/nutrition_summary_target_basis_enum.dart';

abstract class NutritionRepository {
  Future<NutritionStandardEntity> getNutritionStandard();
  Future<NutritionStandardEntity> updateSummaryTargetBasis(
    NutritionSummaryTargetBasisEnum summaryTargetBasis,
  );
}
