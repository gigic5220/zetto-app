import 'package:tandangi/data/dto/food_analysis_dto.dart';
import 'package:tandangi/data/mapper/enum_mapper.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';

class FoodAnalyzeMapper {
  static FoodAnalysisEntity toEntity(FoodAnalysisDto dto) {
    return FoodAnalysisEntity(
      foodAnalysisId: dto.foodAnalysisId,
      mainFoodItems: _mapItems(dto.mainFoodItems),
      sideFoodItems: _mapItems(dto.sideFoodItems),
      otherFoodItems: _mapItems(dto.otherFoodItems),
      assumptions: dto.assumptions ?? const [],
      foodImageUrl: dto.foodImageUrl ?? '',
      createdAt: dto.createdAt,
      nutritionCompareInfo: _mapNutritionCompareInfo(
        dto.nutritionCompareInfo,
      ),
    );
  }

  static List<FoodAnalysisFoodEntity> _mapItems(
    List<FoodAnalysisFoodDto>? list,
  ) {
    if (list == null) return const [];
    return list
        .map(
          (e) => FoodAnalysisFoodEntity(
            id: e.id,
            name: e.name ?? '',
            kcal: _mapFoodNutrient(e.kcal),
            carbohydrate: _mapFoodNutrient(e.carbohydrate),
            protein: _mapFoodNutrient(e.protein),
            fat: _mapFoodNutrient(e.fat),
            sugar: _mapFoodNutrient(e.sugar),
            sodium: _mapFoodNutrient(e.sodium),
          ),
        )
        .toList();
  }

  static FoodAnalysisFoodNutrientEntity? _mapFoodNutrient(
    FoodAnalysisFoodNutrientDto? dto,
  ) {
    if (dto == null) return null;
    return FoodAnalysisFoodNutrientEntity(
      value: dto.value,
      range: dto.range ?? const [],
      unit: dto.unit,
    );
  }

  static NutritionCompareInfoEntity? _mapNutritionCompareInfo(
    NutritionCompareInfoDto? dto,
  ) {
    if (dto == null) return null;
    return NutritionCompareInfoEntity(
      kcal: _mapNutrientCompareInfo(dto.kcal),
      carbohydrate: _mapNutrientCompareInfo(dto.carbohydrate),
      protein: _mapNutrientCompareInfo(dto.protein),
      fat: _mapNutrientCompareInfo(dto.fat),
      sugar: _mapSugarInfo(dto.sugar),
      sodium: _mapSodiumInfo(dto.sodium),
    );
  }

  static NutrientCompareInfoEntity? _mapNutrientCompareInfo(
    NutrientCompareInfoDto? dto,
  ) {
    if (dto == null) return null;
    return NutrientCompareInfoEntity(
      intake: dto.intake,
      target: dto.target,
      percent: dto.percent,
    );
  }

  static SugarCompareInfoEntity? _mapSugarInfo(SugarCompareInfoDto? dto) {
    if (dto == null) return null;
    return SugarCompareInfoEntity(
      intake: dto.intake,
      max: dto.max,
      nutritionThresholdStatusEnum: EnumMapper.toNutritionThresholdStatusEnum(
        dto.statusCode,
      ),
    );
  }

  static SodiumCompareInfoEntity? _mapSodiumInfo(SodiumCompareInfoDto? dto) {
    if (dto == null) return null;
    return SodiumCompareInfoEntity(
      intake: dto.intake,
      adequate: dto.adequate,
      riskReduction: dto.riskReduction,
      nutritionThresholdStatusEnum: EnumMapper.toNutritionThresholdStatusEnum(
        dto.statusCode,
      ),
    );
  }
}
