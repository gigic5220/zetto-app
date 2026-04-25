import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';
import 'package:tandangi/domain/entity/paged_list_entity.dart';

abstract class FoodAnalyzeRepository {
  Future<FoodAnalyzeResultEntity> postFoodAnalysis({
    required String imagePath,
    required bool includeWatermark,
    String? prompt,
  });

  Future<PagedListEntity<FoodAnalyzeResultEntity>> getFoodAnalysises({
    int? page,
    int? size,
    List<String>? sort,
  });

  Future<FoodAnalyzeResultEntity> getFoodAnalysis({
    required int foodAnalysisId,
  });
}
