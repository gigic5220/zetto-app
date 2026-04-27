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

  Future<void> onAnalyzeStart(WidgetRef ref, {required File file}) async {
    final bool includeWatermark =
        ref.read(_includeWatermarkProvider).value ?? true;
    final PreferenceStorage storage = PreferenceStorage();
    await storage.write('include_watermark', includeWatermark);
    if (!ref.context.mounted) return;
    ref.context.pushNamed(
      AnalyzeLoadingPage.routeName,
      extra: {'file': file, 'includeWatermark': includeWatermark},
    );
    _imageCropCompleter.complete();
  }

  Future<void> onCroppedTakedPicture(
    WidgetRef ref, {
    required Uint8List croppedImage,
  }) async {
    final File file = await uint8ListToFile(croppedImage);
    await onAnalyzeStart(ref, file: file);
  }

  Future<void> onTapAnalyze(
    WidgetRef ref, {
    required CropController cropController,
  }) async {
    final imageModeEnum = ref.read(_imageModeProvider).value;
    switch (imageModeEnum) {
      case ImageModeEnum.crop:
        await onTapCrop(ref, cropController: cropController);
        break;
      case ImageModeEnum.original:
        final file = ref.read(initialFileProvider);
        await onAnalyzeStart(ref, file: file);
        break;
      default:
        throw Exception('Invalid image mode');
    }
  }

  Future<void> onTapReSelectPhoto(
    WidgetRef ref, {
    required ImageSource source,
  }) async {
    await onTapToggleImageMode(
      ref,
      initialImageModeEnum: ImageModeEnum.original,
    );
    final XFile? xFile = await ImagePicker().pickImage(source: source);
    if (xFile == null) return;
    final Uint8List imageData = await xFile.readAsBytes();
    final File file = File(xFile.path);
    ref.read(initialFileProvider.notifier).set(file);
    ref.read(initialUint8ListProvider.notifier).set(imageData);
  }

  Future<void> onTapCrop(
    WidgetRef ref, {
    required CropController cropController,
  }) async {
    cropController.crop();
    await _imageCropCompleter.future;
  }

  Future<void> onTapToggleImageMode(
    WidgetRef ref, {
    ImageModeEnum? initialImageModeEnum,
  }) async {
    final imageModeEnum =
        initialImageModeEnum ??
        ref.read(_imageModeProvider).value ??
        ImageModeEnum.crop;
    final newImageModeEnum = imageModeEnum == ImageModeEnum.crop
        ? ImageModeEnum.original
        : ImageModeEnum.crop;
    final PreferenceStorage storage = PreferenceStorage();
    await storage.write('image_mode', newImageModeEnum.name);
    ref.read(_imageModeProvider.notifier).set(newImageModeEnum);
  }
}
