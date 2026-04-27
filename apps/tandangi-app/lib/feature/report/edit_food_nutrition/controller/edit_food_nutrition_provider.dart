import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/entity/food_history_items_serving_adjust_entity.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';

part 'edit_food_nutrition_action_mixin.dart';
part 'edit_food_nutrition_provider.g.dart';
part 'edit_food_nutrition_state_mixin.dart';

class AnalyzedFoodItemEntityWithQuantity {
  const AnalyzedFoodItemEntityWithQuantity({
    required this.foodAnalysisFoodEntity,
    required this.quantity,
  });

  final FoodAnalysisFoodEntity foodAnalysisFoodEntity;
  final double quantity;

  AnalyzedFoodItemEntityWithQuantity copyWith({double? quantity}) {
    return AnalyzedFoodItemEntityWithQuantity(
      foodAnalysisFoodEntity: foodAnalysisFoodEntity,
      quantity: quantity ?? this.quantity,
    );
  }
}

@Riverpod(dependencies: [])
int initialFoodAnalysisId(Ref ref) {
  throw Exception('argument를 초기화 시켜 주어야 합니다');
}

@Riverpod(dependencies: [])
class InitialAnalyzedFoodItemsWithQuantity
    extends _$InitialAnalyzedFoodItemsWithQuantity {
  @override
  List<AnalyzedFoodItemEntityWithQuantity> build() {
    throw Exception('argument를 초기화 시켜 주어야 합니다');
  }

  void set(List<AnalyzedFoodItemEntityWithQuantity> value) {
    state = value;
  }
}

@Riverpod(dependencies: [InitialAnalyzedFoodItemsWithQuantity])
class _SelectedFoodItem extends _$SelectedFoodItem {
  @override
  AnalyzedFoodItemEntityWithQuantity? build() {
    final analyzedFoodItems = ref.watch(
      initialAnalyzedFoodItemsWithQuantityProvider,
    );
    return analyzedFoodItems.first;
  }

  void set(AnalyzedFoodItemEntityWithQuantity value) {
    state = value;
  }
}
