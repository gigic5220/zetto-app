import 'package:collection/collection.dart';

enum NutritionStatusEnum {
  notStarted('not_started', '기록 전'),
  deficient('deficient', '부족'),
  adequate('adequate', '적정'),
  careful('careful', '주의'),
  excessive('excessive', '과다');

  final String key;
  final String value;

  const NutritionStatusEnum(this.key, this.value);

  static NutritionStatusEnum fromStringKey(String? key) {
    return NutritionStatusEnum.values.firstWhereOrNull((e) => e.key == key) ??
        NutritionStatusEnum.notStarted;
  }
}
