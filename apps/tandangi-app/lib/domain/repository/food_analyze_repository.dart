import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';

abstract class FoodAnalyzeRepository {
  /// `POST /api/ai/analyze` (multipart: image, optional prompt)
  Future<FoodAnalyzeResultEntity> analyzeImage({
    required String imagePath,
    String? prompt,
  });
}
