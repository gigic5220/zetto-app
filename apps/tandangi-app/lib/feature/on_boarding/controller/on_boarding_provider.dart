import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/enum/physical_activity_level_enum.dart';
import 'package:tandangi/domain/enum/gender_enum.dart';
import 'package:tandangi/domain/repository/character_repository.dart';
import 'package:tandangi/domain/repository/user_repository.dart';
import 'package:tandangi/feature/controller/common_provider.dart';
import 'package:tandangi/feature/main/home/home_page.dart';
import 'package:tandangi/feature/login/login_page.dart';
import 'package:tandangi/util/extension/string_extension.dart';

part 'on_boarding_action_mixin.dart';
part 'on_boarding_provider.g.dart';
part 'on_boarding_state_mixin.dart';

enum OnBoardingStep {
  character,
  characterName,
  info,
  age,
  physicalActivityLevel,
}

@riverpod
class _CurrentOnBoardingStep extends _$CurrentOnBoardingStep {
  @override
  OnBoardingStep build() {
    return OnBoardingStep.character;
  }

  void set(OnBoardingStep value) {
    state = value;
  }
}

@riverpod
class _Characters extends _$Characters {
  @override
  Future<List<CharacterEntity>> build() async {
    return await getIt<CharacterRepository>().getCharacters();
  }
}

@riverpod
class _SelectedCharacter extends _$SelectedCharacter {
  @override
  CharacterEntity? build() {
    return null;
  }

  void set(CharacterEntity selectedCharacter) {
    state = selectedCharacter;
  }
}

@riverpod
class _CharacterName extends _$CharacterName {
  @override
  String build() {
    return '';
  }

  void set(String characterName) {
    state = characterName;
  }
}

@riverpod
class _Height extends _$Height {
  @override
  int? build() {
    return null;
  }

  void set(int? height) {
    state = height;
  }
}

@riverpod
class _Weight extends _$Weight {
  @override
  int? build() {
    return null;
  }

  void set(int? weight) {
    state = weight;
  }
}

@riverpod
class _GenderEnum extends _$GenderEnum {
  @override
  GenderEnum? build() {
    return GenderEnum.female;
  }

  void set(GenderEnum genderEnum) {
    state = genderEnum;
  }
}

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

@riverpod
class _PhysicalActivityLevel extends _$PhysicalActivityLevel {
  @override
  PhysicalActivityLevelEnum? build() {
    return null;
  }

  void set(PhysicalActivityLevelEnum physicalActivityLevel) {
    state = physicalActivityLevel;
  }
}
