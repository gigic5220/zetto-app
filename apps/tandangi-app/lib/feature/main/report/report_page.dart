import 'dart:io';

import 'package:core_app/components/async_widget.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/ions.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/components/organism.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';
import 'package:tandangi/domain/enum/nutrition_threshhold_status_enum.dart';
import 'package:tandangi/domain/enum/nutrition_type_enum.dart';
import 'package:tandangi/feature/main/report/controller/report_provider.dart';
import 'package:tandangi/gen/assets.gen.dart';

class ReportPage extends ConsumerStatefulWidget {
  const ReportPage({
    super.key,
    required this.selectedPhoto,
    required this.includeWatermark,
  });

  static const String routeName = 'report';

  final File selectedPhoto;
  final bool includeWatermark;
  @override
  ConsumerState<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends ConsumerState<ReportPage>
    with ReportStateMixin, ReportActionMixin, SingleTickerProviderStateMixin {
  String _formatCreatedAt(DateTime? createdAt) {
    if (createdAt == null) return '';

    final hour = createdAt.hour;
    final period = hour < 12 ? '오전' : '오후';
    final hour12 = hour % 12 == 0 ? 12 : hour % 12;
    final minute = createdAt.minute.toString().padLeft(2, '0');

    return '${createdAt.month}월 ${createdAt.day}일 | $period $hour12:$minute';
  }

  String _formatSelectedFoodKcal(AnalyzedFoodItemEntity? foodItem) {
    final kcal = foodItem?.nutrients?.kcal;
    final value = kcal?.value;
    final unit = kcal?.unit ?? 'kcal';
    if (value == null) return '';

    final formatted = value == value.roundToDouble()
        ? value.toInt().toString()
        : value.toString();
    return '$formatted$unit';
  }

  AnalyzedFoodItemEntity? _pickMainFood(FoodAnalyzeResultEntity result) {
    if (result.main.isNotEmpty) return result.main.first;
    if (result.sides.isNotEmpty) return result.sides.first;
    if (result.others.isNotEmpty) return result.others.first;
    return null;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        initialSelectedPhotoProvider.overrideWithValue(widget.selectedPhoto),
        initialIncludeWatermarkProvider.overrideWithValue(
          widget.includeWatermark,
        ),
      ],
      child: Scaffold(
        appBar: DSAppBar.page(text: '', showBackButton: true),
        body: Consumer(
          builder: (context, ref, child) {
            final foodAnalyzeResult = watchFoodAnalyzeResult(ref);

            return AsyncWidget(
              asyncValue: foodAnalyzeResult,
              loadingWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DSNotice.normal(
                    wrapperUri: Assets.svgs.icBangFill,
                    size: .medium,
                    title: '먹은 음식을 분석하고 있어요',
                    description: '조금만 기다려주세요!',
                  ),
                  const CommonBottomPadding(),
                ],
              ),
              builder: (foodAnalyzeResult) {
                final mainFood = _pickMainFood(foodAnalyzeResult);
                final analyzedFoodItems = [
                  ...foodAnalyzeResult.main,
                  ...foodAnalyzeResult.sides,
                  ...foodAnalyzeResult.others,
                ];
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return DSWrapper(
                            uri: foodAnalyzeResult.foodImageUrl,
                            view: WrapperView(
                              size: constraints.maxWidth,
                              ratio: 1,
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          context.margin.width,
                          context.componentPadding.xxxLarge,
                          context.margin.width,
                          context.componentGap.xLarge,
                        ),
                        child: Column(
                          children: [
                            DSViewTitle.small(
                              subTitle: _formatCreatedAt(
                                foodAnalyzeResult.createdAt,
                              ),
                              title: mainFood?.name ?? '',
                              description: '이번 식단의 영양 구성은?',
                            ),
                            if (foodAnalyzeResult.nutritionComparison !=
                                null) ...[
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.componentPadding.xSmall,
                                  vertical: context.componentPadding.xxLarge,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    context.componentRadius.small,
                                  ),
                                  border: Border.all(
                                    color: context.semanticColors.borderSubtle,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: _buildMainNutritionBoxWidget(
                                        nutritionType:
                                            NutritionType.carbohydrate,
                                        macronutrientComparisonEntity:
                                            foodAnalyzeResult
                                                .nutritionComparison!
                                                .carbohydrate!,
                                      ),
                                    ),
                                    Expanded(
                                      child: _buildMainNutritionBoxWidget(
                                        nutritionType: NutritionType.protein,
                                        macronutrientComparisonEntity:
                                            foodAnalyzeResult
                                                .nutritionComparison!
                                                .protein!,
                                      ),
                                    ),
                                    Expanded(
                                      child: _buildMainNutritionBoxWidget(
                                        nutritionType: NutritionType.fat,
                                        macronutrientComparisonEntity:
                                            foodAnalyzeResult
                                                .nutritionComparison!
                                                .fat!,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                            SizedBox(height: context.componentGap.small),
                            Row(
                              spacing: context.componentGap.small,
                              children: [
                                Expanded(
                                  child: _buildSugarNutritionBoxWidget(
                                    sugarComparisonEntity: foodAnalyzeResult
                                        .nutritionComparison!
                                        .sugar!,
                                  ),
                                ),
                                Expanded(
                                  child: _buildSodiumNutritionBoxWidget(
                                    sodiumComparisonEntity: foodAnalyzeResult
                                        .nutritionComparison!
                                        .sodium!,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: context.componentGap.small),
                            DSBanner.normal(
                              listItemWidget: DSListItem.small(
                                leadingWidget: DSWrapper(
                                  uri: Assets.svgs.icReadingGlass,
                                  view: WrapperView.fix16,
                                ),
                                variant: .normal,
                                title:
                                    '식단 칼로리 ${foodAnalyzeResult.nutritionComparison!.kcal?.intakeKcal}kcal',
                                description:
                                    '균형은 좋아요 다만 이번 식단은 탄수화물 비율이 조금 높아, 다음 식사는 단백질과 채소 위주로 가볍게 맞춰봐요',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: context.semanticColors.bgSection,
                        padding: EdgeInsets.symmetric(
                          vertical: context.componentPadding.xxLarge,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.margin.width,
                              ),
                              child: DSListTitle.mediumNormal(
                                title: '먹은 양에 맞게 수정해보세요',
                                description: '내가 먹은 만큼만 성분이 계산돼요',
                                trailingWidget: DSSolidButton.small(
                                  variant: .tertiary,
                                  text: '수정하기',
                                  onTap: () {
                                    //TODO: 수정하기 페이지로 이동
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: DSCategory(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.margin.width,
                                  vertical: context.componentPadding.medium,
                                ),
                                items: analyzedFoodItems
                                    .map((e) => DSCategoryItem(text: e.name))
                                    .toList(),
                                tabController: null,
                                onTap: (index) {
                                  onTapAnalyzedFoodItem(
                                    ref,
                                    foodItem: analyzedFoodItems[index],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: context.componentGap.xxSmall),
                            Consumer(
                              builder: (context, ref, child) {
                                final selectedFoodItem = watchSelectedFoodItem(
                                  ref,
                                );
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: context.margin.width,
                                  ),
                                  child: DSCard(
                                    size: .large,
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          DSBadgeList.text(
                                            badges: [
                                              DSTextBadge.small(
                                                text: '일반식',
                                                variant: DSTextBadgeVariant
                                                    .secondary,
                                                type: DSTextBadgeType.rectangle,
                                              ),
                                            ],
                                          ),
                                          DSListTitle.mediumNormal(
                                            title: selectedFoodItem?.name ?? '',
                                            trailingWidget: DSTextBadge.medium(
                                              text:
                                                  '${selectedFoodItem?.nutrients?.kcal?.value}kCal',
                                              variant:
                                                  DSTextBadgeVariant.secondary,
                                              type: DSTextBadgeType.rectangle,
                                            ),
                                          ),
                                          DSDivider(type: DSDividerType.line),
                                          DSKeyValueItem.medium(
                                            title: '탄수화물',
                                            description:
                                                '${selectedFoodItem?.nutrients?.carbohydrate?.value}g',
                                          ),
                                          DSKeyValueItem.medium(
                                            title: '단백질',
                                            description:
                                                '${selectedFoodItem?.nutrients?.protein?.value}g',
                                          ),
                                          DSKeyValueItem.medium(
                                            title: '지방',
                                            description:
                                                '${selectedFoodItem?.nutrients?.fat?.value}g',
                                          ),
                                          DSKeyValueItem.medium(
                                            title: '당',
                                            description:
                                                '${selectedFoodItem?.nutrients?.sugar?.value}g',
                                          ),
                                          DSKeyValueItem.medium(
                                            title: '나트륨',
                                            description:
                                                '${selectedFoodItem?.nutrients?.sodium?.value}mg',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: context.componentGap.xxSmall),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.margin.width,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.componentPadding.medium,
                                  vertical: context.componentPadding.xxLarge,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: foodAnalyzeResult.assumptions
                                      .map(
                                        (assumption) => Text(
                                          '· $assumption',
                                          style: context.textTheme.bodySRegular
                                              .copyWith(
                                                color: context
                                                    .semanticColors
                                                    .textTertiary,
                                              ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ),
                            CommonBottomPadding(),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildMainNutritionBoxWidget({
    required NutritionType nutritionType,
    required MacronutrientComparisonEntity macronutrientComparisonEntity,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DSWrapper(
          uri: switch (nutritionType) {
            NutritionType.carbohydrate => Assets.images.sweetPotato.path,
            NutritionType.protein => Assets.images.egg.path,
            NutritionType.fat => Assets.images.avocado.path,
            _ => throw UnimplementedError(),
          },
          view: WrapperView.fix24,
        ),
        SizedBox(height: context.componentGap.small),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4,
          children: [
            Text(
              switch (nutritionType) {
                NutritionType.carbohydrate => '탄수',
                NutritionType.protein => '단백',
                NutritionType.fat => '지방',
                _ => throw UnimplementedError(),
              },
              style: context.textTheme.bodyMRegular.copyWith(
                color: context.semanticColors.textTertiary,
              ),
            ),
            Text(
              '${macronutrientComparisonEntity.intakeG}g',
              style: context.textTheme.bodyXLMedium.copyWith(
                color: context.semanticColors.textPrimary,
              ),
            ),
          ],
        ),
        SizedBox(height: context.componentGap.xxSmall),
        DSTextBadge.small(
          text: '일일 권장 ${macronutrientComparisonEntity.percent}%',
          variant: DSTextBadgeVariant.tertiary,
          type: DSTextBadgeType.circular,
        ),
      ],
    );
  }

  Widget _buildSugarNutritionBoxWidget({
    required SugarComparisonEntity sugarComparisonEntity,
  }) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        context.componentPadding.xxLarge,
        context.componentPadding.xLarge,
        context.componentPadding.xxLarge,
        context.componentPadding.xSmall,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.componentRadius.xLarge),
        border: Border.all(color: context.semanticColors.borderSubtle),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSWrapper(uri: Assets.images.avocado.path, view: WrapperView.fix24),
          DSListItem.medium(
            variant: .normal,
            subTitle: '당',
            title: '${sugarComparisonEntity.intakeG}g',
            titleBadge: DSTextBadge.small(
              text: sugarComparisonEntity.statusEnum?.value ?? '',
              variant: switch (sugarComparisonEntity.statusEnum) {
                NutritionThresholdStatusEnum.normal =>
                  DSTextBadgeVariant.success,
                NutritionThresholdStatusEnum.caution =>
                  DSTextBadgeVariant.warning,
                NutritionThresholdStatusEnum.risk => DSTextBadgeVariant.warning,
                _ => DSTextBadgeVariant.tertiary,
              },
              type: DSTextBadgeType.circular,
            ),
            description: '최대 ${sugarComparisonEntity.maxG}g',
          ),
        ],
      ),
    );
  }

  Widget _buildSodiumNutritionBoxWidget({
    required SodiumComparisonEntity sodiumComparisonEntity,
  }) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        context.componentPadding.xxLarge,
        context.componentPadding.xLarge,
        context.componentPadding.xxLarge,
        context.componentPadding.xSmall,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.componentRadius.xLarge),
        border: Border.all(color: context.semanticColors.borderSubtle),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSWrapper(uri: Assets.images.avocado.path, view: WrapperView.fix24),
          DSListItem.medium(
            variant: .normal,
            subTitle: '나트륨',
            title: '${sodiumComparisonEntity.intakeMg}mg',
            titleBadge: DSTextBadge.small(
              text: sodiumComparisonEntity.statusEnum?.value ?? '',
              variant: switch (sodiumComparisonEntity.statusEnum) {
                NutritionThresholdStatusEnum.normal =>
                  DSTextBadgeVariant.success,
                NutritionThresholdStatusEnum.caution =>
                  DSTextBadgeVariant.warning,
                NutritionThresholdStatusEnum.risk => DSTextBadgeVariant.warning,
                _ => DSTextBadgeVariant.tertiary,
              },
              type: DSTextBadgeType.circular,
            ),
            description: '0 - ${sodiumComparisonEntity.adequateMg}mg 권장',
          ),
        ],
      ),
    );
  }
}
