import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/entity/food_history_items_serving_adjust_entity.dart';
import 'package:tandangi/domain/enum/nutrition_type_enum.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';

part 'edit_food_nutrition_action_mixin.dart';
part 'edit_food_nutrition_provider.g.dart';
part 'edit_food_nutrition_state_mixin.dart';

enum EditModeEnum { amount, directInput }

class AnalyzedFoodItemEntity {
  AnalyzedFoodItemEntity({
    required this.foodAnalysisFoodEntity,
    this.editModeEnum = EditModeEnum.amount,
  });

  final FoodAnalysisFoodEntity foodAnalysisFoodEntity;
  final EditModeEnum editModeEnum;

  AnalyzedFoodItemEntity copyWith({
    FoodAnalysisFoodEntity? foodAnalysisFoodEntity,
    EditModeEnum? editModeEnum,
  }) {
    return AnalyzedFoodItemEntity(
      foodAnalysisFoodEntity:
          foodAnalysisFoodEntity ?? this.foodAnalysisFoodEntity,
      editModeEnum: editModeEnum ?? this.editModeEnum,
    );
  }
}

@Riverpod(dependencies: [])
int initialFoodAnalysisId(Ref ref) {
  throw Exception('argument를 초기화 시켜 주어야 합니다');
}

@Riverpod(dependencies: [])
class InitialAnalyzedFoodItems extends _$InitialAnalyzedFoodItems {
  @override
  List<AnalyzedFoodItemEntity> build() {
    throw Exception('argument를 초기화 시켜 주어야 합니다');
  }

  void set(List<AnalyzedFoodItemEntity> value) {
    state = value;
  }
}

@Riverpod(dependencies: [InitialAnalyzedFoodItems])
class _SelectedFoodItem extends _$SelectedFoodItem {
  @override
  AnalyzedFoodItemEntity? build() {
    final analyzedFoodItems = ref.watch(initialAnalyzedFoodItemsProvider);
    return analyzedFoodItems.first;
  }

  void set(AnalyzedFoodItemEntity value) {
    state = value;
  }
}
