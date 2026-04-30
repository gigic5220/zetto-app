import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_standard_response_dto.freezed.dart';
part 'nutrition_standard_response_dto.g.dart';

@freezed
abstract class NutritionStandardResponseDto with _$NutritionStandardResponseDto {
  const factory NutritionStandardResponseDto({
    required int id,
    required int userId,
    required int eerKcal,
    required String standardSource,
    required String summaryTargetBasis,
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
  }) = _NutritionStandardResponseDto;

  factory NutritionStandardResponseDto.fromJson(Map<String, Object?> json) =>
      _$NutritionStandardResponseDtoFromJson(json);
}
