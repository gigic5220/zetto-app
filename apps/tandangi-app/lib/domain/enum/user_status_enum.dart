import 'package:collection/collection.dart';

enum UserStatusEnum {
  pending('대기'),
  active('활성'),
  blocked('차단'),
  withdrawn('탈퇴');

  final String value;

  const UserStatusEnum(this.value);

  static UserStatusEnum fromStringKey(String? key) {
    return UserStatusEnum.values.firstWhereOrNull((e) => e.name == key) ??
        UserStatusEnum.pending;
  }
}
