part of 'on_boarding_provider.dart';

mixin OnBoardingActionMixin {
  Future<void> onTapNext(WidgetRef ref) async {
    final currentStep = ref.read(_currentOnBoardingStepProvider);

    final currentOnBoardingStepProvider = ref.read(
      _currentOnBoardingStepProvider.notifier,
    );

    switch (currentStep) {
      case OnBoardingStep.character:
        currentOnBoardingStepProvider.set(OnBoardingStep.characterName);
        break;
      case OnBoardingStep.characterName:
        currentOnBoardingStepProvider.set(OnBoardingStep.info);
        break;
      case OnBoardingStep.info:
        currentOnBoardingStepProvider.set(OnBoardingStep.age);
        break;
      case OnBoardingStep.age:
        final onBoardingInfo = ref.read(_onboardingInfoProvider);
        if (onBoardingInfo.characterId == null ||
            !onBoardingInfo.characterName.isExist ||
            onBoardingInfo.genderEnum == null ||
            onBoardingInfo.age == null ||
            onBoardingInfo.height == null ||
            onBoardingInfo.weight == null) {
          return;
        }

        await getIt<UserRepository>().putOnboarding(
          characterId: onBoardingInfo.characterId!,
          gender: onBoardingInfo.genderEnum.toString(),
          age: onBoardingInfo.age!,
          height: onBoardingInfo.height!,
          weight: onBoardingInfo.weight!,
        );

        ref.invalidate(meProvider);

        if (!ref.context.mounted) return;

        ref.context.replaceNamed(HomePage.routeName);
        break;
    }
  }

  Future<void> onTapPrevious(WidgetRef ref) async {
    final currentStep = ref.read(_currentOnBoardingStepProvider);
    final currentOnBoardingStepProvider = ref.read(
      _currentOnBoardingStepProvider.notifier,
    );
    switch (currentStep) {
      case OnBoardingStep.character:
        await FirebaseAuth.instance.signOut();
        await GoogleSignIn.instance.signOut();
        if (!ref.context.mounted) return;
        ref.context.replaceNamed(LoginPage.routeName);
        break;
      case OnBoardingStep.characterName:
        currentOnBoardingStepProvider.set(OnBoardingStep.character);
        break;
      case OnBoardingStep.info:
        currentOnBoardingStepProvider.set(OnBoardingStep.characterName);
        break;
      case OnBoardingStep.age:
        currentOnBoardingStepProvider.set(OnBoardingStep.info);
        break;
    }
  }

  void setCurrentCharacterIndex(WidgetRef ref, {required int index}) {
    ref.read(_currentCharacterIndexProvider.notifier).set(index);
  }

  void setCharacterId(WidgetRef ref, {required int characterId}) {
    ref.read(_onboardingInfoProvider.notifier).setCharacterId(characterId);
  }

  void setCharacterName(WidgetRef ref, {required String characterName}) {
    ref.read(_onboardingInfoProvider.notifier).setCharacterName(characterName);
  }

  void setGenderEnum(WidgetRef ref, {required GenderEnum genderEnum}) {
    ref.read(_onboardingInfoProvider.notifier).setGenderEnum(genderEnum);
  }

  void setAge(WidgetRef ref, {required int age}) {
    ref.read(_onboardingInfoProvider.notifier).setAge(age);
  }

  void setHeight(WidgetRef ref, {required double height}) {
    ref.read(_onboardingInfoProvider.notifier).setHeight(height);
  }

  //   final result = await getIt<UserRepository>().putOnboarding(
  //   characterId: 1,
  //   gender: 'male',
  //   age: 25,
  //   height: 175.0,
  //   weight: 70.0,
  // );
}
