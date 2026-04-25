import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';
import 'package:tandangi/domain/entity/paged_list_entity.dart';

abstract class FoodAnalyzeRepository {
  /// `POST /api/ai/analyze` (multipart: image, optional prompt)
  Future<FoodAnalyzeResultEntity> analyzeImage({
    required String imagePath,
    required bool includeWatermark,
    String? prompt,
  });

  Future<PagedListEntity<FoodAnalyzeResultEntity>> getFoodAnalyses({
    int? page,
    int? size,
    List<String>? sort,
  });

  Future<FoodAnalyzeResultEntity> getFoodAnalysis({
    required int foodAnalysisId,
  });
}
