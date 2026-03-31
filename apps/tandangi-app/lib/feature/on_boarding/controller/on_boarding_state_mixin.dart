part of 'on_boarding_provider.dart';

mixin OnBoardingStateMixin {
  OnBoardingStep watchCurrentOnBoardingStep(WidgetRef ref) {
    return ref.watch(_currentOnBoardingStepProvider);
  }

  AsyncValue<List<CharacterEntity>> watchCharacters(WidgetRef ref) {
    return ref.watch(_charactersProvider);
  }

  OnBoardingInfo watchOnBoardingInfo(WidgetRef ref) {
    return ref.watch(_onboardingInfoProvider);
  }
}
