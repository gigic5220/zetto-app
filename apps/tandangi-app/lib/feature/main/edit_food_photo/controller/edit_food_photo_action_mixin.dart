part of 'edit_food_photo_provider.dart';

mixin EditFoodPhotoActionMixin {
  final Completer<void> _imageCropCompleter = Completer<void>();

  Future<File> uint8ListToFile(Uint8List bytes, {String? filename}) async {
    final dir = await getTemporaryDirectory();
    final file = File(
      '${dir.path}/${filename ?? 'temp_${DateTime.now().millisecondsSinceEpoch}'}',
    );
    return file..writeAsBytesSync(bytes, flush: true);
  }

  void onToggleIncludeWatermark(WidgetRef ref, bool value) {
    ref.read(_includeWatermarkProvider.notifier).set(value);
  }

  Future<void> onCroppedTakedPicture(
    WidgetRef ref, {
    required Uint8List croppedImage,
  }) async {
    final File file = await uint8ListToFile(croppedImage);
    final bool includeWatermark =
        ref.read(_includeWatermarkProvider).value ?? true;
    final PreferenceStorage storage = PreferenceStorage();
    await storage.write('include_watermark', includeWatermark);
    if (!ref.context.mounted) return;
    ref.context.pushNamed(
      ReportPage.routeName,
      extra: {'croppedPhoto': file, 'includeWatermark': includeWatermark},
    );
    _imageCropCompleter.complete();
  }

  Future<void> onTapCrop(
    WidgetRef ref, {
    required CropController cropController,
  }) async {
    cropController.crop();
    await _imageCropCompleter.future;
  }
}
