import 'package:collection/collection.dart';

enum GenderEnum {
  male('남자'),
  female('여자');

  final String value;

  const GenderEnum(this.value);

  static GenderEnum fromStringKey(String? key) {
    return GenderEnum.values.firstWhereOrNull((e) => e.name == key) ??
        GenderEnum.male;
  }
}
