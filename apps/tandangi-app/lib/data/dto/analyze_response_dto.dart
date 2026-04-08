import 'package:freezed_annotation/freezed_annotation.dart';

part 'analyze_response_dto.freezed.dart';
part 'analyze_response_dto.g.dart';

/// Spring `AnalyzeResponseDto`
@freezed
abstract class AnalyzeResponseDto with _$AnalyzeResponseDto {
  const factory AnalyzeResponseDto({
    List<String>? main,
    List<String>? sides,
    VisionBlockDto? vision,
    @JsonKey(name: 'final') FinalBlockDto? fin,
  }) = _AnalyzeResponseDto;

  factory AnalyzeResponseDto.fromJson(Map<String, Object?> json) =>
      _$AnalyzeResponseDtoFromJson(json);
}

@freezed
abstract class VisionBlockDto with _$VisionBlockDto {
  const factory VisionBlockDto({
    List<String>? assumptions,
  }) = _VisionBlockDto;

  factory VisionBlockDto.fromJson(Map<String, Object?> json) =>
      _$VisionBlockDtoFromJson(json);
}

/// Spring `FinalBlockDto` — 영양 등 (필드는 서버 확장에 맞게 추가 가능)
@freezed
abstract class FinalBlockDto with _$FinalBlockDto {
  const factory FinalBlockDto({
    Map<String, dynamic>? nutrients,
  }) = _FinalBlockDto;

  factory FinalBlockDto.fromJson(Map<String, Object?> json) =>
      _$FinalBlockDtoFromJson(json);
}
