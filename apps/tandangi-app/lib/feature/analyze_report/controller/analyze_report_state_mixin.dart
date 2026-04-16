part of 'analyze_report_provider.dart';

mixin AnalyzeReportStateMixin {
  Completer<void> watchPageInitCompleter(WidgetRef ref) {
    return ref.watch(_pageInitCompleterProvider);
  }

  PhotoUploadType watchPhotoUploadType(WidgetRef ref) {
    return ref.watch(_photoUploadTypeProvider);
  }

  AsyncValue<List<AssetEntity>> watchAlbumAssets(WidgetRef ref) {
    return ref.watch(_albumAssetsProvider);
  }

  bool watchIsAlbumAssetsLoading(WidgetRef ref) {
    return ref.read(_albumAssetsProvider.notifier).isLoadMore;
  }

  AssetEntity? watchSelectedAlbumAsset(WidgetRef ref) {
    return ref.watch(_selectedAlbumAssetProvider);
  }
}
