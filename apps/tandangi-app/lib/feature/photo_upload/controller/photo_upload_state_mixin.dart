part of 'photo_upload_provider.dart';

mixin PhotoUploadStateMixin {
  Completer<void> watchPageInitCompleter(WidgetRef ref) {
    return ref.watch(_pageInitCompleterProvider);
  }

  PhotoUploadType watchPhotoUploadType(WidgetRef ref) {
    return ref.watch(_photoUploadTypeProvider);
  }
}
