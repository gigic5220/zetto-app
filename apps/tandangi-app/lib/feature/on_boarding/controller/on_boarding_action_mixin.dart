part of 'on_boarding_provider.dart';

mixin OnBoardingActionMixin {
  void handleBackAction(
    WidgetRef ref, {
    required Widget Function({
      required VoidCallback onTapCancel,
      required VoidCallback onTapConfirm,
    })
    buildBackModalWidgetCallback,
  }) {
    showDialog(
      context: ref.context,
      builder: (context) => buildBackModalWidgetCallback(
        onTapCancel: () async {
          await Future.wait<void>([
            FirebaseAuth.instance.signOut(),
            GoogleSignIn.instance.signOut(),
          ]);
          if (!context.mounted) return;
          context.pop();
          context.replaceNamed(LoginPage.routeName);
        },
        onTapConfirm: () {
          context.pop();
        },
      ),
    );
  }

  Future<void> onTapNext(
    WidgetRef ref, {
    required int currentCarouselSliderIndex,
  }) async {
    final currentStep = ref.read(_currentOnBoardingStepProvider);

    final currentOnBoardingStepProvider = ref.read(
      _currentOnBoardingStepProvider.notifier,
    );

    switch (currentStep) {
      case OnBoardingStep.character:
        final characters = await ref.read(_charactersProvider.future);
        final selectedCharacter = characters[currentCarouselSliderIndex];
        ref.read(_selectedCharacterProvider.notifier).set(selectedCharacter);
        currentOnBoardingStepProvider.set(OnBoardingStep.characterName);
        break;
      case OnBoardingStep.characterName:
        currentOnBoardingStepProvider.set(OnBoardingStep.info);
        break;
      case OnBoardingStep.info:
        currentOnBoardingStepProvider.set(OnBoardingStep.age);
        break;
      case OnBoardingStep.age:
        currentOnBoardingStepProvider.set(OnBoardingStep.physicalActivityLevel);
        break;
      case OnBoardingStep.physicalActivityLevel:
        final selectedCharacter = ref.read(_selectedCharacterProvider);
        final characterName = ref.read(_characterNameProvider);
        final genderEnum = ref.read(_genderEnumProvider);
        final age = ref.read(_ageProvider);
        final height = ref.read(_heightProvider);
        final weight = ref.read(_weightProvider);
        final physicalActivityLevel = ref.read(_physicalActivityLevelProvider);
        if (selectedCharacter == null ||
            !characterName.isExist ||
            genderEnum == null ||
            age == null ||
            height == null ||
            weight == null ||
            physicalActivityLevel == null) {
          return;
        }

        await getIt<UserRepository>().putOnboarding(
          selectedCharacter: selectedCharacter,
          genderEnum: genderEnum,
          age: age,
          height: height,
          weight: weight,
          physicalActivityLevelEnum: physicalActivityLevel,
        );

        ref.invalidate(meProvider);

        if (!ref.context.mounted) return;

        ref.context.replaceNamed(HomePage.routeName);
        break;
    }
  }

  Future<void> onTapPrevious(
    WidgetRef ref, {
    required TabController genderTabController,
  }) async {
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
      case OnBoardingStep.physicalActivityLevel:
        currentOnBoardingStepProvider.set(OnBoardingStep.age);
        final genderEnum = ref.read(_genderEnumProvider);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          print('genderEnum: $genderEnum');
          genderTabController.animateTo(
            genderEnum == GenderEnum.female ? 0 : 1,
          );
        });
        break;
    }
  }

  void setSelectedCharacter(
    WidgetRef ref, {
    required CharacterEntity selectedCharacter,
  }) {
    ref.read(_selectedCharacterProvider.notifier).set(selectedCharacter);
  }

  void setCharacterName(WidgetRef ref, {required String characterName}) {
    ref.read(_characterNameProvider.notifier).set(characterName);
  }

  void setGenderEnum(WidgetRef ref, {required GenderEnum genderEnum}) {
    ref.read(_genderEnumProvider.notifier).set(genderEnum);
  }

  void setAge(WidgetRef ref, {required int? age}) {
    ref.read(_ageProvider.notifier).set(age);
  }

  void setWeight(WidgetRef ref, {required int? weight}) {
    ref.read(_weightProvider.notifier).set(weight);
  }

  void setHeight(WidgetRef ref, {required int? height}) {
    ref.read(_heightProvider.notifier).set(height);
  }

  void onTapPhysicalActivityLevel(
    WidgetRef ref, {
    required PhysicalActivityLevelEnum physicalActivityLevel,
  }) {
    ref
        .read(_physicalActivityLevelProvider.notifier)
        .set(physicalActivityLevel);
  }
}
