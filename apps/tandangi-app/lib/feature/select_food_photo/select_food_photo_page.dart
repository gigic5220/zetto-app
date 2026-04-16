import 'package:camera/camera.dart';
import 'package:core_app/components/async_widget.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/components/organism.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:tandangi/component/custom_paged_refresh_scroll_view.dart';
import 'package:tandangi/feature/select_food_photo/controller/select_food_photo_provider.dart';
import 'package:tandangi/gen/assets.gen.dart';

class SelectFoodPhotoPage extends ConsumerStatefulWidget {
  const SelectFoodPhotoPage({super.key});

  static const routeName = 'select_food_photo';

  @override
  ConsumerState<SelectFoodPhotoPage> createState() =>
      _SelectFoodPhotoPageState();
}

class _SelectFoodPhotoPageState extends ConsumerState<SelectFoodPhotoPage>
    with
        SelectFoodPhotoStateMixin,
        SelectFoodPhotoActionMixin,
        WidgetsBindingObserver,
        TickerProviderStateMixin {
  late CameraController? controller;
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        tabControllerListener(ref, tabController);
      });
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
    tabController.removeListener(() {
      tabControllerListener(ref, tabController);
    });
    tabController.dispose();
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
      appBar: DSAppBar.page(
        text: '',
        showBackButton: true,
        actionWidgetList: [
          if (watchSelectedAlbumAsset(ref) != null)
            Consumer(
              builder: (context, ref, _) {
                final selectedAlbumAsset = watchSelectedAlbumAsset(ref);
                return selectedAlbumAsset != null
                    ? DSTextButton(
                        text: '다음',
                        trailingUri: Assets.svgs.chevronRight,
                        onTap: () {},
                        variant: DSTextButtonVariant.primary,
                      )
                    : const SizedBox.shrink();
              },
            ),
        ],
      ),
      body: Column(
        children: [
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
                          PhotoUploadType.gallery => Container(
                            color: context.semanticColors.borderDefault,
                            height: height,
                            width: width,
                            child: Center(child: Text('사진선택전')),
                          ),
                        };
                      },
                    );
                  },
                ),
              );
            },
          ),
          DSTabList(
            items: [
              DSTabListItem(text: '촬영해서 먹이기'),
              DSTabListItem(text: '앨범에서 선택'),
            ],
            tabController: tabController,
          ),
          Expanded(
            child: Consumer(
              builder: (context, ref, _) {
                final currentPhotoUploadType = watchPhotoUploadType(ref);
                return switch (currentPhotoUploadType) {
                  PhotoUploadType.camera => const SizedBox.shrink(),
                  PhotoUploadType.gallery => AsyncWidget(
                    asyncValue: watchAlbumAssets(ref),
                    builder: (albumAssets) {
                      return CustomPagedRefreshScrollView.grid(
                        onLoadMore: () async {
                          await onLoadMoreAlbum(ref);
                        },
                        isLoadMore: watchIsAlbumAssetsLoading(ref),
                        grid: SliverGrid.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 1,
                                mainAxisSpacing: 1,
                              ),
                          itemCount: albumAssets.length,
                          itemBuilder: (context, index) => Container(
                            color: context.semanticColors.brandSecondary,
                            child: Image(
                              image: AssetEntityImageProvider(
                                albumAssets[index],
                                isOriginal: false,
                                thumbnailSize: const ThumbnailSize.square(300),
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}
