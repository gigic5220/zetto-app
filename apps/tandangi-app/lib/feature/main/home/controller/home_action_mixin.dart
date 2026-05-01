part of 'home_provider.dart';

mixin HomeActionMixin {
  void onPageFocused(WidgetRef ref) {
    ref.invalidate(_todayNutritionSummaryProvider);
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
    DialogUtils.showLockedBottomSheet(
      context: ref.context,
      child: buildBottomSheetBodyWidgetCallback(
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
          ref.invalidate(_todayNutritionSummaryProvider);
          if (!ref.context.mounted) return;
          ref.context.pop();
        },
      ),
    );
  }
}
