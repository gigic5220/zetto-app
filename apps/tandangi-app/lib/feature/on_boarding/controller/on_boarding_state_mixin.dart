part of 'on_boarding_provider.dart';

mixin OnBoardingStateMixin {
  OnBoardingStep watchCurrentOnBoardingStep(WidgetRef ref) {
    return ref.watch(_currentOnBoardingStepProvider);
  }

  AsyncValue<List<CharacterEntity>> watchCharacters(WidgetRef ref) {
    return ref.watch(_charactersProvider);
  }

  CharacterEntity? watchSelectedCharacter(WidgetRef ref) {
    return ref.watch(_selectedCharacterProvider);
  }

  GenderEnum? watchGenderEnum(WidgetRef ref) {
    return ref.watch(_genderEnumProvider);
  }

  int? watchAge(WidgetRef ref) {
    return ref.watch(_ageProvider);
  }

  PhysicalActivityLevelEnum? watchPhysicalActivityLevel(WidgetRef ref) {
    return ref.watch(_physicalActivityLevelProvider);
  }

  bool watchIsNextButtonEnabled(WidgetRef ref) {
    final currentStep = watchCurrentOnBoardingStep(ref);
    final characterName = ref.watch(_characterNameProvider);
    final height = ref.watch(_heightProvider);
    final weight = ref.watch(_weightProvider);
    final age = watchAge(ref);
    final physicalActivityLevel = watchPhysicalActivityLevel(ref);
    final isCharacterNameValid =
        characterName.isExist &&
        characterName.length >= 2 &&
        characterName.length <= 6;
    final isHeightValid = height != null && height >= 10;
    final isWeightValid = weight != null && weight >= 10;
    final isAgeValid = age != null;
    return switch (currentStep) {
      OnBoardingStep.character => true,
      OnBoardingStep.characterName => isCharacterNameValid,
      OnBoardingStep.info => isHeightValid && isWeightValid,
      OnBoardingStep.age => isAgeValid,
      OnBoardingStep.physicalActivityLevel => physicalActivityLevel != null,
    };
  }
}
