import 'package:tandangi/domain/entity/food_history_items_serving_adjust_entity.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/entity/paged_list_entity.dart';

abstract class FoodAnalyzeRepository {
  Future<FoodAnalysisResultEntity> postFoodAnalysis({
    required String imagePath,
    required bool includeWatermark,
    String? prompt,
  });

  Future<PagedListEntity<FoodAnalysisEntity>> getFoodAnalysises({
    int? page,
    int? size,
    List<String>? sort,
  });

  Future<FoodAnalysisEntity> getFoodAnalysis({required int foodAnalysisId});

  Future<FoodHistoryItemsServingAdjustEntity> adjustHistoryItemsServings({
    required int foodAnalysisId,
    required List<FoodHistoryItemServingAdjustmentEntity> items,
  });
}
