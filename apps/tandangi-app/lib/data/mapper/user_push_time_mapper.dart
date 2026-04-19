import 'package:tandangi/data/dto/user_push_time_response_dto.dart';
import 'package:tandangi/domain/entity/user_push_time_entity.dart';

class UserPushTimeMapper {
  static UserPushTimeEntity toEntity(UserPushTimeResponseDto dto) {
    return UserPushTimeEntity(
      id: dto.id,
      userId: dto.userId,
      pushTime: dto.pushTime,
      isEnabled: dto.isEnabled,
      createdAt: _parseDateTime(dto.createdAt),
      updatedAt: _parseDateTime(dto.updatedAt),
    );
  }

  static DateTime _parseDateTime(String iso) {
    final parsed = DateTime.tryParse(iso);
    if (parsed != null) return parsed;
    throw FormatException('Invalid date-time: $iso');
  }
}
