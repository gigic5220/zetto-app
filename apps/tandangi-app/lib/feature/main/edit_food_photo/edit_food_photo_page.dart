import 'dart:typed_data';

import 'package:core_app/components/async_widget.dart';
import 'package:crop_your_image/crop_your_image.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/molecules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/feature/main/edit_food_photo/controller/edit_food_photo_provider.dart';

class EditFoodPhotoPage extends ConsumerStatefulWidget {
  const EditFoodPhotoPage({super.key, required this.selectedPhoto});

  static const String routeName = 'edit_food_photo';

  final Uint8List selectedPhoto;

  @override
  ConsumerState<EditFoodPhotoPage> createState() => _EditFoodPhotoPageState();
}

class _EditFoodPhotoPageState extends ConsumerState<EditFoodPhotoPage>
    with EditFoodPhotoStateMixin, EditFoodPhotoActionMixin {
  late CropController cropController;

  @override
  void initState() {
    super.initState();
    cropController = CropController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DSAppBar.page(text: '', showBackButton: true),
      body: Column(
        children: [
          Consumer(
            builder: (context, ref, child) {
              final includeWatermark = watchIncludeWatermark(ref);
              return AsyncWidget(
                asyncValue: includeWatermark,
                builder: (includeWatermark) {
                  return DSSwitch(
                    value: includeWatermark,
                    onChanged: (value) {
                      onToggleIncludeWatermark(ref, value);
                    },
                  );
                },
              );
            },
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxWidth,
                child: Crop(
                  image: widget.selectedPhoto,
                  controller: cropController,
                  onCropped: (CropResult result) {
                    switch (result) {
                      case CropSuccess(:final croppedImage):
                        onCroppedTakedPicture(ref, croppedImage: croppedImage);
                      case CropFailure():
                    }
                  },
                  interactive: true,
                  cornerDotBuilder: (_, _) => const SizedBox.shrink(),
                  initialRectBuilder: InitialRectBuilder.withBuilder((
                    viewportRect,
                    imageRect,
                  ) {
                    return Rect.fromLTWH(
                      viewportRect.left,
                      viewportRect.top,
                      constraints.maxWidth,
                      constraints.maxWidth,
                    );
                  }),
                ),
              );
            },
          ),
          DSCallToAction.horizontal(
            buttons: [
              DSSolidButton.large(
                variant: DSSolidButtonVariant.primary,
                text: '크롭',
                onTap: () async =>
                    await onTapCrop(ref, cropController: cropController),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
