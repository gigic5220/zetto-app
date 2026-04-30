import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_nutrition_summary_target_basis_update_request_dto.freezed.dart';
part 'user_nutrition_summary_target_basis_update_request_dto.g.dart';

@freezed
abstract class UserNutritionSummaryTargetBasisUpdateRequestDto
    with _$UserNutritionSummaryTargetBasisUpdateRequestDto {
  const factory UserNutritionSummaryTargetBasisUpdateRequestDto({
    required String summaryTargetBasis,
  }) = _UserNutritionSummaryTargetBasisUpdateRequestDto;

  factory UserNutritionSummaryTargetBasisUpdateRequestDto.fromJson(
    Map<String, Object?> json,
  ) =>
      _$UserNutritionSummaryTargetBasisUpdateRequestDtoFromJson(json);
}
