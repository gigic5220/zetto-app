import 'package:collection/collection.dart';

enum NutritionSummaryTargetBasisEnum {
  min('MIN'),
  target('TARGET'),
  max('MAX');

  final String value;

  const NutritionSummaryTargetBasisEnum(this.value);

  static NutritionSummaryTargetBasisEnum fromStringKey(String? key) {
    if (key == null) {
      return NutritionSummaryTargetBasisEnum.min;
    }
    return NutritionSummaryTargetBasisEnum.values.firstWhereOrNull(
          (e) => e.value == key,
        ) ??
        NutritionSummaryTargetBasisEnum.min;
  }
}
