part of 'edit_food_photo_provider.dart';

mixin EditFoodPhotoStateMixin {
  AsyncValue<bool> watchIncludeWatermark(WidgetRef ref) {
    return ref.watch(_includeWatermarkProvider);
  }
}
