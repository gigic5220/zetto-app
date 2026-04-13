import 'package:camera/camera.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/components/organism.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/feature/photo_upload/controller/photo_upload_provider.dart';

class PhotoUploadPage extends ConsumerStatefulWidget {
  const PhotoUploadPage({super.key});

  static const routeName = 'photo_upload';

  @override
  ConsumerState<PhotoUploadPage> createState() => _PhotoUploadPageState();
}

class _PhotoUploadPageState extends ConsumerState<PhotoUploadPage>
    with PhotoUploadStateMixin, PhotoUploadActionMixin, WidgetsBindingObserver {
  late CameraController? controller;
  @override
  void initState() {
    super.initState();
    initCameraController(
      ref,
      context: context,
      errorDialogWidget:
          ({
            required BuildContext context,
            required bool isPermissionDenied,
            required String message,
            required void Function() onPressedConfirmButton,
          }) {
            return DSModal(
              noticeWidget: DSNotice.info(
                title: message,
                size: DSNoticeSize.small,
              ),
              actionWidget: DSAction.horizontal(
                buttons: [
                  DSSolidButton.medium(
                    variant: DSSolidButtonVariant.primary,
                    text: '확인',
                    onTap: onPressedConfirmButton,
                  ),
                ],
              ),
            );
          },
      setController: ({required CameraController cameraController}) {
        controller = cameraController;
      },
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    handleAppLifecycleChanges(
      ref,
      context: context,
      appLifecycleState: state,
      controller: controller,
      errorDialogWidget:
          ({
            required BuildContext context,
            required bool isPermissionDenied,
            required String message,
            required void Function() onPressedConfirmButton,
          }) {
            return DSModal(
              noticeWidget: DSNotice.info(
                title: message,
                size: DSNoticeSize.small,
              ),
              actionWidget: DSAction.horizontal(
                buttons: [
                  DSSolidButton.medium(
                    variant: DSSolidButtonVariant.primary,
                    text: '확인',
                    onTap: onPressedConfirmButton,
                  ),
                ],
              ),
            );
          },
      setController: ({required CameraController cameraController}) {
        controller = cameraController;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DSAppBar.page(text: '', showBackButton: true),
      body: Column(
        children: [
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final height = width;
              return SizedBox(
                width: width,
                height: height,
                child: Consumer(
                  builder: (context, ref, _) {
                    final pageInitCompleter = watchPageInitCompleter(ref);
                    final currentPhotoUploadType = watchPhotoUploadType(ref);

                    return FutureBuilder(
                      future: pageInitCompleter.future,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const SizedBox.shrink();
                        }
                        return switch (currentPhotoUploadType) {
                          PhotoUploadType.camera =>
                            controller != null
                                ? CameraPreview(controller!)
                                : const SizedBox.shrink(),
                          PhotoUploadType.gallery => const SizedBox.shrink(),
                        };
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
