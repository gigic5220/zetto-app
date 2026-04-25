import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';

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
File initialSelectedPhoto(Ref ref) {
  throw Exception('argument를 초기화 시켜 주어야 합니다');
}

@Riverpod(dependencies: [])
bool initialIncludeWatermark(Ref ref) {
  throw Exception('argument를 초기화 시켜 주어야 합니다');
}

@Riverpod(dependencies: [initialSelectedPhoto, initialIncludeWatermark])
class _FoodAnalyzeResult extends _$FoodAnalyzeResult {
  @override
  Future<FoodAnalyzeResultEntity> build() async {
    final File selectedPhoto = ref.read(initialSelectedPhotoProvider);
    final bool includeWatermark = ref.read(initialIncludeWatermarkProvider);
    return await getIt<FoodAnalyzeRepository>().postFoodAnalysis(
      imagePath: selectedPhoto.path,
      includeWatermark: includeWatermark,
    );
  }
}

AnalyzedFoodItemEntity? _pickInitialFoodItem(FoodAnalyzeResultEntity? result) {
  if (result == null) return null;
  if (result.main.isNotEmpty) return result.main.first;
  if (result.sides.isNotEmpty) return result.sides.first;
  if (result.others.isNotEmpty) return result.others.first;
  return null;
}

@Riverpod(dependencies: [_FoodAnalyzeResult])
class _SelectedFoodItem extends _$SelectedFoodItem {
  @override
  AnalyzedFoodItemEntity? build() {
    final foodAnalyzeResult = ref.watch(_foodAnalyzeResultProvider);
    return switch (foodAnalyzeResult) {
      AsyncData(:final value) => _pickInitialFoodItem(value),
      _ => null,
    };
  }

  void set(AnalyzedFoodItemEntity value) {
    state = value;
  }
}
