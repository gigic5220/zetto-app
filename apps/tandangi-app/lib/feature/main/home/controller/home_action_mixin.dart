part of 'home_provider.dart';

mixin HomeActionMixin {
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
}
