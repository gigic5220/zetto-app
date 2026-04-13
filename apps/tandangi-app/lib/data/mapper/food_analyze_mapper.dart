import 'package:tandangi/data/dto/analyze_response_dto.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';

class FoodAnalyzeMapper {
  static FoodAnalyzeResultEntity toEntity(AnalyzeResponseDto dto) {
    return FoodAnalyzeResultEntity(
      main: _mapItems(dto.main),
      sides: _mapItems(dto.sides),
      others: _mapItems(dto.others),
      vision: _mapVision(dto.vision),
      finalSource: dto.fin?.source,
      finalNutrients: dto.fin?.nutrients != null
          ? Map<String, dynamic>.from(dto.fin!.nutrients!)
          : const {},
    );
  }

  static List<AnalyzedFoodItemEntity> _mapItems(
    List<AnalyzedFoodItemDto>? list,
  ) {
    if (list == null) return const [];
    return list
        .map(
          (e) => AnalyzedFoodItemEntity(
            name: e.name ?? '',
            nutrients: e.nutrients != null
                ? Map<String, dynamic>.from(e.nutrients!)
                : const {},
          ),
        )
        .toList();
  }

  static FoodVisionEntity? _mapVision(VisionBlockDto? v) {
    if (v == null) return null;
    final ing = v.ingredients;
    return FoodVisionEntity(
      visibleIngredients: ing?.visible ?? const [],
      assumedIngredients: ing?.assumed ?? const [],
      estimatedTotalNutrients: v.estimatedTotalNutrients != null
          ? Map<String, dynamic>.from(v.estimatedTotalNutrients!)
          : const {},
      assumptions: v.assumptions ?? const [],
    );
  }
}
