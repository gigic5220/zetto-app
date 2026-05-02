import 'package:tandangi/domain/entity/daily_nutrition_summary_entity.dart';

/// [DailyNutritionSummaryController] `GET /api/daily-nutrition-summaries`.
abstract class DailyNutritionSummaryRepository {
  Future<DailyNutritionSummariesEntity> getDailyNutritionSummariesForRange({
    required DateTime startDate,
    DateTime? endDate,
  });
}
