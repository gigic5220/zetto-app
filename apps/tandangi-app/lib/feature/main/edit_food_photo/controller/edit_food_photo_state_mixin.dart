part of 'edit_food_photo_provider.dart';

mixin EditFoodPhotoStateMixin {
  AsyncValue<bool> watchIncludeWatermark(WidgetRef ref) {
    return ref.watch(_includeWatermarkProvider);
  }

  AsyncValue<ImageModeEnum> watchImageMode(WidgetRef ref) {
    return ref.watch(_imageModeProvider);
  }

  Uint8List watchUint8List(WidgetRef ref) {
    return ref.watch(initialUint8ListProvider);
  }

  File watchFile(WidgetRef ref) {
    return ref.watch(initialFileProvider);
  }
}
