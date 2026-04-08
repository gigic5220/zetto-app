import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/enum/gender_enum.dart';
import 'package:tandangi/domain/repository/character_repository.dart';
import 'package:tandangi/domain/repository/user_repository.dart';
import 'package:tandangi/feature/controller/common_provider.dart';
import 'package:tandangi/feature/home/home_page.dart';
import 'package:tandangi/feature/login/login_page.dart';
import 'package:tandangi/util/extension/string_extension.dart';

part 'home_action_mixin.dart';
part 'home_provider.g.dart';
part 'home_state_mixin.dart';

@riverpod
class _Age extends _$Age {
  @override
  int? build() {
    return null;
  }

  void set(int? age) {
    state = age;
  }
}
