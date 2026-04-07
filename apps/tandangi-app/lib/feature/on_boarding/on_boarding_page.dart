import 'package:carousel_slider/carousel_slider.dart';
import 'package:core_app/components/async_widget.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/ions.dart';
import 'package:design_system/components/molecules.dart';
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
      appBar: DSAppBar.page(
        text: '',
        showBackButton: true,
        actionWidgetList: [
          DSSolidButton.small(
            variant: DSSolidButtonVariant.primary,
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              await GoogleSignIn.instance.signOut();
            },
            text: '로그아웃',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Consumer(
              builder: (context, ref, child) {
                final currentStep = watchCurrentOnBoardingStep(ref);
                final originCharacterName = watchSelectedCharacter(ref)?.name;
                return DSHighLight.small(
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
                  title: switch (currentStep) {
                    OnBoardingStep.character => '탄단지에서 함께 할\n친구를 골라주세요',
                    OnBoardingStep.characterName =>
                      '나와 함께 할 ${originCharacterName ?? '친구'}의\n이름을 알려주세요',
                    OnBoardingStep.info => '현재 키와 몸무게를\n알려주세요',
                    OnBoardingStep.age => '마지막이에요!\n나이는 어떻게 되시나요?',
                  },
                  description: switch (currentStep) {
                    OnBoardingStep.character => '오늘 음식에 따라 친구의 상태가 달라질거에요!',
                    OnBoardingStep.characterName => '최소 2자, 최대 6자 이내로 적어주세요',
                    _ => '건강한 식단 계산을 위해 필요해요',
                  },
                );
              },
            ),
            Expanded(child: _buildCurrentStepWidget()),
            const Spacer(),
            Consumer(
              builder: (context, ref, child) {
                final currentStep = watchCurrentOnBoardingStep(ref);
                final isNextButtonEnabled = watchIsNextButtonEnabled(ref);
                return DSCallToAction.horizontal(
                  buttons: [
                    if (currentStep != OnBoardingStep.character) ...[
                      DSSolidButton.large(
                        variant: DSSolidButtonVariant.secondary,
                        text: '이전',
                        onTap: () => onTapPrevious(ref),
                      ),
                    ],
                    DSSolidButton.large(
                      variant: DSSolidButtonVariant.primary,
                      isEnabled: isNextButtonEnabled,
                      text: '다음',
                      onTap: () => onTapNext(ref),
                    ),
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
                            setCurrentCarouselSliderIndex(ref, index: index);
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
                      child: Consumer(
                        builder: (context, ref, child) {
                          final currentCarouselSliderIndex =
                              watchCurrentCarouselSliderIndex(ref);
                          return DSIconSolidButton.small(
                            isEnabled: currentCarouselSliderIndex > 0,
                            variant: DSIconSolidButtonVariant.secondary,
                            iconUri: Assets.svgs.icArrowLeft,
                            onTap: () {
                              carouselSliderController.previousPage();
                            },
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 70,
                      right: 20,
                      child: Consumer(
                        builder: (context, ref, child) {
                          final currentCarouselSliderIndex =
                              watchCurrentCarouselSliderIndex(ref);
                          return DSIconSolidButton.small(
                            isEnabled:
                                currentCarouselSliderIndex <
                                characters.length - 1,
                            variant: DSIconSolidButtonVariant.secondary,
                            iconUri: Assets.svgs.icArrowRight,
                            onTap: () {
                              carouselSliderController.nextPage();
                            },
                          );
                        },
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
    return Consumer(
      builder: (context, ref, child) {
        final originCharacterName = watchSelectedCharacter(ref)?.name;
        return DSTextFieldInput.single(
          textField: DSTextField(
            placeholder: originCharacterName ?? '이름을 입력해주세요',
            maxLength: 6,
            onChangeCallback: ({required String text}) {
              setCharacterName(ref, characterName: text);
            },
          ),
        );
      },
    );
  }

  Widget _buildInfoStepWidget() {
    return DSTextFieldInput.horizontalDouble(
      textField: DSTextField(
        placeholder: '키',
        maxLength: 3,
        suffixText: 'cm',
        onChangeCallback: ({required String text}) {
          final height = int.tryParse(text);
          if (height == null) return;
          setHeight(ref, height: height);
        },
        keyboardType: TextInputType.number,
      ),
      additionalTextField: DSTextField(
        placeholder: '몸무게',
        suffixText: 'kg',
        maxLength: 3,
        onChangeCallback: ({required String text}) {
          final weight = int.tryParse(text);
          if (weight == null) return;
          setWeight(ref, weight: weight);
        },
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _buildAgeStepWidget() {
    return Column(
      children: [
        DSSegmentedInput(
          segmentedInput: DSSegmentedControl.medium(
            items: [
              DSSegmentedControlItem(text: '여성'),
              DSSegmentedControlItem(text: '남성'),
            ],
          ),
        ),
        DSTextField(
          placeholder: '만 나이',
          suffixText: '세',
          maxLength: 2,
          keyboardType: TextInputType.number,
          onChangeCallback: ({required String text}) {
            final age = int.tryParse(text);
            setAge(ref, age: age);
          },
        ),
      ],
    );
  }
}
