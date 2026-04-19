import 'package:tandangi/data/data_source/nutrition_remote_data_source.dart';
import 'package:tandangi/data/mapper/nutrition_mapper.dart';
import 'package:tandangi/domain/entity/nutrition_standard_entity.dart';
import 'package:tandangi/domain/entity/today_nutrition_summary_entity.dart';
import 'package:tandangi/domain/repository/nutrition_repository.dart';

class NutritionRepositoryImpl implements NutritionRepository {
  final NutritionRemoteDataSource remote;

  NutritionRepositoryImpl(this.remote);

  @override
  Future<NutritionStandardEntity> getNutritionStandard() async {
    final response = await remote.getNutritionStandard();
    return NutritionMapper.toNutritionStandardEntity(response);
  }

  @override
  Future<TodayNutritionSummaryEntity> getTodayNutritionSummary() async {
    final response = await remote.getTodayNutritionSummary();
    return NutritionMapper.toTodayNutritionSummaryEntity(response);
  }
}
