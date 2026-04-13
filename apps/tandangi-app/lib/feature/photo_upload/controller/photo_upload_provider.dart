import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'photo_upload_action_mixin.dart';
part 'photo_upload_provider.g.dart';
part 'photo_upload_state_mixin.dart';

enum PhotoUploadType { camera, gallery }

@riverpod
class _PageInitCompleter extends _$PageInitCompleter {
  @override
  Completer<void> build() {
    return Completer<void>();
  }

  void complete() {
    state.complete();
  }
}

@riverpod
class _PhotoUploadType extends _$PhotoUploadType {
  @override
  PhotoUploadType build() {
    return PhotoUploadType.camera;
  }

  void set(PhotoUploadType value) {
    state = value;
  }
}
