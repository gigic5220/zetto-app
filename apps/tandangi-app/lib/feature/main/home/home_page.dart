import 'dart:math' as math;

import 'package:core_app/components/async_widget.dart';
import 'package:core_app/route/route.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/ions.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/components/organism.dart';
import 'package:design_system/extenstion.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tandangi/core/extension/datetime_extension.dart';
import 'package:tandangi/core/extension/double_extension.dart';
import 'package:tandangi/domain/entity/daily_nutrition_summary_entity.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/enum/nutrition_status_enum.dart';
import 'package:tandangi/domain/enum/nutrition_summary_target_basis_enum.dart';
import 'package:tandangi/domain/enum/nutrition_type_enum.dart';
import 'package:tandangi/feature/login/login_page.dart';
import 'package:tandangi/feature/main/home/controller/home_provider.dart';
import 'package:tandangi/feature/shop/shop_page.dart';
import 'package:tandangi/gen/assets.gen.dart';
import 'package:tandangi/util/extension/string_extension.dart';

Future<void> signOut() async {
  await FirebaseAuth.instance.signOut();
  await GoogleSignIn.instance.signOut();
}

double _dailyMacroAchievementPercent(double intakeG, int targetG) {
  if (targetG <= 0) return 0;
  return (intakeG / targetG) * 100;
}

NutritionStatusEnum _dailySugarStatus(DailyNutritionSummaryEntity e) {
  final limit = e.sugarLimitG;
  if (limit <= 0) return NutritionStatusEnum.adequate;
  final ratio = e.sugarIntakeG / limit;
  if (ratio <= 1.0) return NutritionStatusEnum.adequate;
  if (ratio <= 1.2) return NutritionStatusEnum.careful;
  return NutritionStatusEnum.excessive;
}

NutritionStatusEnum _dailySodiumStatus(DailyNutritionSummaryEntity e) {
  final risk = e.sodiumRiskReductionMg;
  if (risk <= 0) return NutritionStatusEnum.adequate;
  final intake = e.sodiumIntakeMg;
  if (intake < e.sodiumAdequateMg) return NutritionStatusEnum.deficient;
  if (intake <= risk) return NutritionStatusEnum.adequate;
  if (intake <= risk * 1.15) return NutritionStatusEnum.careful;
  return NutritionStatusEnum.excessive;
}

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  static const String routeName = 'home';

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with HomeStateMixin, HomeActionMixin, GoRouterWatcherPage {
  @override
  void onFocused(bool isFirstTime) {
    super.onFocused(isFirstTime);
    onPageFocused(ref);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DSAppBar.logo(
        logoUri: 'assets/images/logo.png',
        actionWidgetList: [
          DSSolidButton.medium(
            text: '로그아웃',
            onTap: () async {
              await signOut();
              if (!context.mounted) return;
              context.replaceNamed(LoginPage.routeName);
            },
            variant: .primary,
          ),
          DSSolidButton.medium(
            text: '상점',
            onTap: () {
              context.pushNamed(ShopPage.routeName);
            },
            variant: .primary,
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              spacing: context.componentGap.medium,
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final userCharacterDetail = watchUserCharacterDetail(ref);
                    return AsyncWidget(
                      errorBuilder: (error, stackTrace) {
                        return Center(child: Text(error.toString()));
                      },
                      asyncValue: userCharacterDetail,
                      builder: (userCharacterDetail) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: context.componentGap.medium,
                          children: [
                            Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      color: context.semanticColors.fillSubtle,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Text(
                                      '테스트',
                                      style: context.textTheme.bodyMMedium
                                          .copyWith(
                                            color: context
                                                .semanticColors
                                                .textPrimary,
                                          ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(0, -1),
                                    child: CustomPaint(
                                      size: const Size(14, 10),
                                      painter: _SpeechBubbleTailPainter(
                                        color:
                                            context.semanticColors.fillSubtle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            DSWrapper(
                              uri: userCharacterDetail.characterImageUrl,
                              view: WrapperView(size: 167, ratio: 167 / 213),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 4,
                                    children: [
                                      Text(
                                        userCharacterDetail
                                            .userCharacter
                                            .characterName,
                                        style: context.textTheme.titleMSemiBold
                                            .copyWith(
                                              color: context
                                                  .semanticColors
                                                  .textPrimary,
                                            ),
                                      ),
                                      DSWrapper(
                                        uri: Assets.svgs.icPencilFill,
                                        view: WrapperView.fix16,
                                        svgColor:
                                            context.semanticColors.textTertiary,
                                      ),
                                    ],
                                  ),
                                ),
                                DSBadgeList.text(
                                  badges: [
                                    DSTextBadge.medium(
                                      text: '테스트',
                                      variant: DSTextBadgeVariant.warning,
                                      type: DSTextBadgeType.circular,
                                    ),
                                    DSTextBadge.medium(
                                      text: '테스트',
                                      variant: DSTextBadgeVariant.success,
                                      type: DSTextBadgeType.circular,
                                    ),
                                    DSTextBadge.medium(
                                      text: '테스트',
                                      variant: DSTextBadgeVariant.warning,
                                      type: DSTextBadgeType.circular,
                                    ),
                                    DSTextBadge.medium(
                                      text: '테스트',
                                      variant: DSTextBadgeVariant.warning,
                                      type: DSTextBadgeType.circular,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                    context.margin.width,
                    context.componentPadding.xxLarge,
                    context.margin.width,
                    0,
                  ),
                  color: context.semanticColors.bgCard,
                  child: Consumer(
                    builder: (context, ref, child) {
                      final userCharacterDetail = watchUserCharacterDetail(ref);
                      final dailyNutritionSummaries =
                          watchDailyNutritionSummaries(ref);
                      return AsyncWidget.combine3(
                        first: userCharacterDetail,
                        second: dailyNutritionSummaries,
                        third: watchNutritionStandard(ref),
                        builder:
                            (
                              userCharacterDetail,
                              dailyNutritionSummaries,
                              nutritionStandard,
                            ) {
                              final DailyNutritionSummaryEntity?
                              dailyNutritionSummary =
                                  dailyNutritionSummaries.summaries.isNotEmpty
                                  ? dailyNutritionSummaries.summaries.first
                                  : null;
                              final NutritionStatusEnum? sugarStatus =
                                  dailyNutritionSummary != null
                                  ? _dailySugarStatus(dailyNutritionSummary)
                                  : null;
                              final NutritionStatusEnum? sodiumStatus =
                                  dailyNutritionSummary != null
                                  ? _dailySodiumStatus(dailyNutritionSummary)
                                  : null;
                              return Column(
                                children: [
                                  if (dailyNutritionSummary == null) ...[
                                    DSViewTitle.large(
                                      title: '오늘은 아직 먹은게 없어요',
                                      description:
                                          '오른쪽 아래 + 버튼으로 ${userCharacterDetail.userCharacter.characterName.checkBottomConsonan() ? '${userCharacterDetail.userCharacter.characterName}을' : '${userCharacterDetail.userCharacter.characterName}를'} 먹여주세요!',
                                    ),
                                  ] else ...[
                                    DSViewTitle.large(
                                      subTitle:
                                          '오늘의 ${userCharacterDetail.userCharacter.characterName}',
                                      title:
                                          '${dailyNutritionSummary.gradeEnum?.value}등급 ${userCharacterDetail.userCharacter.characterOriginName}',
                                      description:
                                          '균형이 좋아요! 다만 탄수화물 비율이 조금 높아, 다음 식사는 단백질과 채소 위주로 가볍게 맞춰봐요',
                                      trailingWidget: DSIconSolidButton.xSmall(
                                        variant: .tertiary,
                                        iconUri: Assets.svgs.icSettingFill,
                                        onTap: () {
                                          onTapChangeNutritionStandards(
                                            ref,
                                            buildBottomSheetBodyWidgetCallback:
                                                _buildBottomSheetBodyWidget,
                                            buildBottomSheetCallToActionWidgetCallback:
                                                _buildBottomSheetCallToActionWidget,
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: context.componentPadding.small,
                                    ),
                                    child: Column(
                                      children: [
                                        NutritionRingChart(
                                          nutritionType:
                                              NutritionTypeEnum.carbohydrate,
                                          valueText:
                                              '${dailyNutritionSummary?.carbohydrateIntakeG.toRoundedString() ?? 0}g',
                                          progress:
                                              dailyNutritionSummary != null
                                              ? _dailyMacroAchievementPercent(
                                                  dailyNutritionSummary
                                                      .carbohydrateIntakeG,
                                                  dailyNutritionSummary
                                                      .carbohydrateTargetG,
                                                ).toPercentage()
                                              : 0,
                                          progressColor: context
                                              .semanticColors
                                              .chartCarbohydrate,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          spacing: context.componentGap.xLarge,
                                          children: [
                                            NutritionRingChart(
                                              nutritionType:
                                                  NutritionTypeEnum.protein,
                                              valueText:
                                                  '${dailyNutritionSummary?.proteinIntakeG.toRoundedString() ?? 0}g',
                                              progress:
                                                  dailyNutritionSummary != null
                                                  ? _dailyMacroAchievementPercent(
                                                      dailyNutritionSummary
                                                          .proteinIntakeG,
                                                      dailyNutritionSummary
                                                          .proteinTargetG,
                                                    ).toPercentage()
                                                  : 0,
                                              progressColor: context
                                                  .semanticColors
                                                  .chartCarbohydrate,
                                            ),
                                            NutritionRingChart(
                                              nutritionType:
                                                  NutritionTypeEnum.fat,
                                              valueText:
                                                  '${dailyNutritionSummary?.fatIntakeG.toRoundedString() ?? 0}g',
                                              progress:
                                                  dailyNutritionSummary != null
                                                  ? _dailyMacroAchievementPercent(
                                                      dailyNutritionSummary
                                                          .fatIntakeG,
                                                      dailyNutritionSummary
                                                          .fatTargetG,
                                                    ).toPercentage()
                                                  : 0,
                                              progressColor: context
                                                  .semanticColors
                                                  .chartCarbohydrate,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: context.componentGap.medium),
                                  DSListTitle.mediumNormal(title: '단짠 신호'),
                                  Row(
                                    spacing: context.componentGap.small,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                            context.componentPadding.xxLarge,
                                            context.componentPadding.xLarge,
                                            context.componentPadding.xxLarge,
                                            context.componentPadding.xSmall,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              context.componentRadius.xLarge,
                                            ),
                                            border: Border.all(
                                              color: switch (sugarStatus) {
                                                NutritionStatusEnum.adequate ||
                                                NutritionStatusEnum.deficient =>
                                                  context
                                                      .semanticColors
                                                      .borderSubtle,
                                                NutritionStatusEnum.careful ||
                                                NutritionStatusEnum.excessive =>
                                                  context
                                                      .semanticColors
                                                      .borderWarning,
                                                _ =>
                                                  context
                                                      .semanticColors
                                                      .borderSubtle,
                                              },
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              DSWrapper(
                                                uri: Assets.images.avocado.path,
                                                view: WrapperView.fix24,
                                              ),
                                              DSListItem.medium(
                                                variant: .normal,
                                                title: '당',
                                                subTitle:
                                                    '${dailyNutritionSummary?.sugarIntakeG.toRoundedString() ?? 0}g',
                                                titleBadge: sugarStatus != null
                                                    ? DSTextBadge.small(
                                                        text: sugarStatus.value,
                                                        variant: switch (sugarStatus) {
                                                          NutritionStatusEnum
                                                              .adequate =>
                                                            DSTextBadgeVariant
                                                                .success,
                                                          NutritionStatusEnum
                                                              .deficient =>
                                                            DSTextBadgeVariant
                                                                .success,
                                                          NutritionStatusEnum
                                                              .careful =>
                                                            DSTextBadgeVariant
                                                                .warning,
                                                          NutritionStatusEnum
                                                              .excessive =>
                                                            DSTextBadgeVariant
                                                                .warning,
                                                          _ =>
                                                            DSTextBadgeVariant
                                                                .success,
                                                        },
                                                        type: DSTextBadgeType
                                                            .circular,
                                                      )
                                                    : null,
                                                description:
                                                    '최대 ${nutritionStandard.sugarLimitG}g',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                            context.componentPadding.xxLarge,
                                            context.componentPadding.xLarge,
                                            context.componentPadding.xxLarge,
                                            context.componentPadding.xSmall,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              context.componentRadius.xLarge,
                                            ),
                                            border: Border.all(
                                              color: switch (sodiumStatus) {
                                                NutritionStatusEnum.adequate ||
                                                NutritionStatusEnum.deficient =>
                                                  context
                                                      .semanticColors
                                                      .borderSubtle,
                                                NutritionStatusEnum.careful ||
                                                NutritionStatusEnum.excessive =>
                                                  context
                                                      .semanticColors
                                                      .borderWarning,
                                                _ =>
                                                  context
                                                      .semanticColors
                                                      .borderSubtle,
                                              },
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              DSWrapper(
                                                uri: Assets.images.avocado.path,
                                                view: WrapperView.fix24,
                                              ),
                                              DSListItem.medium(
                                                variant: .normal,
                                                title: '나트륨',
                                                subTitle:
                                                    '${dailyNutritionSummary?.sodiumIntakeMg.toRoundedString() ?? 0}mg',
                                                titleBadge: sodiumStatus != null
                                                    ? DSTextBadge.small(
                                                        text:
                                                            sodiumStatus.value,
                                                        variant: switch (sodiumStatus) {
                                                          NutritionStatusEnum
                                                              .adequate =>
                                                            DSTextBadgeVariant
                                                                .success,
                                                          NutritionStatusEnum
                                                              .deficient =>
                                                            DSTextBadgeVariant
                                                                .success,
                                                          NutritionStatusEnum
                                                              .careful =>
                                                            DSTextBadgeVariant
                                                                .warning,
                                                          NutritionStatusEnum
                                                              .excessive =>
                                                            DSTextBadgeVariant
                                                                .warning,
                                                          _ =>
                                                            DSTextBadgeVariant
                                                                .success,
                                                        },
                                                        type: DSTextBadgeType
                                                            .circular,
                                                      )
                                                    : null,
                                                description:
                                                    '최대 ${nutritionStandard.sodiumRiskReductionMg}mg',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.componentGap.xxxLarge,
                                  ),
                                  DSListTitle.mediumNormal(title: '오늘 먹었어요'),
                                  Consumer(
                                    builder: (context, ref, child) {
                                      final foodAnalysises =
                                          watchFoodAnalysises(ref);
                                      return AsyncWidget(
                                        asyncValue: foodAnalysises,
                                        builder: (foodAnalysises) {
                                          final itemList =
                                              foodAnalysises.content;

                                          if (itemList.isEmpty) {
                                            return DSEmptyArea(
                                              type: .section,
                                              title: '아직 먹인 음식이 없어요',
                                              description:
                                                  '밥을 먹이면 탄단지 그래프가 채워져요',
                                            );
                                          }

                                          return Column(
                                            children: itemList
                                                .map(
                                                  (
                                                    foodAnalysis,
                                                  ) => GestureDetector(
                                                    behavior: HitTestBehavior
                                                        .translucent,
                                                    onTap: () {
                                                      onTapFoodAnalysisItem(
                                                        ref,
                                                        foodAnalysis:
                                                            foodAnalysis,
                                                      );
                                                    },
                                                    child: DSBanner.normal(
                                                      listItemWidget: DSListItem.small(
                                                        leadingWidget: DSWrapper(
                                                          uri: foodAnalysis
                                                              .foodImageUrl,
                                                          view:
                                                              WrapperView.image52(
                                                                context,
                                                              ),
                                                        ),
                                                        variant: .normal,
                                                        title:
                                                            _pickMainFood(
                                                              foodAnalysis,
                                                            )?.name ??
                                                            '',
                                                        description:
                                                            '탄 ${foodAnalysis.nutritionCompareInfo?.carbohydrate?.intake?.toRoundedString()}g | 단 ${foodAnalysis.nutritionCompareInfo?.protein?.intake?.toRoundedString()}g | 지 ${foodAnalysis.nutritionCompareInfo?.fat?.intake?.toRoundedString()}g',
                                                        trailingText: foodAnalysis
                                                            .createdAt
                                                            ?.relativePastLabelKo(),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  const SizedBox(height: 64),
                                  CommonBottomPadding(),
                                ],
                              );
                            },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Consumer(
              builder: (context, ref, child) {
                final isShowSelectPhotoButton = watchIsShowSelectPhotoButton(
                  ref,
                );
                return DSFloatingAction.vertical(
                  actions: [
                    IgnorePointer(
                      ignoring: !isShowSelectPhotoButton,
                      child: AnimatedOpacity(
                        opacity: isShowSelectPhotoButton ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 200),
                        child: DSOutlinedButton.large(
                          isShowShadow: true,
                          leadingUri: Assets.svgs.icPhotoFill,
                          variant: .primary,
                          text: '앨범 선택',
                          onTap: () {
                            onTapSelectPhoto(
                              context,
                              source: ImageSource.gallery,
                            );
                          },
                        ),
                      ),
                    ),
                    IgnorePointer(
                      ignoring: !isShowSelectPhotoButton,
                      child: AnimatedOpacity(
                        opacity: isShowSelectPhotoButton ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 200),
                        child: DSSolidButton.large(
                          isShowShadow: true,
                          leadingUri: Assets.svgs.icCameraFill,
                          text: '카메라 촬영',
                          onTap: () {
                            onTapSelectPhoto(
                              context,
                              source: ImageSource.camera,
                            );
                          },
                          variant: .primary,
                        ),
                      ),
                    ),
                    DSIconSolidButton.large(
                      isShowShadow: true,
                      iconUri: isShowSelectPhotoButton
                          ? Assets.svgs.icX
                          : Assets.svgs.icPlus,
                      onTap: () {
                        onTapFloating(ref);
                      },
                      variant: .secondary,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  FoodAnalysisFoodEntity? _pickMainFood(FoodAnalysisEntity result) {
    if (result.mainFoodItems.isNotEmpty) return result.mainFoodItems.first;
    if (result.sideFoodItems.isNotEmpty) return result.sideFoodItems.first;
    if (result.otherFoodItems.isNotEmpty) return result.otherFoodItems.first;
    return null;
  }

  Widget _buildBottomSheetBodyWidget({
    required NutritionSummaryTargetBasisEnum? originalSummaryTargetBasisEnum,
    required void Function({
      required NutritionSummaryTargetBasisEnum summaryTargetBasisEnum,
    })
    onTapSummaryTargetBasisEnum,
  }) {
    print('originalSummaryTargetBasisEnum: $originalSummaryTargetBasisEnum');
    return Consumer(
      builder: (context, ref, child) {
        final selectedNutritionSummaryTargetBasisEnum =
            watchSelectedNutritionSummaryTargetBasisEnum(ref);
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DSViewTitle.small(
              title: '식단 기준을 변경할까요?',
              description:
                  '입력한 정보를 바탕으로 하루 탄단지 기준을 계산했어요\n처음에는 권장 섭취량의 중간값으로 시작해요',
            ),
            DSListControl.medium(
              title: '가볍게 관리',
              titleBadge:
                  originalSummaryTargetBasisEnum ==
                      NutritionSummaryTargetBasisEnum.max
                  ? DSTextBadge.small(
                      text: '현재 기준',
                      variant: DSTextBadgeVariant.secondary,
                      type: .circular,
                    )
                  : null,
              description: '섭취 기준을 조금 여유 있게 잡아요',
              toggleValue:
                  selectedNutritionSummaryTargetBasisEnum ==
                  NutritionSummaryTargetBasisEnum.max,
              trailingWidget: DSCheckMark(
                value:
                    selectedNutritionSummaryTargetBasisEnum ==
                    NutritionSummaryTargetBasisEnum.max,
              ),
              onChanged: (value) {
                onTapSummaryTargetBasisEnum(
                  summaryTargetBasisEnum: NutritionSummaryTargetBasisEnum.max,
                );
              },
            ),
            DSListControl.medium(
              title: '균형있게 관리',
              titleBadge:
                  originalSummaryTargetBasisEnum ==
                      NutritionSummaryTargetBasisEnum.target
                  ? DSTextBadge.small(
                      text: '현재 기준',
                      variant: DSTextBadgeVariant.secondary,
                      type: .circular,
                    )
                  : null,
              description: '권장 섭취량의 중간값으로 관리해요',
              toggleValue:
                  selectedNutritionSummaryTargetBasisEnum ==
                  NutritionSummaryTargetBasisEnum.target,
              trailingWidget: DSCheckMark(
                value:
                    selectedNutritionSummaryTargetBasisEnum ==
                    NutritionSummaryTargetBasisEnum.target,
              ),
              onChanged: (value) {
                onTapSummaryTargetBasisEnum(
                  summaryTargetBasisEnum:
                      NutritionSummaryTargetBasisEnum.target,
                );
              },
            ),
            DSListControl.medium(
              title: '조금 더 신경써서 관리',
              titleBadge:
                  originalSummaryTargetBasisEnum ==
                      NutritionSummaryTargetBasisEnum.min
                  ? DSTextBadge.small(
                      text: '현재 기준',
                      variant: DSTextBadgeVariant.secondary,
                      type: .circular,
                    )
                  : null,
              description: '섭취 기준을 조금 타이트하게 잡아요',
              toggleValue:
                  selectedNutritionSummaryTargetBasisEnum ==
                  NutritionSummaryTargetBasisEnum.min,
              trailingWidget: DSCheckMark(
                value:
                    selectedNutritionSummaryTargetBasisEnum ==
                    NutritionSummaryTargetBasisEnum.min,
              ),
              onChanged: (value) {
                onTapSummaryTargetBasisEnum(
                  summaryTargetBasisEnum: NutritionSummaryTargetBasisEnum.min,
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildBottomSheetCallToActionWidget({
    required VoidCallback onTapCancel,
    required Future<void> Function() onTapChange,
  }) {
    return Consumer(
      builder: (context, ref, child) {
        final selectedNutritionSummaryTargetBasisEnum =
            watchSelectedNutritionSummaryTargetBasisEnum(ref);
        final dailyNutritionSummaries = watchDailyNutritionSummaries(ref);
        return DSCallToAction.horizontal(
          buttons: [
            DSSolidButton.large(
              variant: .tertiary,
              text: '취소',
              onTap: () {
                onTapCancel();
              },
            ),
            DSSolidButton.large(
              isEnabled:
                  selectedNutritionSummaryTargetBasisEnum !=
                  dailyNutritionSummaries
                      .value
                      ?.summaries
                      .first
                      .summaryTargetBasisEnum,
              variant: .primary,
              text: '변경',
              onTap: () async {
                await onTapChange();
              },
            ),
          ],
        );
      },
    );
  }
}

/// Speech bubble tail (small downward triangle).
class _SpeechBubbleTailPainter extends CustomPainter {
  _SpeechBubbleTailPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 0.5, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _SpeechBubbleTailPainter oldDelegate) =>
      oldDelegate.color != color;
}

class NutritionRingChart extends StatelessWidget {
  const NutritionRingChart({
    super.key,
    required this.nutritionType,
    required this.valueText,
    required this.progress, // 배율(1.0=목표 달성). 초과 시 뱃지는 넘친 %만
    required this.progressColor,
  });

  final NutritionTypeEnum nutritionType;
  final String valueText;
  final double progress;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    final isOverLimit = progress > 1.0;
    final String badgePercentText = isOverLimit
        ? '${((progress - 1.0) * 100).toStringAsFixed(0)}% 넘침'
        : '${(progress * 100).toStringAsFixed(0)}% 채움';

    Color progressColor = switch (nutritionType) {
      NutritionTypeEnum.carbohydrate =>
        context.semanticColors.chartCarbohydrate,
      NutritionTypeEnum.protein => context.semanticColors.chartProtein,
      NutritionTypeEnum.fat => context.semanticColors.chartFat,
      _ => throw UnimplementedError(),
    };

    progressColor = isOverLimit
        ? context.semanticColors.chartWarning
        : progressColor;

    final String imagePath = switch (nutritionType) {
      NutritionTypeEnum.carbohydrate => Assets.images.sweetPotato.path,
      NutritionTypeEnum.protein => Assets.images.egg.path,
      NutritionTypeEnum.fat => Assets.images.avocado.path,
      _ => throw UnimplementedError(),
    };

    return Column(
      spacing: context.componentGap.xSmall,
      children: [
        DSWrapper(uri: imagePath, view: WrapperView.fix32),
        SizedBox(
          width: 140,
          height: 140,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(140, 140),
                painter: CircularNutritionPainter(
                  progress: progress,
                  strokeWidth: 12,
                  progressColor: progressColor,
                  backgroundColor: context.semanticColors.fillSubtle,
                ),
              ),
              Column(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    switch (nutritionType) {
                      NutritionTypeEnum.carbohydrate => '탄수화물',
                      NutritionTypeEnum.protein => '단백질',
                      NutritionTypeEnum.fat => '지방',
                      _ => throw UnimplementedError(),
                    },
                    style: context.textTheme.bodyMRegular.copyWith(
                      color: context.semanticColors.textTertiary,
                    ),
                  ),
                  Text(
                    valueText,
                    style: context.textTheme.titleSSemiBold.copyWith(
                      color: context.semanticColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  DSTextBadge.small(
                    text: badgePercentText,
                    variant: isOverLimit
                        ? DSTextBadgeVariant.warning
                        : DSTextBadgeVariant.success,
                    type: DSTextBadgeType.circular,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CircularNutritionPainter extends CustomPainter {
  CircularNutritionPainter({
    required this.progress,
    required this.strokeWidth,
    required this.progressColor,
    required this.backgroundColor,
  });

  final double progress;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    final clampedProgress = progress.clamp(0.0, 1.0);

    final center = size.center(Offset.zero);
    final radius = (size.width - strokeWidth) / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);

    const startAngle = -math.pi / 2;
    final sweepAngle = 2 * math.pi * clampedProgress;

    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    // 배경 원
    canvas.drawArc(rect, 0, 2 * math.pi, false, backgroundPaint);

    // 진행 원호
    canvas.drawArc(rect, startAngle, sweepAngle, false, progressPaint);
  }

  @override
  bool shouldRepaint(covariant CircularNutritionPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.progressColor != progressColor;
  }
}
