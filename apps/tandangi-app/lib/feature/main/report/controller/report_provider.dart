import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';
import 'package:tandangi/flavors.dart';

part 'report_action_mixin.dart';
part 'report_provider.g.dart';
part 'report_state_mixin.dart';

@riverpod
class _FoodAnalyzeResult extends _$FoodAnalyzeResult {
  @override
  FoodAnalyzeResultEntity? build() {
    return null;
  }

  void set(FoodAnalyzeResultEntity? value) {
    state = value;
  }
}
