import 'package:core_app/components/async_widget.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/ions.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/components/organism.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/enum/nutrition_threshhold_status_enum.dart';
import 'package:tandangi/domain/enum/nutrition_type_enum.dart';
import 'package:tandangi/feature/report/controller/report_provider.dart';
import 'package:tandangi/gen/assets.gen.dart';

class ReportPage extends ConsumerStatefulWidget {
  const ReportPage({super.key, required this.foodAnalysisId});

  static const String routeName = 'report';

  final String foodAnalysisId;
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

  FoodAnalysisFoodEntity? _pickMainFood(FoodAnalysisEntity result) {
    if (result.mainFoodItems.isNotEmpty) return result.mainFoodItems.first;
    if (result.sideFoodItems.isNotEmpty) return result.sideFoodItems.first;
    if (result.otherFoodItems.isNotEmpty) return result.otherFoodItems.first;
    return null;
  }

  String _formatNumber(num? value) {
    if (value == null) return '-';
    final doubleValue = value.toDouble();
    if (doubleValue == doubleValue.roundToDouble()) {
      return doubleValue.toInt().toString();
    }
    return doubleValue.toString();
  }

  String _formatValueWithUnit(num? value, String unit) {
    if (value == null) return '-';
    return '${_formatNumber(value)}$unit';
  }

  String _formatPercent(double? value) {
    if (value == null) return '-';
    return '${_formatNumber(value)}%';
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        initialFoodAnalysisIdProvider.overrideWithValue(widget.foodAnalysisId),
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
                  ...foodAnalyzeResult.mainFoodItems,
                  ...foodAnalyzeResult.sideFoodItems,
                  ...foodAnalyzeResult.otherFoodItems,
                ];
                final nutritionCompareInfo =
                    foodAnalyzeResult.nutritionCompareInfo;
                final carbohydrateInfo = nutritionCompareInfo?.carbohydrate;
                final proteinInfo = nutritionCompareInfo?.protein;
                final fatInfo = nutritionCompareInfo?.fat;
                final sugarInfo = nutritionCompareInfo?.sugar;
                final sodiumInfo = nutritionCompareInfo?.sodium;
                final mainNutritionWidgets = <Widget>[
                  if (carbohydrateInfo != null)
                    Expanded(
                      child: _buildMainNutritionBoxWidget(
                        nutritionType: NutritionType.carbohydrate,
                        nutrientInfoEntity: carbohydrateInfo,
                      ),
                    ),
                  if (proteinInfo != null)
                    Expanded(
                      child: _buildMainNutritionBoxWidget(
                        nutritionType: NutritionType.protein,
                        nutrientInfoEntity: proteinInfo,
                      ),
                    ),
                  if (fatInfo != null)
                    Expanded(
                      child: _buildMainNutritionBoxWidget(
                        nutritionType: NutritionType.fat,
                        nutrientInfoEntity: fatInfo,
                      ),
                    ),
                ];
                final detailNutritionWidgets = <Widget>[
                  if (sugarInfo != null)
                    Expanded(
                      child: _buildSugarNutritionBoxWidget(
                        sugarInfoEntity: sugarInfo,
                      ),
                    ),
                  if (sodiumInfo != null)
                    Expanded(
                      child: _buildSodiumNutritionBoxWidget(
                        sodiumInfoEntity: sodiumInfo,
                      ),
                    ),
                ];
                final kcalIntake = nutritionCompareInfo?.kcal?.intake;
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
                            if (mainNutritionWidgets.isNotEmpty) ...[
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
                                child: Row(children: mainNutritionWidgets),
                              ),
                            ],
                            if (detailNutritionWidgets.isNotEmpty)
                              SizedBox(height: context.componentGap.small),
                            if (detailNutritionWidgets.isNotEmpty)
                              Row(
                                spacing: context.componentGap.small,
                                children: detailNutritionWidgets,
                              ),
                            if (kcalIntake != null)
                              SizedBox(height: context.componentGap.small),
                            if (kcalIntake != null)
                              DSBanner.normal(
                                listItemWidget: DSListItem.small(
                                  leadingWidget: DSWrapper(
                                    uri: Assets.svgs.icReadingGlass,
                                    view: WrapperView.fix16,
                                  ),
                                  variant: .normal,
                                  title:
                                      '식단 칼로리 ${_formatValueWithUnit(kcalIntake, 'kcal')}',
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
                                    onTapEditFoodNutrition(ref);
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
                                              text: _formatValueWithUnit(
                                                selectedFoodItem?.kcal?.value,
                                                'kCal',
                                              ),
                                              variant:
                                                  DSTextBadgeVariant.secondary,
                                              type: DSTextBadgeType.rectangle,
                                            ),
                                          ),
                                          DSDivider(type: DSDividerType.line),
                                          DSKeyValueItem.medium(
                                            title: '탄수화물',
                                            description: _formatValueWithUnit(
                                              selectedFoodItem
                                                  ?.carbohydrate
                                                  ?.value,
                                              'g',
                                            ),
                                          ),
                                          DSKeyValueItem.medium(
                                            title: '단백질',
                                            description: _formatValueWithUnit(
                                              selectedFoodItem?.protein?.value,
                                              'g',
                                            ),
                                          ),
                                          DSKeyValueItem.medium(
                                            title: '지방',
                                            description: _formatValueWithUnit(
                                              selectedFoodItem?.fat?.value,
                                              'g',
                                            ),
                                          ),
                                          DSKeyValueItem.medium(
                                            title: '당',
                                            description: _formatValueWithUnit(
                                              selectedFoodItem?.sugar?.value,
                                              'g',
                                            ),
                                          ),
                                          DSKeyValueItem.medium(
                                            title: '나트륨',
                                            description: _formatValueWithUnit(
                                              selectedFoodItem?.sodium?.value,
                                              'mg',
                                            ),
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
    required NutrientCompareInfoEntity nutrientInfoEntity,
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
              _formatValueWithUnit(nutrientInfoEntity.intake, 'g'),
              style: context.textTheme.bodyXLMedium.copyWith(
                color: context.semanticColors.textPrimary,
              ),
            ),
          ],
        ),
        SizedBox(height: context.componentGap.xxSmall),
        DSTextBadge.small(
          text: '일일 권장 ${_formatPercent(nutrientInfoEntity.percent)}',
          variant: DSTextBadgeVariant.tertiary,
          type: DSTextBadgeType.circular,
        ),
      ],
    );
  }

  Widget _buildSugarNutritionBoxWidget({
    required SugarCompareInfoEntity sugarInfoEntity,
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
            title: _formatValueWithUnit(sugarInfoEntity.intake, 'g'),
            titleBadge: DSTextBadge.small(
              text: sugarInfoEntity.nutritionThresholdStatusEnum?.value ?? '',
              variant: switch (sugarInfoEntity.nutritionThresholdStatusEnum) {
                NutritionThresholdStatusEnum.normal =>
                  DSTextBadgeVariant.success,
                NutritionThresholdStatusEnum.caution =>
                  DSTextBadgeVariant.warning,
                NutritionThresholdStatusEnum.risk => DSTextBadgeVariant.warning,
                _ => DSTextBadgeVariant.tertiary,
              },
              type: DSTextBadgeType.circular,
            ),
            description: '최대 ${_formatValueWithUnit(sugarInfoEntity.max, 'g')}',
          ),
        ],
      ),
    );
  }

  Widget _buildSodiumNutritionBoxWidget({
    required SodiumCompareInfoEntity sodiumInfoEntity,
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
            title: _formatValueWithUnit(sodiumInfoEntity.intake, 'mg'),
            titleBadge: DSTextBadge.small(
              text: sodiumInfoEntity.nutritionThresholdStatusEnum?.value ?? '',
              variant: switch (sodiumInfoEntity.nutritionThresholdStatusEnum) {
                NutritionThresholdStatusEnum.normal =>
                  DSTextBadgeVariant.success,
                NutritionThresholdStatusEnum.caution =>
                  DSTextBadgeVariant.warning,
                NutritionThresholdStatusEnum.risk => DSTextBadgeVariant.warning,
                _ => DSTextBadgeVariant.tertiary,
              },
              type: DSTextBadgeType.circular,
            ),
            description:
                '0 - ${_formatValueWithUnit(sodiumInfoEntity.adequate, 'mg')} 권장',
          ),
        ],
      ),
    );
  }
}
