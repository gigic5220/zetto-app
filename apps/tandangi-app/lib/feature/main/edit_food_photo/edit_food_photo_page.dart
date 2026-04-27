import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:core_app/components/async_widget.dart';
import 'package:crop_your_image/crop_your_image.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/ions.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tandangi/feature/main/edit_food_photo/controller/edit_food_photo_provider.dart';
import 'package:tandangi/gen/assets.gen.dart';

class EditFoodPhotoPage extends ConsumerStatefulWidget {
  const EditFoodPhotoPage({
    super.key,
    required this.imageSource,
    required this.uint8List,
    required this.file,
  });

  static const String routeName = 'edit_food_photo';

  final ImageSource imageSource;
  final Uint8List uint8List;
  final File file;

  @override
  ConsumerState<EditFoodPhotoPage> createState() => _EditFoodPhotoPageState();
}

class _EditFoodPhotoPageState extends ConsumerState<EditFoodPhotoPage>
    with EditFoodPhotoStateMixin, EditFoodPhotoActionMixin {
  static const List<String> _weekdays = ['월', '화', '수', '목', '금', '토', '일'];
  static const double _baseOverlayImageWidth = 390;

  late CropController cropController;
  late Future<Size> _imageSizeFuture;
  Uint8List? _imageBytesForSize;

  @override
  void initState() {
    super.initState();
    cropController = CropController();
    _imageBytesForSize = widget.uint8List;
    _imageSizeFuture = _resolveImageSize(widget.uint8List);
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        initialUint8ListProvider.overrideWithBuild(
          (ref, _) => widget.uint8List,
        ),
        initialFileProvider.overrideWithBuild((ref, _) => widget.file),
      ],
      child: Consumer(
        builder: (context, ref, child) {
          final uint8List = watchUint8List(ref);
          final file = watchFile(ref);
          if (!identical(_imageBytesForSize, uint8List)) {
            _imageBytesForSize = uint8List;
            _imageSizeFuture = _resolveImageSize(uint8List);
          }
          return Scaffold(
            appBar: DSAppBar.page(text: '', showBackButton: true),
            body: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return Stack(
                            children: [
                              SizedBox(
                                width: constraints.maxWidth,
                                height: constraints.maxWidth,
                                child: Consumer(
                                  builder: (context, ref, child) {
                                    final imageMode = watchImageMode(ref);
                                    return AsyncWidget(
                                      asyncValue: imageMode,
                                      loadingWidget: const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                      builder: (imageMode) {
                                        return switch (imageMode) {
                                          ImageModeEnum.crop => Stack(
                                            children: [
                                              Crop(
                                                key: ValueKey(
                                                  Object.hash(
                                                    file.path,
                                                    uint8List.hashCode,
                                                    uint8List.lengthInBytes,
                                                  ),
                                                ),
                                                progressIndicator:
                                                    const CircularProgressIndicator(),
                                                image: uint8List,
                                                controller: cropController,
                                                onCropped: (CropResult result) {
                                                  switch (result) {
                                                    case CropSuccess(
                                                      :final croppedImage,
                                                    ):
                                                      onCroppedTakedPicture(
                                                        ref,
                                                        croppedImage:
                                                            croppedImage,
                                                      );
                                                    case CropFailure():
                                                  }
                                                },
                                                interactive: true,
                                                cornerDotBuilder: (_, _) =>
                                                    const SizedBox.shrink(),
                                                initialRectBuilder:
                                                    InitialRectBuilder.withBuilder(
                                                      (
                                                        viewportRect,
                                                        imageRect,
                                                      ) {
                                                        return Rect.fromLTWH(
                                                          viewportRect.left,
                                                          viewportRect.top,
                                                          constraints.maxWidth,
                                                          constraints.maxWidth,
                                                        );
                                                      },
                                                    ),
                                              ),
                                              Consumer(
                                                builder: (context, ref, child) {
                                                  final includeWatermark =
                                                      watchIncludeWatermark(
                                                        ref,
                                                      );
                                                  return AsyncWidget(
                                                    asyncValue:
                                                        includeWatermark,
                                                    builder: (includeWatermark) {
                                                      return Positioned.fill(
                                                        child: IgnorePointer(
                                                          child: _ImageOverlay(
                                                            includeWatermark:
                                                                includeWatermark,
                                                            dateText:
                                                                _formatDateText(),
                                                            timeText:
                                                                _formatTimeText(),
                                                            metrics: _OverlayMetrics.fromImageWidth(
                                                              constraints
                                                                  .maxWidth,
                                                              baseImageWidth:
                                                                  _baseOverlayImageWidth,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                          ImageModeEnum.original => FutureBuilder<Size>(
                                            future: _imageSizeFuture,
                                            builder: (context, snapshot) {
                                              final imageRect = snapshot.hasData
                                                  ? _calculateContainedImageRect(
                                                      sourceSize:
                                                          snapshot.data!,
                                                      destinationSize: Size(
                                                        constraints.maxWidth,
                                                        constraints.maxWidth,
                                                      ),
                                                    )
                                                  : Rect.fromLTWH(
                                                      0,
                                                      0,
                                                      constraints.maxWidth,
                                                      constraints.maxWidth,
                                                    );
                                              return Stack(
                                                children: [
                                                  Positioned.fromRect(
                                                    rect: imageRect,
                                                    child: Image.file(
                                                      file,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Consumer(
                                                    builder: (context, ref, child) {
                                                      final includeWatermark =
                                                          watchIncludeWatermark(
                                                            ref,
                                                          );
                                                      return AsyncWidget(
                                                        asyncValue:
                                                            includeWatermark,
                                                        builder: (includeWatermark) {
                                                          return Positioned.fromRect(
                                                            rect: imageRect,
                                                            child: _ImageOverlay(
                                                              includeWatermark:
                                                                  includeWatermark,
                                                              dateText:
                                                                  _formatDateText(),
                                                              timeText:
                                                                  _formatTimeText(),
                                                              metrics: _OverlayMetrics.fromImageWidth(
                                                                imageRect.width,
                                                                baseImageWidth:
                                                                    _baseOverlayImageWidth,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        };
                                      },
                                    );
                                  },
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 0,
                                child: Consumer(
                                  builder: (context, ref, child) {
                                    final imageMode = watchImageMode(ref);
                                    return AsyncWidget(
                                      asyncValue: imageMode,
                                      builder: (imageMode) {
                                        return DSFloatingAction.horizontal(
                                          action: DSIconSolidButton.medium(
                                            variant: DSIconSolidButtonVariant
                                                .secondary,
                                            iconUri:
                                                imageMode == ImageModeEnum.crop
                                                ? Assets.svgs.icBangFill
                                                : Assets.svgs.icReadingGlass,
                                            isShowShadow: true,
                                            onTap: () async =>
                                                await onTapToggleImageMode(ref),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.margin.width,
                        ),
                        child: Consumer(
                          builder: (context, ref, child) {
                            final includeWatermark = watchIncludeWatermark(ref);
                            return AsyncWidget(
                              asyncValue: includeWatermark,
                              builder: (includeWatermark) {
                                return DSListControl.medium(
                                  title: '',
                                  toggleValue: includeWatermark,
                                  trailingText: '워터마크 제거하기',
                                  trailingWidget: DSSwitch(
                                    value: includeWatermark,
                                    onChanged: (value) {},
                                  ),
                                  onChanged: (value) {
                                    onToggleIncludeWatermark(ref, value);
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DSNotice.normal(
                              title: '이 음식을 먹일까요?',
                              description: '음식이 잘 보이는 사진일수록 더 정확하게 분석돼요',
                              size: DSNoticeSize.small,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                DSCallToAction.horizontal(
                  buttons: [
                    DSSolidButton.large(
                      variant: DSSolidButtonVariant.tertiary,
                      text:
                          '다시 ${widget.imageSource == ImageSource.camera ? '촬영' : '선택'}',
                      onTap: () async => await onTapReSelectPhoto(
                        ref,
                        source: widget.imageSource,
                      ),
                    ),
                    DSSolidButton.large(
                      variant: DSSolidButtonVariant.primary,
                      text: '분석하기',
                      onTap: () async => await onTapAnalyze(
                        ref,
                        cropController: cropController,
                      ),
                    ),
                  ],
                ),
                CommonBottomPadding(),
              ],
            ),
          );
        },
      ),
    );
  }

  String _formatDateText() {
    final dateTime = DateTime.now();
    final weekday = _weekdays[dateTime.weekday - 1];
    return '${dateTime.year}년 ${dateTime.month}월 ${dateTime.day}일 ($weekday)';
  }

  String _formatTimeText() {
    final dateTime = DateTime.now();
    final period = dateTime.hour < 12 ? '오전' : '오후';
    final hour = dateTime.hour % 12 == 0 ? 12 : dateTime.hour % 12;
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$period $hour:$minute';
  }

  Future<Size> _resolveImageSize(Uint8List bytes) {
    final completer = Completer<Size>();
    final stream = MemoryImage(bytes).resolve(const ImageConfiguration());
    late final ImageStreamListener listener;
    listener = ImageStreamListener(
      (imageInfo, _) {
        stream.removeListener(listener);
        completer.complete(
          Size(
            imageInfo.image.width.toDouble(),
            imageInfo.image.height.toDouble(),
          ),
        );
      },
      onError: (exception, stackTrace) {
        stream.removeListener(listener);
        if (!completer.isCompleted) {
          completer.completeError(exception, stackTrace);
        }
      },
    );
    stream.addListener(listener);
    return completer.future;
  }

  Rect _calculateContainedImageRect({
    required Size sourceSize,
    required Size destinationSize,
  }) {
    final fittedSizes = applyBoxFit(
      BoxFit.contain,
      sourceSize,
      destinationSize,
    );
    return Alignment.center.inscribe(
      fittedSizes.destination,
      Offset.zero & destinationSize,
    );
  }
}

class _OverlayMetrics {
  const _OverlayMetrics({
    required this.scale,
    required this.padding,
    required this.logoWidth,
    required this.dateFontSize,
    required this.timeFontSize,
    required this.strokeWidth,
  });

  factory _OverlayMetrics.fromImageWidth(
    double imageWidth, {
    required double baseImageWidth,
  }) {
    final scale = imageWidth / baseImageWidth;
    return _OverlayMetrics(
      scale: scale,
      padding: 20 * scale,
      logoWidth: 70 * scale,
      dateFontSize: 24 * scale,
      timeFontSize: 20 * scale,
      strokeWidth: scale,
    );
  }

  final double scale;
  final double padding;
  final double logoWidth;
  final double dateFontSize;
  final double timeFontSize;
  final double strokeWidth;
}

class _ImageOverlay extends StatelessWidget {
  const _ImageOverlay({
    required this.dateText,
    required this.timeText,
    required this.metrics,
    required this.includeWatermark,
  });

  final String dateText;
  final String timeText;
  final _OverlayMetrics metrics;
  final bool includeWatermark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(metrics.padding),
      child: Stack(
        children: [
          if (includeWatermark)
            Align(
              alignment: Alignment.topRight,
              child: DSWrapper(
                uri: Assets.images.logoWithText.path,
                view: WrapperView(size: metrics.logoWidth, ratio: 70 / 48.1),
              ),
            ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _OutlinedText(
                  text: dateText,
                  style: context.textTheme.titleMSemiBold.copyWith(
                    fontSize: metrics.dateFontSize,
                    color: context.semanticColors.textInverse,
                  ),
                  strokeColor: context.semanticColors.borderInverse,
                  strokeWidth: metrics.strokeWidth,
                ),
                _OutlinedText(
                  text: timeText,
                  style: context.textTheme.titleSSemiBold.copyWith(
                    fontSize: metrics.timeFontSize,
                    color: context.semanticColors.textInverse,
                  ),
                  strokeColor: context.semanticColors.borderInverse,
                  strokeWidth: metrics.strokeWidth,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OutlinedText extends StatelessWidget {
  const _OutlinedText({
    required this.text,
    required this.style,
    required this.strokeColor,
    this.strokeWidth = 1,
  });

  final String text;
  final TextStyle style;
  final Color strokeColor;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: style.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ),
        ),
        Text(text, style: style),
      ],
    );
  }
}
