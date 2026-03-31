import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tandangi/design_system/color/semantic/colors.dart';
import 'package:tandangi/design_system/components/atoms/ds_solid_button.dart';
import 'package:tandangi/design_system/components/ions/ds_wrapper.dart';
import 'package:tandangi/design_system/components/molecule/ds_app_bar.dart';
import 'package:tandangi/design_system/components/molecule/ds_call_to_action.dart';
import 'package:tandangi/design_system/typography/app_typography.dart';
import 'package:tandangi/feature/components/async_widget.dart';
import 'package:tandangi/feature/components/common_bottom_padding.dart';
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
        actionWidgets: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              await GoogleSignIn.instance.signOut();
            },
            icon: Text('로그아웃'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Consumer(
              builder: (context, ref, _) {
                final currentStep = watchCurrentOnBoardingStep(ref);
                return Row(
                  spacing: 12,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: OnBoardingStep.values.map((step) {
                    final isActive = step == currentStep;
                    return Container(
                      width: isActive ? 16 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: isActive
                            ? SemanticColors.fillPrimary
                            : SemanticColors.fillSecondary,
                      ),
                    );
                  }).toList(),
                );
              },
            ),
            const SizedBox(height: 28),
            Text('탄단지에서 함께 할\n친구를 골라주세요', style: AppTypography.titleS),
            const SizedBox(height: 4),
            Text(
              '오늘 음식에 따라 친구의 상태가 달라질거에요!',
              style: AppTypography.bodyLRegular,
            ),
            const SizedBox(height: 28),
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
                              const SizedBox(height: 24),
                              Text(character.name, style: AppTypography.titleS),
                              const SizedBox(height: 4),
                              Text(
                                character.description,
                                style: AppTypography.bodyLRegular,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          carouselSliderController.previousPage();
                        },
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: SemanticColors.fillSecondary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(11),
                          child: DSWrapper(
                            uri: Assets.svgs.chevronLeft,
                            view: WrapperView.fix16,
                            svgColor: SemanticColors.textPrimary,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      right: 20,
                      child: GestureDetector(
                        onTap: () {
                          carouselSliderController.nextPage();
                        },
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: SemanticColors.fillSecondary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(11),
                          child: DSWrapper(
                            uri: Assets.svgs.chevronRight,
                            view: WrapperView.fix16,
                            svgColor: SemanticColors.textPrimary,
                          ),
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
