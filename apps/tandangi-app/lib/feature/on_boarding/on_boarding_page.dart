import 'package:carousel_slider/carousel_slider.dart';
import 'package:core_app/components/async_widget.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/ions.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/components/organism.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/domain/entity/character_entity.dart';
import 'package:tandangi/domain/enum/gender_enum.dart';
import 'package:tandangi/domain/enum/physical_activity_level_enum.dart';
import 'package:tandangi/feature/on_boarding/controller/on_boarding_provider.dart';
import 'package:tandangi/gen/assets.gen.dart';

class OnBoardingPage extends ConsumerStatefulWidget {
  const OnBoardingPage({super.key});

  static const routeName = 'onboarding';

  @override
  ConsumerState<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends ConsumerState<OnBoardingPage>
    with OnBoardingStateMixin, OnBoardingActionMixin, TickerProviderStateMixin {
  int _currentCarouselSliderIndex = 0;
  late TextEditingController _characterNameController;
  late TextEditingController _heightController;
  late TextEditingController _weightController;
  late TextEditingController _ageController;
  late TabController _genderTabController;

  @override
  void initState() {
    super.initState();
    _characterNameController = TextEditingController();
    _heightController = TextEditingController();
    _weightController = TextEditingController();
    _ageController = TextEditingController();
    _genderTabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _characterNameController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _ageController.dispose();
    _genderTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        handleBackAction(
          ref,
          buildBackModalWidgetCallback: _buildBackModalWidget,
        );
      },
      child: Scaffold(
        appBar: DSAppBar.page(
          text: '',
          showBackButton: true,
          onTapBackButton: () {
            handleBackAction(
              ref,
              buildBackModalWidgetCallback: _buildBackModalWidget,
            );
          },
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
                        final currentStepIndex =
                            OnBoardingStep.values.indexOf(currentStep) + 1;
                        final totalStepCount = OnBoardingStep.values.length;
                        final isLastStep = currentStepIndex == totalStepCount;
                        return DSTextBadge.medium(
                          text: isLastStep
                              ? '마지막이에요!'
                              : '$currentStepIndex/$totalStepCount번째',
                          variant: DSTextBadgeVariant.secondary,
                          type: DSTextBadgeType.circular,
                        );
                      },
                    ),
                    title: switch (currentStep) {
                      OnBoardingStep.character => '탄단지에서 함께 할\n친구를 골라주세요',
                      OnBoardingStep.characterName =>
                        '나와 함께 할 ${originCharacterName ?? '친구'}의\n이름을 알려주세요',
                      OnBoardingStep.info => '현재 키와 몸무게를\n알려주세요',
                      OnBoardingStep.age => '마지막이에요!\n나이는 어떻게 되시나요?',
                      OnBoardingStep.physicalActivityLevel =>
                        '영양 기준 계산을 위해\n하루 활동량을 알려주세요',
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
                          onTap: () => onTapPrevious(
                            ref,
                            genderTabController: _genderTabController,
                          ),
                        ),
                      ],
                      DSSolidButton.large(
                        variant: DSSolidButtonVariant.primary,
                        isEnabled: isNextButtonEnabled,
                        text: '다음',
                        onTap: () => onTapNext(
                          ref,
                          currentCarouselSliderIndex:
                              _currentCarouselSliderIndex,
                        ),
                      ),
                    ],
                  );
                },
              ),
              CommonBottomPadding(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackModalWidget({
    required VoidCallback onTapCancel,
    required VoidCallback onTapConfirm,
  }) {
    return DSModal(
      noticeWidget: DSNotice.info(
        title: '그만 진행할까요?',
        description: '진행한 내용은 저장되지 않아요',
        size: DSNoticeSize.small,
      ),
      actionWidget: DSAction.horizontal(
        buttons: [
          DSSolidButton.medium(
            variant: DSSolidButtonVariant.warning,
            text: '그만할래',
            onTap: onTapCancel,
          ),
          DSSolidButton.medium(
            variant: DSSolidButtonVariant.primary,
            text: '계속할래',
            onTap: onTapConfirm,
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentStepWidget() {
    return Consumer(
      builder: (context, ref, child) {
        final currentOnBoardingStep = watchCurrentOnBoardingStep(ref);
        final characters = watchCharacters(ref);
        final selectedCharacter = watchSelectedCharacter(ref);
        watchPhysicalActivityLevel(ref);
        watchGenderEnum(ref);
        return AsyncWidget(
          asyncValue: characters,
          builder: (characters) {
            return switch (currentOnBoardingStep) {
              OnBoardingStep.character => _buildCharacterStepWidget(
                characters: characters,
                initialPage: _currentCarouselSliderIndex,
              ),
              OnBoardingStep.characterName => _buildCharacterNameStepWidget(
                originCharacterName: selectedCharacter?.name,
              ),
              OnBoardingStep.info => _buildInfoStepWidget(),
              OnBoardingStep.age => _buildAgeStepWidget(),
              OnBoardingStep.physicalActivityLevel =>
                _buildPhysicalActivityLevelStepWidget(),
            };
          },
        );
      },
    );
  }

  Widget _buildCharacterStepWidget({
    required List<CharacterEntity> characters,
    required int initialPage,
  }) {
    return _CharacterStepCarousel(
      characters: characters,
      initialPage: initialPage,
      onPageChanged: (index) {
        _currentCarouselSliderIndex = index;
      },
    );
  }

  Widget _buildCharacterNameStepWidget({required String? originCharacterName}) {
    return DSTextFieldInput.single(
      textField: DSTextField(
        textEditingController: _characterNameController,
        autoDisposeControllers: false,
        placeholder: originCharacterName ?? '이름을 입력해주세요',
        maxLength: 6,
        onChangeCallback: ({required String text}) {
          setCharacterName(ref, characterName: text);
        },
      ),
    );
  }

  Widget _buildInfoStepWidget() {
    return DSTextFieldInput.horizontalDouble(
      textField: DSTextField(
        textEditingController: _heightController,
        autoDisposeControllers: false,
        placeholder: '키',
        maxLength: 3,
        suffixText: 'cm',
        onChangeCallback: ({required String text}) {
          final height = int.tryParse(text);
          if (height == null) return;
          setHeight(ref, height: height);
        },
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
      ),
      additionalTextField: DSTextField(
        textEditingController: _weightController,
        autoDisposeControllers: false,
        placeholder: '몸무게',
        suffixText: 'kg',
        maxLength: 3,
        onChangeCallback: ({required String text}) {
          final weight = int.tryParse(text);
          if (weight == null) return;
          setWeight(ref, weight: weight);
        },
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
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
            tabController: _genderTabController,
            onTap: (index) {
              setGenderEnum(
                ref,
                genderEnum: index == 0 ? GenderEnum.female : GenderEnum.male,
              );
            },
          ),
        ),
        DSTextField(
          textEditingController: _ageController,
          autoDisposeControllers: false,
          placeholder: '만 나이',
          suffixText: '세',
          maxLength: 2,
          keyboardType: TextInputType.number,
          onChangeCallback: ({required String text}) {
            final age = int.tryParse(text);
            if (age == null) return;
            setAge(ref, age: age);
          },
        ),
      ],
    );
  }

  Widget _buildPhysicalActivityLevelStepWidget() {
    return SingleChildScrollView(
      child: Consumer(
        builder: (context, ref, child) {
          final physicalActivityLevel = watchPhysicalActivityLevel(ref);
          return Column(
            children: [
              DSListControl.large(
                title: '거의 앉아서 생활해요',
                description: '재택 또는 사무직, 운동 거의 없음',
                toggleValue:
                    physicalActivityLevel ==
                    PhysicalActivityLevelEnum.sedentary,
                onChanged: (value) {
                  onTapPhysicalActivityLevel(
                    ref,
                    physicalActivityLevel: PhysicalActivityLevelEnum.sedentary,
                  );
                },
                trailingWidget: DSCheckMark(
                  value:
                      physicalActivityLevel ==
                      PhysicalActivityLevelEnum.sedentary,
                ),
              ),
              DSListControl.large(
                title: '가볍게 활동해요',
                description: '걷기 등의 활동 또는 주 1~3회 운동',
                toggleValue:
                    physicalActivityLevel ==
                    PhysicalActivityLevelEnum.lowActive,
                onChanged: (value) {
                  onTapPhysicalActivityLevel(
                    ref,
                    physicalActivityLevel: PhysicalActivityLevelEnum.lowActive,
                  );
                },
                trailingWidget: DSCheckMark(
                  value:
                      physicalActivityLevel ==
                      PhysicalActivityLevelEnum.lowActive,
                ),
              ),
              DSListControl.large(
                title: '규칙적으로 운동해요',
                description: '활동량이 많은 편 또는 주 3~5회 운동',
                toggleValue:
                    physicalActivityLevel == PhysicalActivityLevelEnum.active,
                onChanged: (value) {
                  onTapPhysicalActivityLevel(
                    ref,
                    physicalActivityLevel: PhysicalActivityLevelEnum.active,
                  );
                },
                trailingWidget: DSCheckMark(
                  value:
                      physicalActivityLevel == PhysicalActivityLevelEnum.active,
                ),
              ),
              DSListControl.large(
                title: '매우 활동량이 많아요',
                description: '육체 노동 등 활동이 많은 직업 또는 주 6~7회 운동',
                toggleValue:
                    physicalActivityLevel ==
                    PhysicalActivityLevelEnum.veryActive,
                onChanged: (value) {
                  onTapPhysicalActivityLevel(
                    ref,
                    physicalActivityLevel: PhysicalActivityLevelEnum.veryActive,
                  );
                },
                trailingWidget: DSCheckMark(
                  value:
                      physicalActivityLevel ==
                      PhysicalActivityLevelEnum.veryActive,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CharacterStepCarousel extends StatefulWidget {
  const _CharacterStepCarousel({
    required this.characters,
    required this.initialPage,
    required this.onPageChanged,
  });

  final List<CharacterEntity> characters;
  final int initialPage;
  final ValueChanged<int> onPageChanged;

  @override
  State<_CharacterStepCarousel> createState() => _CharacterStepCarouselState();
}

class _CharacterStepCarouselState extends State<_CharacterStepCarousel> {
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();

  late int _currentCarouselSliderIndex;

  @override
  void initState() {
    super.initState();
    _currentCarouselSliderIndex = _boundedInitialPage;
  }

  int get _boundedInitialPage {
    final lastIndex = widget.characters.length - 1;
    if (lastIndex < 0) return 0;
    return widget.initialPage.clamp(0, lastIndex);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CarouselSlider.builder(
                itemCount: widget.characters.length,
                carouselController: _carouselSliderController,
                options: CarouselOptions(
                  initialPage: _boundedInitialPage,
                  height: constraints.maxHeight,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentCarouselSliderIndex = index;
                    });
                    widget.onPageChanged(index);
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  final character = widget.characters[index];
                  return Column(
                    children: [
                      Expanded(
                        child: DSWrapper(
                          uri: character.imageUrl,
                          view: WrapperView(size: 167, ratio: 167 / 213),
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
                isEnabled: _currentCarouselSliderIndex > 0,
                variant: DSIconSolidButtonVariant.secondary,
                iconUri: Assets.svgs.icArrowLeft,
                onTap: () {
                  _carouselSliderController.previousPage();
                },
              ),
            ),
            Positioned(
              top: 70,
              right: 20,
              child: DSIconSolidButton.small(
                isEnabled:
                    _currentCarouselSliderIndex < widget.characters.length - 1,
                variant: DSIconSolidButtonVariant.secondary,
                iconUri: Assets.svgs.icArrowRight,
                onTap: () {
                  _carouselSliderController.nextPage();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
