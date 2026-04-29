part of 'analyze_loading_provider.dart';

mixin AnalyzeLoadingActionMixin {
  Future<void> onInit(
    BuildContext context, {
    required File file,
    required bool includeWatermark,
  }) async {
    final foodAnalysisResult = await getIt<FoodAnalyzeRepository>()
        .postFoodAnalysis(
          imagePath: file.path,
          includeWatermark: includeWatermark,
        );
    if (context.mounted) {
      context.replaceNamed(
        ReportPage.routeName,
        queryParameters: {
          'foodAnalysisId': foodAnalysisResult.foodAnalysisId.toString(),
        },
      );
    }
  }
}
