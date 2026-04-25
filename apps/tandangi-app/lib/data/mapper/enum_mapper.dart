// mapper
import 'package:tandangi/domain/enum/gender_enum.dart';
import 'package:tandangi/domain/enum/nutrition_grade_enum.dart';
import 'package:tandangi/domain/enum/nutrition_status_enum.dart';
import 'package:tandangi/domain/enum/nutrition_threshhold_status_enum.dart';
import 'package:tandangi/domain/enum/user_status_enum.dart';

class EnumMapper {
  static UserStatusEnum toUserStatusEnum(String key) {
    return UserStatusEnum.fromStringKey(key);
  }

  static GenderEnum toGenderEnum(String key) {
    return GenderEnum.fromStringKey(key);
  }

  static NutritionGradeEnum? toNutritionGradeEnum(String? key) {
    return NutritionGradeEnum.fromStringKey(key);
  }

  static NutritionStatusEnum toNutritionStatusEnum(String key) {
    return NutritionStatusEnum.fromStringKey(key);
  }

  static NutritionThresholdStatusEnum toNutritionThresholdStatusEnum(
    String? key,
  ) {
    return NutritionThresholdStatusEnum.fromStringKey(key);
  }
}
