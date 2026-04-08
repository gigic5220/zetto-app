import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/repository/auth_repository.dart';
import 'package:tandangi/domain/repository/user_repository.dart';
import 'package:tandangi/feature/controller/common_provider.dart';
import 'package:tandangi/feature/on_boarding/on_boarding_page.dart';
import 'package:tandangi/feature/web_view/web_view_page.dart';
import 'package:tandangi/feature/home/home_page.dart';
import 'package:tandangi/flavors.dart';

part 'login_action_mixin.dart';
part 'login_provider.g.dart';
part 'login_state_mixin.dart';

@riverpod
class _Test extends _$Test {
  @override
  String build() {
    return 'test';
  }
}
