import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_standard_entity.freezed.dart';
part 'nutrition_standard_entity.g.dart';

@freezed
abstract class NutritionStandardEntity with _$NutritionStandardEntity {
  const factory NutritionStandardEntity({
    required int id,
    required int userId,
    required int eerKcal,
    required String standardSource,
    required String activityLevel,
    required int carbohydrateMinG,
    required int carbohydrateTargetG,
    required int carbohydrateMaxG,
    required int proteinMinG,
    required int proteinTargetG,
    required int proteinMaxG,
    required int fatMinG,
    required int fatTargetG,
    required int fatMaxG,
    required int sugarLimitG,
    required int sodiumAdequateMg,
    required int sodiumRiskReductionMg,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _NutritionStandardEntity;

  factory NutritionStandardEntity.fromJson(Map<String, Object?> json) =>
      _$NutritionStandardEntityFromJson(json);
}
