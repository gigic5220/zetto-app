part of 'report_provider.dart';

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

  final XFile? compressedXFile = await FlutterImageCompress.compressAndGetFile(
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

mixin ReportActionMixin {
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

      ref.read(_foodAnalyzeResultProvider.notifier).set(result);
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
}
