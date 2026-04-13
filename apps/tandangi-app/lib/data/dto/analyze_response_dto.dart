import 'package:freezed_annotation/freezed_annotation.dart';

part 'analyze_response_dto.freezed.dart';
part 'analyze_response_dto.g.dart';

/// `/api/ai/analyze` — main/sides/others are `{ name, nutrients }` items.
@freezed
abstract class AnalyzeResponseDto with _$AnalyzeResponseDto {
  const factory AnalyzeResponseDto({
    List<AnalyzedFoodItemDto>? main,
    List<AnalyzedFoodItemDto>? sides,
    List<AnalyzedFoodItemDto>? others,
    VisionBlockDto? vision,
    @JsonKey(name: 'final') FinalBlockDto? fin,
  }) = _AnalyzeResponseDto;

  factory AnalyzeResponseDto.fromJson(Map<String, Object?> json) =>
      _$AnalyzeResponseDtoFromJson(json);
}

@freezed
abstract class AnalyzedFoodItemDto with _$AnalyzedFoodItemDto {
  const factory AnalyzedFoodItemDto({
    String? name,
    Map<String, dynamic>? nutrients,
  }) = _AnalyzedFoodItemDto;

  factory AnalyzedFoodItemDto.fromJson(Map<String, Object?> json) =>
      _$AnalyzedFoodItemDtoFromJson(json);
}

@freezed
abstract class VisionIngredientsDto with _$VisionIngredientsDto {
  const factory VisionIngredientsDto({
    List<String>? visible,
    List<String>? assumed,
  }) = _VisionIngredientsDto;

  factory VisionIngredientsDto.fromJson(Map<String, Object?> json) =>
      _$VisionIngredientsDtoFromJson(json);
}

@freezed
abstract class VisionBlockDto with _$VisionBlockDto {
  const factory VisionBlockDto({
    VisionIngredientsDto? ingredients,
    @JsonKey(name: 'estimated_total_nutrients')
    Map<String, dynamic>? estimatedTotalNutrients,
    List<String>? assumptions,
  }) = _VisionBlockDto;

  factory VisionBlockDto.fromJson(Map<String, Object?> json) =>
      _$VisionBlockDtoFromJson(json);
}

@freezed
abstract class FinalBlockDto with _$FinalBlockDto {
  const factory FinalBlockDto({
    String? source,
    Map<String, dynamic>? nutrients,
  }) = _FinalBlockDto;

  factory FinalBlockDto.fromJson(Map<String, Object?> json) =>
      _$FinalBlockDtoFromJson(json);
}
