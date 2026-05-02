import 'package:tandangi/data/data_source/daily_nutrition_summary_remote_data_source.dart';
import 'package:tandangi/data/mapper/daily_nutrition_summary_mapper.dart';
import 'package:tandangi/domain/entity/daily_nutrition_summary_entity.dart';
import 'package:tandangi/domain/repository/daily_nutrition_summary_repository.dart';

class DailyNutritionSummaryRepositoryImpl
    implements DailyNutritionSummaryRepository {
  DailyNutritionSummaryRepositoryImpl(this._remote);

  final DailyNutritionSummaryRemoteDataSource _remote;

  static String formatServerDay(DateTime date) {
    final d = DateTime(date.year, date.month, date.day);
    return '${d.year}.${d.month.toString().padLeft(2, '0')}.${d.day.toString().padLeft(2, '0')}';
  }

  @override
  Future<DailyNutritionSummariesEntity> getDailyNutritionSummariesForRange({
    required DateTime startDate,
    DateTime? endDate,
  }) async {
    final start = DateTime(startDate.year, startDate.month, startDate.day);
    final end = endDate != null
        ? DateTime(endDate.year, endDate.month, endDate.day)
        : null;
    final bundle = await _remote.getDailyNutritionSummaries(
      startDate: formatServerDay(start),
      endDate: end != null ? formatServerDay(end) : null,
    );
    return DailyNutritionSummaryMapper.toSummariesEntity(bundle);
  }
}
