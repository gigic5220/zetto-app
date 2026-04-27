import 'package:tandangi/data/dto/food_history_items_serving_adjust_dto.dart';
import 'package:tandangi/domain/entity/food_history_items_serving_adjust_entity.dart';

class FoodHistoryItemsServingAdjustMapper {
  static FoodHistoryItemsServingAdjustRequestDto toRequestDto(
    List<FoodHistoryItemServingAdjustmentEntity> items,
  ) {
    return FoodHistoryItemsServingAdjustRequestDto(
      items: items
          .map(
            (item) => FoodHistoryItemServingAdjustmentRequestItemDto(
              foodHistoryItemId: item.foodHistoryItemId,
              serving: item.serving,
            ),
          )
          .toList(),
    );
  }

  static FoodHistoryItemsServingAdjustEntity toEntity(
    FoodHistoryItemsServingAdjustResponseDto dto,
  ) {
    return FoodHistoryItemsServingAdjustEntity(
      foodAnalysisId: dto.foodAnalysisId,
      totals: FoodHistoryItemsNutritionTotalsEntity(
        kcal: dto.totals.kcal,
        carbohydrate: dto.totals.carbohydrate,
        protein: dto.totals.protein,
        fat: dto.totals.fat,
      ),
      items: dto.items
          .map(
            (item) => AdjustedFoodHistoryItemEntity(
              foodHistoryItemId: item.foodHistoryItemId,
              name: item.name,
              itemType: item.itemType,
              serving: item.serving,
              kcal: item.kcal,
              carbohydrate: item.carbohydrate,
              protein: item.protein,
              fat: item.fat,
            ),
          )
          .toList(),
    );
  }
}
