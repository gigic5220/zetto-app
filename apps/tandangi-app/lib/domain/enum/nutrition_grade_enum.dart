import 'package:collection/collection.dart';

enum NutritionGradeEnum {
  s('S'),
  a('A'),
  b('B'),
  c('C'),
  d('D');

  final String value;

  const NutritionGradeEnum(this.value);

  static NutritionGradeEnum? fromStringKey(String? key) {
    if (key == null) {
      return null;
    }
    return NutritionGradeEnum.values.firstWhereOrNull((e) => e.value == key);
  }
}
