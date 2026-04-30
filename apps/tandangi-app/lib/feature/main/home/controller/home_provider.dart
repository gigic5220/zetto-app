import 'dart:io';
import 'dart:typed_data';

import 'package:core_app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/entity/paged_list_entity.dart';
import 'package:tandangi/domain/entity/today_nutrition_summary_entity.dart';
import 'package:tandangi/domain/entity/user_character_detail_entity.dart';
import 'package:tandangi/domain/enum/nutrition_summary_target_basis_enum.dart';
import 'package:tandangi/domain/repository/character_repository.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';
import 'package:tandangi/domain/repository/nutrition_repository.dart';
import 'package:tandangi/feature/main/edit_food_photo/edit_food_photo_page.dart';

part 'home_action_mixin.dart';
part 'home_provider.g.dart';
part 'home_state_mixin.dart';

@riverpod
class _UserCharacterDetail extends _$UserCharacterDetail {
  @override
  Future<UserCharacterDetailEntity> build() async {
    return await getIt<CharacterRepository>().getUserCharacterDetail();
  }
}

@riverpod
class _TodayNutritionSummary extends _$TodayNutritionSummary {
  @override
  Future<TodayNutritionSummaryEntity> build() async {
    return await getIt<NutritionRepository>().getTodayNutritionSummary();
  }

  void set(TodayNutritionSummaryEntity value) {
    state = AsyncValue.data(value);
  }
}

@riverpod
class _IsShowSelectPhotoButton extends _$IsShowSelectPhotoButton {
  @override
  bool build() {
    return false;
  }

  void set(bool value) {
    state = value;
  }
}

@riverpod
class _SelectedNutritionSummaryTargetBasisEnum
    extends _$SelectedNutritionSummaryTargetBasisEnum {
  @override
  NutritionSummaryTargetBasisEnum? build() {
    final nutritionSummaryTargetBasisEnum = ref
        .watch(_todayNutritionSummaryProvider)
        .value;

    if (nutritionSummaryTargetBasisEnum == null) return null;

    return nutritionSummaryTargetBasisEnum.summaryTargetBasisEnum;
  }

  void set(NutritionSummaryTargetBasisEnum value) {
    state = value;
  }
}

@riverpod
class _FoodAnalysises extends _$FoodAnalysises {
  @override
  Future<PagedListEntity<FoodAnalysisEntity>> build() async {
    final today = DateTime.now();
    final todayDateString =
        '${today.year}.${today.month.toString().padLeft(2, '0')}.${today.day.toString().padLeft(2, '0')}';
    print('todayDateStr $todayDateString');
    return await getIt<FoodAnalyzeRepository>().getFoodAnalysises(
      date: todayDateString,
    );
  }
}
