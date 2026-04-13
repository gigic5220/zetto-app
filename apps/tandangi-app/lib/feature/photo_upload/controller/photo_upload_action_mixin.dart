part of 'photo_upload_provider.dart';

mixin PhotoUploadActionMixin {
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
}
