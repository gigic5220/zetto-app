part of 'analyze_report_provider.dart';

class PreparedFoodImage {
  const PreparedFoodImage({
    required this.file,
    required this.contentType,
    required this.originalBytes,
    required this.compressedBytes,
  });

  final File file;
  final String contentType;
  final int originalBytes;
  final int compressedBytes;
}

class UploadedFoodImage {
  const UploadedFoodImage({
    required this.path,
    required this.downloadUrl,
    required this.uploadedBytes,
  });

  final String path;
  final String downloadUrl;
  final int uploadedBytes;
}

mixin AnalyzeReportActionMixin {
  void tabControllerListener(WidgetRef ref, TabController tabController) {
    tabController.addListener(() async {
      final targetType = switch (tabController.index) {
        0 => PhotoUploadType.camera,
        1 => PhotoUploadType.gallery,
        _ => throw Exception('Invalid tab index'),
      };
      ref.read(_photoUploadTypeProvider.notifier).set(targetType);
      switch (targetType) {
        case PhotoUploadType.camera:
          final XFile? picked = await ImagePicker().pickImage(
            source: ImageSource.gallery,
          );
          if (picked == null) return;
          break;
        case PhotoUploadType.gallery:
          break;
      }
    });
  }

  Future<void> onRefreshAlbum(WidgetRef ref) async {
    await ref.read(_albumAssetsProvider.notifier).onRefresh();
  }

  Future<void> onLoadMoreAlbum(WidgetRef ref) async {
    await ref.read(_albumAssetsProvider.notifier).onLoadMore();
  }

  Future<void> onTapFoodAnalyze(WidgetRef ref) async {
    final XFile? picked = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (picked == null) return;

    File? analysisTempFile;
    File? storageTempFile;

    try {
      final analysisPrepared = await _prepareAnalysisImage(
        localImagePath: picked.path,
      );
      analysisTempFile = analysisPrepared.file;

      final storagePrepared = await _prepareStorageImage(
        localImagePath: picked.path,
      );
      storageTempFile = storagePrepared.file;

      final uploaded = await _uploadFoodImageToFirebase(
        prepared: storagePrepared,
      );

      final result = await getIt<FoodAnalyzeRepository>().analyzeImage(
        imagePath: analysisPrepared.file.path,
        imageStoragePath: uploaded.path,
        imageDownloadUrl: uploaded.downloadUrl,
      );

      //ref.read(_foodAnalyzeResultProvider.notifier).set(result);
    } finally {
      await _deleteTempFileIfNeeded(
        file: analysisTempFile,
        originalPath: picked.path,
      );

      await _deleteTempFileIfNeeded(
        file: storageTempFile,
        originalPath: picked.path,
      );
    }
  }

  Future<void> _analyze({required String path}) async {
    File? analysisTempFile;
    File? storageTempFile;
    try {
      final analysisPrepared = await _prepareAnalysisImage(
        localImagePath: path,
      );
      analysisTempFile = analysisPrepared.file;

      final storagePrepared = await _prepareStorageImage(localImagePath: path);
      storageTempFile = storagePrepared.file;

      final uploaded = await _uploadFoodImageToFirebase(
        prepared: storagePrepared,
      );

      final result = await getIt<FoodAnalyzeRepository>().analyzeImage(
        imagePath: analysisPrepared.file.path,
        imageStoragePath: uploaded.path,
        imageDownloadUrl: uploaded.downloadUrl,
      );

      //ref.read(_foodAnalyzeResultProvider.notifier).set(result);
    } finally {
      await _deleteTempFileIfNeeded(file: analysisTempFile, originalPath: path);

      await _deleteTempFileIfNeeded(file: storageTempFile, originalPath: path);
    }
  }

  Future<PreparedFoodImage> _prepareAnalysisImage({
    required String localImagePath,
  }) async {
    return _compressFoodImage(
      localImagePath: localImagePath,
      filePrefix: 'analysis',
      minWidth: 1920,
      minHeight: 1920,
      quality: 90,
    );
  }

  Future<PreparedFoodImage> _prepareStorageImage({
    required String localImagePath,
  }) async {
    return _compressFoodImage(
      localImagePath: localImagePath,
      filePrefix: 'storage',
      minWidth: 1440,
      minHeight: 1440,
      quality: 82,
    );
  }

  Future<UploadedFoodImage> _uploadFoodImageToFirebase({
    required PreparedFoodImage prepared,
  }) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      throw Exception('로그인이 필요합니다.');
    }

    final storage = FirebaseStorage.instanceFor(
      bucket: FlavorInfo.firebaseStorageUrl,
    );

    final now = DateTime.now();
    final storagePath = _buildFoodImageStoragePath(uid: user.uid, now: now);

    final ref = storage.ref().child(storagePath);

    final metadata = SettableMetadata(
      contentType: prepared.contentType,
      cacheControl: 'public,max-age=31536000,immutable',
    );

    await ref.putFile(prepared.file, metadata);
    final downloadUrl = await ref.getDownloadURL();

    return UploadedFoodImage(
      path: storagePath,
      downloadUrl: downloadUrl,
      uploadedBytes: prepared.compressedBytes,
    );
  }

  Future<void> _deleteTempFileIfNeeded({
    required File? file,
    required String originalPath,
  }) async {
    if (file == null) return;
    if (file.path == originalPath) return;

    try {
      if (await file.exists()) {
        await file.delete();
      }
    } catch (_) {
      // 임시 파일 삭제 실패는 무시
    }
  }

  String _buildFoodImageStoragePath({
    required String uid,
    required DateTime now,
  }) {
    final fileName = '${now.microsecondsSinceEpoch}.jpg';

    return 'meal-images/'
        '$uid/'
        '${now.year}/'
        '${now.month.toString().padLeft(2, '0')}/'
        '${now.day.toString().padLeft(2, '0')}/'
        '$fileName';
  }

  Future<PreparedFoodImage> _compressFoodImage({
    required String localImagePath,
    required String filePrefix,
    required int minWidth,
    required int minHeight,
    required int quality,
  }) async {
    final originalFile = File(localImagePath);
    final originalBytes = await originalFile.length();

    final tempDir = await getTemporaryDirectory();
    final targetPath = p.join(
      tempDir.path,
      '${filePrefix}_${DateTime.now().microsecondsSinceEpoch}.jpg',
    );

    final XFile? compressedXFile =
        await FlutterImageCompress.compressAndGetFile(
          originalFile.absolute.path,
          targetPath,
          format: CompressFormat.jpeg,
          minWidth: minWidth,
          minHeight: minHeight,
          quality: quality,
          keepExif: false,
        );

    final compressedFile = compressedXFile == null
        ? originalFile
        : File(compressedXFile.path);

    final compressedBytes = await compressedFile.length();

    return PreparedFoodImage(
      file: compressedFile,
      contentType: 'image/jpeg',
      originalBytes: originalBytes,
      compressedBytes: compressedBytes,
    );
  }

  void setPhotoUploadType(WidgetRef ref, PhotoUploadType type) {
    ref.read(_photoUploadTypeProvider.notifier).set(type);
  }

  Future<void> initCameraController(
    WidgetRef ref, {
    required BuildContext context,
    required Widget Function({
      required BuildContext context,
      required bool isPermissionDenied,
      required String message,
      required void Function() onPressedConfirmButton,
    })
    errorDialogWidget,
    required void Function({required CameraController cameraController})
    setController,
    CameraDescription? cameraDescription,
  }) async {
    final List<CameraDescription> cameras = await availableCameras();

    CameraController cameraController = CameraController(
      cameraDescription ??
          cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.back,
          ),
      ResolutionPreset.veryHigh,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    try {
      await cameraController.initialize();
      if (!ref.read(_pageInitCompleterProvider).isCompleted) {
        ref.read(_pageInitCompleterProvider).complete();
      }
    } on CameraException catch (e) {
      String message = '';
      bool isPermissionDenied = false;
      switch (e.code) {
        case 'CameraAccessDenied' ||
            'CameraAccessDeniedWithoutPrompt' ||
            'CameraAccessRestricted':
          message = '카메라 접근 권한이 거절되었습니다\n설정에서 카메라 접근 권한을 허용해 주세요';
          isPermissionDenied = true;
        default:
          message = '잠시 후 다시 시도해줘';
      }
      if (context.mounted) {
        await showDialog(
          context: context,
          builder: (context) {
            return errorDialogWidget(
              context: context,
              message: message,
              isPermissionDenied: isPermissionDenied,
              onPressedConfirmButton: () async {
                if (isPermissionDenied) {
                  await openAppSettings();
                }
              },
            );
          },
        );
      }
    }

    setController(cameraController: cameraController);
  }

  void handleAppLifecycleChanges(
    WidgetRef ref, {
    required BuildContext context,
    required AppLifecycleState appLifecycleState,
    required CameraController? controller,
    required Widget Function({
      required BuildContext context,
      required bool isPermissionDenied,
      required String message,
      required void Function() onPressedConfirmButton,
    })
    errorDialogWidget,
    required void Function({required CameraController cameraController})
    setController,
  }) {
    if (controller == null || !controller.value.isInitialized) {
      return;
    }

    if (appLifecycleState == AppLifecycleState.inactive) {
      controller.dispose();
    } else if (appLifecycleState == AppLifecycleState.resumed) {
      initCameraController(
        ref,
        context: context,
        errorDialogWidget: errorDialogWidget,
        cameraDescription: controller.description,
        setController: setController,
      );
    }
  }

  void onTapNext(WidgetRef ref) async {
    final selectedAlbumAsset = ref.read(_selectedAlbumAssetProvider);
    if (selectedAlbumAsset == null) return;

    final file = await selectedAlbumAsset.file;
    if (file == null) return;
    await _analyze(path: file.path);
  }
}
