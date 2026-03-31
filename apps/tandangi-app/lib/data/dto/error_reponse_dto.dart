import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_reponse_dto.freezed.dart';
part 'error_reponse_dto.g.dart';

@freezed
abstract class ErrorResponseDto with _$ErrorResponseDto {
  const factory ErrorResponseDto({
    required String? code,
    required String? message,
    String? data,
  }) = _ErrorResponseDto;

  factory ErrorResponseDto.fromJson(Map<String, Object?> json) =>
      _$ErrorResponseDtoFromJson(json);
}
