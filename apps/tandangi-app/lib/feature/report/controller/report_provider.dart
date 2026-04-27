import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
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

FoodAnalysisFoodEntity? _pickInitialFoodItem(FoodAnalysisEntity? result) {
  if (result == null) return null;
  if (result.mainFoodItems.isNotEmpty) return result.mainFoodItems.first;
  if (result.sideFoodItems.isNotEmpty) return result.sideFoodItems.first;
  if (result.otherFoodItems.isNotEmpty) return result.otherFoodItems.first;
  return null;
}

@Riverpod(dependencies: [_FoodAnalyzeResult])
class _SelectedFoodItem extends _$SelectedFoodItem {
  @override
  FoodAnalysisFoodEntity? build() {
    final foodAnalyzeResult = ref.watch(_foodAnalyzeResultProvider);
    return switch (foodAnalyzeResult) {
      AsyncData(:final value) => _pickInitialFoodItem(value),
      _ => null,
    };
  }

  void set(FoodAnalysisFoodEntity value) {
    state = value;
  }
}
