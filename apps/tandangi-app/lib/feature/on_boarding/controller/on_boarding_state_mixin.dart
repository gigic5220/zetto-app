part of 'on_boarding_provider.dart';

mixin OnBoardingStateMixin {
  OnBoardingStep watchCurrentOnBoardingStep(WidgetRef ref) {
    return ref.watch(_currentOnBoardingStepProvider);
  }

  AsyncValue<List<CharacterEntity>> watchCharacters(WidgetRef ref) {
    return ref.watch(_charactersProvider);
  }

  int watchCurrentCarouselSliderIndex(WidgetRef ref) {
    return ref.watch(_currentCarouselSliderIndexProvider);
  }

  CharacterEntity? watchSelectedCharacter(WidgetRef ref) {
    return ref.watch(_selectedCharacterProvider);
  }

  String watchCharacterName(WidgetRef ref) {
    return ref.watch(_characterNameProvider);
  }

  GenderEnum? watchGenderEnum(WidgetRef ref) {
    return ref.watch(_genderEnumProvider);
  }

  int? watchAge(WidgetRef ref) {
    return ref.watch(_ageProvider);
  }

  int? watchHeight(WidgetRef ref) {
    return ref.watch(_heightProvider);
  }

  int? watchWeight(WidgetRef ref) {
    return ref.watch(_weightProvider);
  }

  bool watchIsNextButtonEnabled(WidgetRef ref) {
    final currentStep = watchCurrentOnBoardingStep(ref);
    final characterName = watchCharacterName(ref);
    final height = watchHeight(ref);
    final weight = watchWeight(ref);
    final age = watchAge(ref);
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
    };
  }
}
