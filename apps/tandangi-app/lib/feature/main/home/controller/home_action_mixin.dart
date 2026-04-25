part of 'home_provider.dart';

mixin HomeActionMixin {
  void onTapSelectPhoto(
    BuildContext context, {
    required ImageSource source,
  }) async {
    final XFile? xFile = await ImagePicker().pickImage(source: source);
    if (xFile == null) return;
    final Uint8List imageData = await xFile.readAsBytes();
    if (!context.mounted) return;
    context.pushNamed(EditFoodPhotoPage.routeName, extra: imageData);
  }

  void onTapFloating(WidgetRef ref) {
    final isShowSelectPhotoButton = ref.read(_isShowSelectPhotoButtonProvider);
    ref
        .read(_isShowSelectPhotoButtonProvider.notifier)
        .set(!isShowSelectPhotoButton);
  }
}
