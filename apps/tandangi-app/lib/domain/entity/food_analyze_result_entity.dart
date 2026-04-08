import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_analyze_result_entity.freezed.dart';

/// 음식 이미지 분석 API 응답 (domain)
@freezed
abstract class FoodAnalyzeResultEntity with _$FoodAnalyzeResultEntity {
  const factory FoodAnalyzeResultEntity({
    @Default(<String>[]) List<String> main,
    @Default(<String>[]) List<String> sides,
    @Default(<String>[]) List<String> visionAssumptions,
    /// `final.nutrients` — 키별 { value, unit } 형태
    @Default(<String, dynamic>{}) Map<String, dynamic> nutrients,
  }) = _FoodAnalyzeResultEntity;
}
