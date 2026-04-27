import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/repository/food_analyze_repository.dart';
import 'package:tandangi/feature/report/report_page.dart';

part 'analyze_loading_action_mixin.dart';
part 'analyze_loading_provider.g.dart';
part 'analyze_loading_state_mixin.dart';

@riverpod
class _Test extends _$Test {
  @override
  bool build() {
    return true;
  }
}
