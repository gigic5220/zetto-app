part of 'home_provider.dart';

mixin HomeActionMixin {
  void onPageFocused(WidgetRef ref) {
    ref.invalidate(_dailyNutritionSummariesProvider);
    ref.invalidate(_userCharacterDetailProvider);
    ref.invalidate(_foodAnalysisesProvider);
  }

  void onTapSelectPhoto(
    BuildContext context, {
    required ImageSource source,
  }) async {
    final XFile? xFile = await ImagePicker().pickImage(source: source);
    if (xFile == null) return;
    final Uint8List imageData = await xFile.readAsBytes();
    final File file = File(xFile.path);
    if (!context.mounted) return;
    context.pushNamed(
      EditFoodPhotoPage.routeName,
      extra: {'imageSource': source, 'uint8List': imageData, 'file': file},
    );
  }

  void onTapFloating(WidgetRef ref) {
    final isShowSelectPhotoButton = ref.read(_isShowSelectPhotoButtonProvider);
    ref
        .read(_isShowSelectPhotoButtonProvider.notifier)
        .set(!isShowSelectPhotoButton);
  }

  void onTapChangeNutritionStandards(
    WidgetRef ref, {
    required Widget Function({
      required NutritionSummaryTargetBasisEnum? originalSummaryTargetBasisEnum,
      required void Function({
        required NutritionSummaryTargetBasisEnum summaryTargetBasisEnum,
      })
      onTapSummaryTargetBasisEnum,
    })
    buildBottomSheetBodyWidgetCallback,
    required Widget Function({
      required VoidCallback onTapCancel,
      required Future<void> Function() onTapChange,
    })
    buildBottomSheetCallToActionWidgetCallback,
  }) {
    final dailyNutritionSummaries = ref.read(_dailyNutritionSummariesProvider);
    final originalSummaryTargetBasisEnum =
        dailyNutritionSummaries.value?.summaries.first.summaryTargetBasisEnum;
    print('originalSummaryTargetBasisEnum: $originalSummaryTargetBasisEnum');
    DialogUtils.showLockedBottomSheet(
      context: ref.context,
      child: buildBottomSheetBodyWidgetCallback(
        originalSummaryTargetBasisEnum: originalSummaryTargetBasisEnum,
        onTapSummaryTargetBasisEnum:
            ({
              required NutritionSummaryTargetBasisEnum summaryTargetBasisEnum,
            }) {
              ref
                  .read(
                    _selectedNutritionSummaryTargetBasisEnumProvider.notifier,
                  )
                  .set(summaryTargetBasisEnum);
            },
      ),
      callToActionWidget: buildBottomSheetCallToActionWidgetCallback(
        onTapCancel: () {
          ref.context.pop();
        },
        onTapChange: () async {
          final selectedNutritionSummaryTargetBasisEnum = ref.read(
            _selectedNutritionSummaryTargetBasisEnumProvider,
          );
          if (selectedNutritionSummaryTargetBasisEnum == null) return;
          await getIt<NutritionRepository>().updateSummaryTargetBasis(
            selectedNutritionSummaryTargetBasisEnum,
          );
          ref.invalidate(_dailyNutritionSummariesProvider);
          if (!ref.context.mounted) return;
          ToastUtils.showToast(
            ref.context,
            (context) => DSToast(type: .success, text: '식단 기준을 변경했어요'),
          );
          ref.context.pop();
        },
      ),
    );
  }

  void onTapFoodAnalysisItem(
    WidgetRef ref, {
    required FoodAnalysisEntity foodAnalysis,
  }) {
    ref.context.pushNamed(
      ReportPage.routeName,
      queryParameters: {
        'foodAnalysisId': foodAnalysis.foodAnalysisId.toString(),
      },
    );
  }
}
