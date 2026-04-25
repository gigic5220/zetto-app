import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:core_app/core/storage/storage.dart';
import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/feature/main/report/report_page.dart';

part 'edit_food_photo_action_mixin.dart';
part 'edit_food_photo_provider.g.dart';
part 'edit_food_photo_state_mixin.dart';

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
