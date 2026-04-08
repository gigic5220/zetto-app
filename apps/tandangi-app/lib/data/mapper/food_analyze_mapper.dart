import 'package:tandangi/data/dto/analyze_response_dto.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';

class FoodAnalyzeMapper {
  static FoodAnalyzeResultEntity toEntity(AnalyzeResponseDto dto) {
    final nutrients = dto.fin?.nutrients;
    return FoodAnalyzeResultEntity(
      main: dto.main ?? const [],
      sides: dto.sides ?? const [],
      visionAssumptions: dto.vision?.assumptions ?? const [],
      nutrients: nutrients != null ? Map<String, dynamic>.from(nutrients) : const {},
    );
  }
}
