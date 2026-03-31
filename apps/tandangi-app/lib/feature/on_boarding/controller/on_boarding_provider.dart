import 'package:firebase_auth/firebase_auth.dart';
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
import 'package:tandangi/feature/home/main_page.dart';
import 'package:tandangi/feature/login/login_page.dart';
import 'package:tandangi/util/extension/string_extension.dart';

part 'on_boarding_action_mixin.dart';
part 'on_boarding_provider.g.dart';
part 'on_boarding_state_mixin.dart';

enum OnBoardingStep { character, characterName, info, age }

class OnBoardingInfo {
  const OnBoardingInfo({
    this.characterId,
    this.characterName,
    this.genderEnum,
    this.age,
    this.height,
    this.weight,
  });

  final int? characterId;
  final String? characterName;
  final GenderEnum? genderEnum;
  final int? age;
  final double? height;
  final double? weight;

  OnBoardingInfo copyWith({
    int? characterId,
    String? characterName,
    GenderEnum? genderEnum,
    int? age,
    double? height,
    double? weight,
  }) {
    return OnBoardingInfo(
      characterId: characterId ?? this.characterId,
      characterName: characterName ?? this.characterName,
      genderEnum: genderEnum ?? this.genderEnum,
      age: age ?? this.age,
      height: height ?? this.height,
      weight: weight ?? this.weight,
    );
  }
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
class _CurrentCharacterIndex extends _$CurrentCharacterIndex {
  @override
  int build() {
    return 0;
  }

  void set(int index) {
    state = index;
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
class _OnboardingInfo extends _$OnboardingInfo {
  @override
  OnBoardingInfo build() {
    return OnBoardingInfo();
  }

  void setCharacterId(int characterId) {
    state = state.copyWith(characterId: characterId);
  }

  void setCharacterName(String characterName) {
    state = state.copyWith(characterName: characterName);
  }

  void setGenderEnum(GenderEnum genderEnum) {
    state = state.copyWith(genderEnum: genderEnum);
  }

  void setAge(int age) {
    state = state.copyWith(age: age);
  }

  void setHeight(double height) {
    state = state.copyWith(height: height);
  }

  void setWeight(double weight) {
    state = state.copyWith(weight: weight);
  }
}
