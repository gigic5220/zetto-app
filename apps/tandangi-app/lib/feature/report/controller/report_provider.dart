import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';
import 'package:tandangi/feature/report/edit_food_nutrition/edit_food_nutrition_page.dart';

part 'report_action_mixin.dart';
part 'report_provider.g.dart';
part 'report_state_mixin.dart';

class PreparedFoodImage {
  const PreparedFoodImage({
    required this.file,
    required this.contentType,
    required this.originalBytes,
    required this.compressedBytes,
  });

  final File file;
  final String contentType;
  final int originalBytes;
  final int compressedBytes;
}

class UploadedFoodImage {
  const UploadedFoodImage({
    required this.path,
    required this.downloadUrl,
    required this.uploadedBytes,
  });

  final String path;
  final String downloadUrl;
  final int uploadedBytes;
}

@Riverpod(dependencies: [])
String initialFoodAnalysisId(Ref ref) {
  throw Exception('argument를 초기화 시켜 주어야 합니다');
}

@Riverpod(dependencies: [initialFoodAnalysisId])
class _FoodAnalyzeResult extends _$FoodAnalyzeResult {
  @override
  Future<FoodAnalysisEntity> build() async {
    final foodAnalysisId = ref.watch(initialFoodAnalysisIdProvider);
    return await getIt<FoodAnalyzeRepository>().getFoodAnalysis(
      foodAnalysisId: int.parse(foodAnalysisId),
    );
  }
}

@riverpod
class _SelectedFoodItemIndex extends _$SelectedFoodItemIndex {
  @override
  int build() {
    return 0;
  }

  void set(int value) {
    state = value;
  }
}
