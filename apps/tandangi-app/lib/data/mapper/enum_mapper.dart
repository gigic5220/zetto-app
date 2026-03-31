// mapper
import 'package:tandangi/domain/enum/gender_enum.dart';
import 'package:tandangi/domain/enum/user_status_enum.dart';

class EnumMapper {
  static UserStatusEnum toUserStatusEnum(String key) {
    return UserStatusEnum.fromStringKey(key);
  }

  static GenderEnum toGenderEnum(String key) {
    return GenderEnum.fromStringKey(key);
  }
}
