// mapper
import 'package:tandangi/data/dto/user_response_dto.dart';
import 'package:tandangi/data/mapper/enum_mapper.dart';
import 'package:tandangi/domain/entity/user_entity.dart';

class AuthMapper {
  static UserEntity toUserEntity(UserResponseDto dto) {
    return UserEntity(
      id: dto.id,
      firebaseUid: dto.firebaseUid,
      status: EnumMapper.toUserStatusEnum(dto.status),
      age: dto.age,
      gender: dto.gender != null ? EnumMapper.toGenderEnum(dto.gender!) : null,
      height: dto.height,
      weight: dto.weight,
      onboardingCompleted: dto.onboardingCompleted,
    );
  }
}
