part of 'report_provider.dart';

mixin ReportActionMixin {
  void onPageFocused(WidgetRef ref) {
    ref.invalidate(_selectedFoodItemIndexProvider);
    ref.invalidate(_foodAnalyzeResultProvider);
  }

  Future<void> onTapShare(
    WidgetRef ref, {
    required ScreenshotController screenshotController,
  }) async {
    final capturedImage = await screenshotController.capture();
    if (capturedImage == null) return;

    final renderBox = ref.context.findRenderObject() as RenderBox?;

    await SharePlus.instance.share(
      ShareParams(
        files: [XFile.fromData(capturedImage, mimeType: 'image/png')],
        fileNameOverrides: [
          'tandangi-report-${DateTime.now().millisecondsSinceEpoch}.png',
        ],
        sharePositionOrigin: renderBox == null
            ? null
            : renderBox.localToGlobal(Offset.zero) & renderBox.size,
      ),
    );
  }

  void onTapAnalyzedFoodItem(
    WidgetRef ref, {
    required int selectedFoodItemIndex,
  }) {
    ref
        .read(_selectedFoodItemIndexProvider.notifier)
        .set(selectedFoodItemIndex);
  }

  void onTapEditFoodNutrition(WidgetRef ref) {
    final foodAnalyzeResultEntity = ref.read(_foodAnalyzeResultProvider).value;
    if (foodAnalyzeResultEntity == null) return;
    final List<FoodAnalysisFoodEntity> analyzedFoodItems = [
      ...foodAnalyzeResultEntity.mainFoodItems,
      ...foodAnalyzeResultEntity.sideFoodItems,
      ...foodAnalyzeResultEntity.otherFoodItems,
    ];

    ref.context.pushNamed(
      EditFoodNutritionPage.routeName,
      extra: {
        'foodAnalysisId': foodAnalyzeResultEntity.foodAnalysisId,
        'analyzedFoodItems': analyzedFoodItems,
      },
    );
  }
}
