import 'package:tandangi/domain/entity/nutrition_standard_entity.dart';
import 'package:tandangi/domain/entity/today_nutrition_summary_entity.dart';

abstract class NutritionRepository {
  Future<NutritionStandardEntity> getNutritionStandard();
  Future<TodayNutritionSummaryEntity> getTodayNutritionSummary();
}
