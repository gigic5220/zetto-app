import 'package:tandangi/data/dto/food_analyze_result_dto.dart';
import 'package:tandangi/data/mapper/enum_mapper.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';

class FoodAnalyzeMapper {
  static FoodAnalyzeResultEntity toEntity(FoodAnalysisDto dto) {
    return FoodAnalyzeResultEntity(
      main: _mapItems(dto.mainFoodItems),
      sides: _mapItems(dto.sideFoodItems),
      others: _mapItems(dto.otherFoodItems),
      assumptions: dto.assumptions ?? const [],
      foodImageUrl: dto.foodImageUrl ?? '',
      createdAt: dto.createdAt,
      analysisNutritionInfo: _mapAnalysisNutritionInfo(dto.analysisNutritionInfo),
    );
  }

  static List<AnalyzedFoodItemEntity> _mapItems(
    List<AnalysisFoodItemDto>? list,
  ) {
    if (list == null) return const [];
    return list
        .map(
          (e) => AnalyzedFoodItemEntity(
            id: e.id,
            name: e.name ?? '',
            kcal: _mapNutrientValue(e.kcal),
            carbohydrate: _mapNutrientValue(e.carbohydrate),
            protein: _mapNutrientValue(e.protein),
            fat: _mapNutrientValue(e.fat),
            sugar: _mapNutrientValue(e.sugar),
            sodium: _mapNutrientValue(e.sodium),
          ),
        )
        .toList();
  }

  static NutrientValueEntity? _mapNutrientValue(FoodNutritionInfoDto? dto) {
    if (dto == null) return null;
    return NutrientValueEntity(
      value: dto.value,
      range: dto.range ?? const [],
      unit: dto.unit,
    );
  }

  static AnalysisNutritionInfoEntity? _mapAnalysisNutritionInfo(
    AnalysisNutritionInfoDto? dto,
  ) {
    if (dto == null) return null;
    return AnalysisNutritionInfoEntity(
      kcal: _mapNutrientInfo(dto.kcal),
      carbohydrate: _mapNutrientInfo(dto.carbohydrate),
      protein: _mapNutrientInfo(dto.protein),
      fat: _mapNutrientInfo(dto.fat),
      sugar: _mapSugarInfo(dto.sugar),
      sodium: _mapSodiumInfo(dto.sodium),
    );
  }

  static NutrientInfoEntity? _mapNutrientInfo(NutrientInfoDto? dto) {
    if (dto == null) return null;
    return NutrientInfoEntity(
      intake: dto.intake,
      target: dto.target,
      percent: dto.percent,
    );
  }

  static SugarInfoEntity? _mapSugarInfo(SugarInfoDto? dto) {
    if (dto == null) return null;
    return SugarInfoEntity(
      intake: dto.intake,
      max: dto.max,
      status: EnumMapper.toNutritionThresholdStatusEnum(dto.statusCode),
    );
  }

  static SodiumInfoEntity? _mapSodiumInfo(SodiumInfoDto? dto) {
    if (dto == null) return null;
    return SodiumInfoEntity(
      intake: dto.intake,
      adequate: dto.adequate,
      riskReduction: dto.riskReduction,
      status: EnumMapper.toNutritionThresholdStatusEnum(dto.statusCode),
    );
  }
}
