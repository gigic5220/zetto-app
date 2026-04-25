import 'package:tandangi/data/dto/food_analyze_result_dto.dart';
import 'package:tandangi/data/mapper/enum_mapper.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';

class FoodAnalyzeMapper {
  static FoodAnalyzeResultEntity toEntity(FoodAnalyzeResultDto dto) {
    return FoodAnalyzeResultEntity(
      main: _mapItems(dto.main),
      sides: _mapItems(dto.sides),
      others: _mapItems(dto.others),
      assumptions: dto.assumptions ?? const [],
      foodImageUrl: dto.foodImageUrl ?? '',
      createdAt: dto.createdAt,
      nutritionComparison: _mapNutritionComparison(dto.nutritionComparison),
    );
  }

  static List<AnalyzedFoodItemEntity> _mapItems(
    List<AnalyzedFoodItemDto>? list,
  ) {
    if (list == null) return const [];
    return list
        .map(
          (e) => AnalyzedFoodItemEntity(
            id: e.id,
            name: e.name ?? '',
            nutrients: _mapDishNutrients(e.nutrients),
          ),
        )
        .toList();
  }

  static DishNutrientsEntity? _mapDishNutrients(DishNutrientsDto? dto) {
    if (dto == null) return null;
    return DishNutrientsEntity(
      kcal: _mapNutrientValue(dto.kcal),
      carbohydrate: _mapNutrientValue(dto.carbG),
      protein: _mapNutrientValue(dto.proteinG),
      fat: _mapNutrientValue(dto.fatG),
      sugar: _mapNutrientValue(dto.sugarG),
      sodium: _mapNutrientValue(dto.sodiumMg),
    );
  }

  static NutrientValueEntity? _mapNutrientValue(NutrientValueDto? dto) {
    if (dto == null) return null;
    return NutrientValueEntity(
      value: dto.value,
      range: dto.range ?? const [],
      unit: dto.unit,
    );
  }

  static NutritionComparisonEntity? _mapNutritionComparison(
    NutritionComparisonDto? dto,
  ) {
    if (dto == null) return null;
    return NutritionComparisonEntity(
      kcal: _mapKcalComparison(dto.kcal),
      carbohydrate: _mapMacronutrientComparison(dto.carbohydrate),
      protein: _mapMacronutrientComparison(dto.protein),
      fat: _mapMacronutrientComparison(dto.fat),
      sugar: _mapSugarComparison(dto.sugar),
      sodium: _mapSodiumComparison(dto.sodium),
    );
  }

  static KcalComparisonEntity? _mapKcalComparison(KcalComparisonDto? dto) {
    if (dto == null) return null;
    return KcalComparisonEntity(
      intakeKcal: dto.intakeKcal,
      dailyTargetKcal: dto.dailyTargetKcal,
      percent: dto.percent,
    );
  }

  static MacronutrientComparisonEntity? _mapMacronutrientComparison(
    MacronutrientComparisonDto? dto,
  ) {
    if (dto == null) return null;
    return MacronutrientComparisonEntity(
      intakeG: dto.intakeG,
      dailyTargetG: dto.dailyTargetG,
      percent: dto.percent,
    );
  }

  static SugarComparisonEntity? _mapSugarComparison(SugarComparisonDto? dto) {
    if (dto == null) return null;
    return SugarComparisonEntity(
      intakeG: dto.intakeG,
      maxG: dto.maxG,
      statusEnum: EnumMapper.toNutritionThresholdStatusEnum(dto.statusCode),
    );
  }

  static SodiumComparisonEntity? _mapSodiumComparison(
    SodiumComparisonDto? dto,
  ) {
    if (dto == null) return null;
    return SodiumComparisonEntity(
      intakeMg: dto.intakeMg,
      adequateMg: dto.adequateMg,
      riskReductionMg: dto.riskReductionMg,
      statusEnum: EnumMapper.toNutritionThresholdStatusEnum(dto.statusCode),
    );
  }
}
