import 'package:carousel_slider/carousel_slider.dart';
import 'package:core_app/components/async_widget.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/ions.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/extenstion.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tandangi/feature/on_boarding/controller/on_boarding_provider.dart';
import 'package:tandangi/gen/assets.gen.dart';

//stateful widget

class OnBoardingPage extends ConsumerStatefulWidget {
  const OnBoardingPage({super.key});

  static const routeName = 'onboarding';

  @override
  ConsumerState<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends ConsumerState<OnBoardingPage>
    with OnBoardingStateMixin, OnBoardingActionMixin {
  CarouselSliderController carouselSliderController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DSAppBar.page(text: '', showBackButton: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            DSHighLight.small(
              leadingWidget: Consumer(
                builder: (context, ref, child) {
                  final currentStep = watchCurrentOnBoardingStep(ref);
                  return DSProgressBar(
                    type: DSProgressBarType.fixed,
                    totalCount: OnBoardingStep.values.length,
                    currentCount:
                        OnBoardingStep.values.indexOf(currentStep) + 1,
                  );
                },
              ),
              title: '탄단지에서 함께 할\n친구를 골라주세요',
              description: '오늘 음식에 따라 친구의 상태가 달라질거에요!',
            ),
            Expanded(child: _buildCurrentStepWidget()),
            const Spacer(),
            Consumer(
              builder: (context, ref, child) {
                final currentStep = watchCurrentOnBoardingStep(ref);
                return DSCallToAction.horizontal(
                  buttons: [
                    if (currentStep == OnBoardingStep.character) ...[
                      DSSolidButton.large(
                        variant: DSSolidButtonVariant.primary,
                        text: '다음',
                        onTap: () => onTapNext(ref),
                      ),
                    ] else ...[
                      DSSolidButton.large(
                        variant: DSSolidButtonVariant.secondary,
                        text: '이전',
                        onTap: () => onTapPrevious(ref),
                      ),
                      DSSolidButton.large(
                        variant: DSSolidButtonVariant.primary,
                        text: '다음',
                        onTap: () => onTapNext(ref),
                      ),
                    ],
                  ],
                );
              },
            ),
            CommonBottomPadding(),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentStepWidget() {
    return Consumer(
      builder: (context, ref, child) {
        watchOnBoardingInfo(ref);
        final currentOnBoardingStep = watchCurrentOnBoardingStep(ref);
        return switch (currentOnBoardingStep) {
          OnBoardingStep.character => _buildCharacterStepWidget(),
          OnBoardingStep.characterName => _buildCharacterNameStepWidget(),
          OnBoardingStep.info => _buildInfoStepWidget(),
          OnBoardingStep.age => _buildAgeStepWidget(),
        };
      },
    );
  }

  Widget _buildCharacterStepWidget() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Consumer(
          builder: (context, ref, child) {
            final characters = watchCharacters(ref);
            return AsyncWidget(
              asyncValue: characters,
              builder: (characters) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CarouselSlider.builder(
                        itemCount: characters.length,
                        carouselController: carouselSliderController,
                        options: CarouselOptions(
                          height: constraints.maxHeight,
                          viewportFraction: 1,
                          enableInfiniteScroll: false,
                          onPageChanged: (index, reason) {
                            setCurrentCharacterIndex(ref, index: index);
                          },
                        ),
                        itemBuilder: (context, index, realIndex) {
                          final character = characters[index];
                          return Column(
                            children: [
                              Expanded(
                                child: DSWrapper(
                                  uri: character.imageUrl,
                                  view: WrapperView(
                                    size: 167,
                                    ratio: 167 / 213,
                                  ),
                                ),
                              ),
                              DSNotice.normal(
                                size: DSNoticeSize.small,
                                title: character.name,
                                description: character.description,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 20,
                      child: DSIconSolidButton.small(
                        variant: DSIconSolidButtonVariant.secondary,
                        iconUri: Assets.svgs.chevronLeft,
                        onTap: () {
                          carouselSliderController.previousPage();
                        },
                      ),
                    ),
                    Positioned(
                      top: 70,
                      right: 20,
                      child: GestureDetector(
                        onTap: () {
                          carouselSliderController.nextPage();
                        },
                        child: DSIconSolidButton.small(
                          variant: DSIconSolidButtonVariant.secondary,
                          iconUri: Assets.svgs.chevronRight,
                          onTap: () {
                            carouselSliderController.nextPage();
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildCharacterNameStepWidget() {
    return const Text('Character Name Step');
  }

  Widget _buildInfoStepWidget() {
    return const Text('Info Step');
  }

  Widget _buildAgeStepWidget() {
    return const Text('Age Step');
  }
}
