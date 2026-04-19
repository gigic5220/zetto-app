import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_push_time_response_dto.freezed.dart';
part 'user_push_time_response_dto.g.dart';

@freezed
abstract class UserPushTimeResponseDto with _$UserPushTimeResponseDto {
  const factory UserPushTimeResponseDto({
    required int id,
    required int userId,
    required String pushTime,
    required bool isEnabled,
    required String createdAt,
    required String updatedAt,
  }) = _UserPushTimeResponseDto;

  factory UserPushTimeResponseDto.fromJson(Map<String, Object?> json) =>
      _$UserPushTimeResponseDtoFromJson(json);
}
