import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:core_app/core/storage/storage.dart';
import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/feature/analyze_loading/analyze_loading_page.dart';
import 'package:tandangi/feature/report/report_page.dart';

part 'edit_food_photo_action_mixin.dart';
part 'edit_food_photo_provider.g.dart';
part 'edit_food_photo_state_mixin.dart';

enum ImageModeEnum { crop, original }

@Riverpod(dependencies: [])
class InitialUint8List extends _$InitialUint8List {
  @override
  Uint8List build() {
    throw Exception('argument를 초기화 시켜 주어야 합니다');
  }

  void set(Uint8List value) {
    state = value;
  }
}

@Riverpod(dependencies: [])
class InitialFile extends _$InitialFile {
  @override
  File build() {
    throw Exception('argument를 초기화 시켜 주어야 합니다');
  }

  void set(File value) {
    state = value;
  }
}

@riverpod
class _IncludeWatermark extends _$IncludeWatermark {
  @override
  Future<bool> build() async {
    final PreferenceStorage storage = PreferenceStorage();
    final includeWatermark = await storage.readString('include_watermark');
    if (includeWatermark == null) {
      return true;
    }
    return bool.tryParse(includeWatermark) ?? true;
  }

  void set(bool value) {
    state = AsyncValue.data(value);
  }
}

@riverpod
class _ImageMode extends _$ImageMode {
  @override
  Future<ImageModeEnum> build() async {
    final PreferenceStorage storage = PreferenceStorage();
    final imageMode = await storage.readString('image_mode');
    if (imageMode == null) {
      return ImageModeEnum.crop;
    }
    return ImageModeEnum.values.byName(imageMode);
  }

  void set(ImageModeEnum value) {
    state = AsyncValue.data(value);
  }
}
