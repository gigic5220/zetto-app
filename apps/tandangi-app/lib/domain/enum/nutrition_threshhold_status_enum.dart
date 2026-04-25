import 'package:collection/collection.dart';

enum NutritionThresholdStatusEnum {
  normal('NORMAL', '보통'),
  caution('CAUTION', '주의'),
  risk('RISK', '위험');

  final String key;
  final String value;

  const NutritionThresholdStatusEnum(this.key, this.value);

  static NutritionThresholdStatusEnum fromStringKey(String? key) {
    if (key == null) {
      return NutritionThresholdStatusEnum.normal;
    }

    return NutritionThresholdStatusEnum.values.firstWhereOrNull(
          (e) => e.key == key,
        ) ??
        NutritionThresholdStatusEnum.normal;
  }
}
