import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/components/organism.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/core/extension/double_extension.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
import 'package:tandangi/domain/enum/nutrition_type_enum.dart';
import 'package:tandangi/feature/report/edit_food_nutrition/controller/edit_food_nutrition_provider.dart';
import 'package:tandangi/gen/assets.gen.dart';

class EditFoodNutritionPage extends ConsumerStatefulWidget {
  const EditFoodNutritionPage({
    super.key,
    required this.foodAnalysisId,
    required this.foodAnalysisFoodItems,
  });

  static const String routeName = 'edit_food_nutrition';

  final int foodAnalysisId;
  final List<FoodAnalysisFoodEntity> foodAnalysisFoodItems;

  @override
  ConsumerState<EditFoodNutritionPage> createState() =>
      _EditFoodNutritionPageState();
}

class _EditFoodNutritionPageState extends ConsumerState<EditFoodNutritionPage>
    with
        EditFoodNutritionStateMixin,
        EditFoodNutritionActionMixin,
        SingleTickerProviderStateMixin {
  late TabController tabController;

  String _formatQuantity(double quantity) {
    if (quantity == quantity.truncateToDouble()) {
      return quantity.toInt().toString();
    }
    return quantity.toString();
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: widget.foodAnalysisFoodItems.length,
      vsync: this,
    );
    tabController.addListener(() {
      onTapAnalyzedFoodItemEntity(
        ref,
        selectedFoodItemIndex: tabController.index,
      );
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        initialFoodAnalysisIdProvider.overrideWithValue(widget.foodAnalysisId),
        initialAnalyzedFoodItemsProvider.overrideWithBuild(
          (ref, _) => widget.foodAnalysisFoodItems
              .map(
                (foodAnalysisFoodEntity) => AnalyzedFoodItemEntity(
                  foodAnalysisFoodEntity: foodAnalysisFoodEntity,
                ),
              )
              .toList(),
        ),
      ],
      child: Consumer(
        builder: (context, ref, child) {
          return PopScope(
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
              body: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.margin.width,
                            ),
                            child: DSViewTitle.medium(
                              title: '먹은 양에 맞게\n수정해보세요',
                              description: '먹은 양에 맞춰 영양성분이 다시 계산돼요',
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Consumer(
                              builder: (context, ref, child) {
                                final analyzedFoodItems =
                                    watchAnalyzedFoodItems(ref);
                                return DSCategory(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: context.margin.width,
                                    vertical: context.componentPadding.medium,
                                  ),
                                  items: analyzedFoodItems
                                      .map(
                                        (analyzedFoodItem) => DSCategoryItem(
                                          text: analyzedFoodItem
                                              .foodAnalysisFoodEntity
                                              .name,
                                        ),
                                      )
                                      .toList(),
                                  tabController: tabController,
                                );
                              },
                            ),
                          ),
                          SizedBox(height: context.componentGap.small),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.margin.width,
                            ),
                            child: SingleChildScrollView(
                              child: Consumer(
                                builder: (context, ref, child) {
                                  final selectedFoodItemIndex =
                                      watchSelectedFoodItemIndex(ref);
                                  final analyzedFoodItems =
                                      watchAnalyzedFoodItems(ref);
                                  final selectedFoodItem =
                                      analyzedFoodItems[selectedFoodItemIndex];

                                  return DSCard(
                                    size: .medium,
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Opacity(
                                            opacity: selectedFoodItem.isRemoved
                                                ? 0.3
                                                : 1,
                                            child: Column(
                                              children: [
                                                DSSegmentedInput(
                                                  segmentedInput:
                                                      DSSegmentedControl.medium(
                                                        items: [
                                                          DSSegmentedControlItem(
                                                            text: '양으로 조절',
                                                          ),
                                                          DSSegmentedControlItem(
                                                            text: '직접 입력',
                                                          ),
                                                        ],
                                                        onTap: (index) {
                                                          onTapToggleEditMode(
                                                            ref,
                                                            selectedFoodItem:
                                                                selectedFoodItem,
                                                            editModeEnum:
                                                                index == 0
                                                                ? EditModeEnum
                                                                      .amount
                                                                : EditModeEnum
                                                                      .directInput,
                                                          );
                                                        },
                                                      ),
                                                ),
                                                if (selectedFoodItem
                                                        .editModeEnum ==
                                                    EditModeEnum
                                                        .directInput) ...[
                                                  IgnorePointer(
                                                    ignoring: selectedFoodItem
                                                        .isRemoved,
                                                    child: Column(
                                                      children: [
                                                        DSListTitle.mediumNormal(
                                                          title: selectedFoodItem
                                                              .foodAnalysisFoodEntity
                                                              .name,
                                                        ),
                                                        DSDivider(
                                                          type: DSDividerType
                                                              .line,
                                                        ),
                                                        Row(
                                                          spacing: context
                                                              .componentGap
                                                              .medium,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  DSKeyValueItem.medium(
                                                                    title:
                                                                        '탄수화물',
                                                                  ),
                                                            ),
                                                            Expanded(
                                                              child: DSTextField(
                                                                suffixText: 'g',
                                                                initialValue:
                                                                    (selectedFoodItem.foodAnalysisFoodEntity.carbohydrate?.value?.toInt() ??
                                                                            0)
                                                                        .toString(),
                                                                autoDisposeControllers:
                                                                    false,
                                                                onChangeCallback:
                                                                    ({
                                                                      required String
                                                                      text,
                                                                    }) {
                                                                      onChangeNutrition(
                                                                        ref,
                                                                        analyzedFoodItemId: selectedFoodItem
                                                                            .foodAnalysisFoodEntity
                                                                            .id,
                                                                        nutritionTypeEnum:
                                                                            NutritionTypeEnum.carbohydrate,
                                                                        text:
                                                                            text,
                                                                      );
                                                                    },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          spacing: context
                                                              .componentGap
                                                              .medium,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  DSKeyValueItem.medium(
                                                                    title:
                                                                        '단백질',
                                                                  ),
                                                            ),
                                                            Expanded(
                                                              child: DSTextField(
                                                                suffixText: 'g',
                                                                initialValue:
                                                                    (selectedFoodItem.foodAnalysisFoodEntity.protein?.value?.toInt() ??
                                                                            0)
                                                                        .toString(),
                                                                autoDisposeControllers:
                                                                    false,
                                                                onChangeCallback:
                                                                    ({
                                                                      required String
                                                                      text,
                                                                    }) {
                                                                      onChangeNutrition(
                                                                        ref,
                                                                        analyzedFoodItemId: selectedFoodItem
                                                                            .foodAnalysisFoodEntity
                                                                            .id,
                                                                        nutritionTypeEnum:
                                                                            NutritionTypeEnum.protein,
                                                                        text:
                                                                            text,
                                                                      );
                                                                    },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          spacing: context
                                                              .componentGap
                                                              .medium,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  DSKeyValueItem.medium(
                                                                    title: '지방',
                                                                  ),
                                                            ),
                                                            Expanded(
                                                              child: DSTextField(
                                                                suffixText: 'g',
                                                                initialValue:
                                                                    (selectedFoodItem.foodAnalysisFoodEntity.fat?.value?.toInt() ??
                                                                            0)
                                                                        .toString(),
                                                                autoDisposeControllers:
                                                                    false,
                                                                onChangeCallback:
                                                                    ({
                                                                      required String
                                                                      text,
                                                                    }) {
                                                                      onChangeNutrition(
                                                                        ref,
                                                                        analyzedFoodItemId: selectedFoodItem
                                                                            .foodAnalysisFoodEntity
                                                                            .id,
                                                                        nutritionTypeEnum:
                                                                            NutritionTypeEnum.fat,
                                                                        text:
                                                                            text,
                                                                      );
                                                                    },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          spacing: context
                                                              .componentGap
                                                              .medium,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  DSKeyValueItem.medium(
                                                                    title: '당',
                                                                  ),
                                                            ),
                                                            Expanded(
                                                              child: DSTextField(
                                                                suffixText: 'g',
                                                                initialValue:
                                                                    (selectedFoodItem.foodAnalysisFoodEntity.sugar?.value?.toInt() ??
                                                                            0)
                                                                        .toString(),
                                                                autoDisposeControllers:
                                                                    false,
                                                                onChangeCallback:
                                                                    ({
                                                                      required String
                                                                      text,
                                                                    }) {
                                                                      onChangeNutrition(
                                                                        ref,
                                                                        analyzedFoodItemId: selectedFoodItem
                                                                            .foodAnalysisFoodEntity
                                                                            .id,
                                                                        nutritionTypeEnum:
                                                                            NutritionTypeEnum.sugar,
                                                                        text:
                                                                            text,
                                                                      );
                                                                    },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          spacing: context
                                                              .componentGap
                                                              .medium,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  DSKeyValueItem.medium(
                                                                    title:
                                                                        '나트륨',
                                                                  ),
                                                            ),
                                                            Expanded(
                                                              child: DSTextField(
                                                                suffixText: 'g',
                                                                initialValue:
                                                                    (selectedFoodItem.foodAnalysisFoodEntity.sodium?.value?.toInt() ??
                                                                            0)
                                                                        .toString(),
                                                                autoDisposeControllers:
                                                                    false,
                                                                onChangeCallback:
                                                                    ({
                                                                      required String
                                                                      text,
                                                                    }) {
                                                                      onChangeNutrition(
                                                                        ref,
                                                                        analyzedFoodItemId: selectedFoodItem
                                                                            .foodAnalysisFoodEntity
                                                                            .id,
                                                                        nutritionTypeEnum:
                                                                            NutritionTypeEnum.sodium,
                                                                        text:
                                                                            text,
                                                                      );
                                                                    },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ] else ...[
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: DSListTitle.mediumNormal(
                                                          title: selectedFoodItem
                                                              .foodAnalysisFoodEntity
                                                              .name,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          spacing: context
                                                              .componentGap
                                                              .large,
                                                          children: [
                                                            DSIconSolidButton.xSmall(
                                                              isEnabled:
                                                                  selectedFoodItem
                                                                      .foodAnalysisFoodEntity
                                                                      .serving >
                                                                  0.25,
                                                              variant:
                                                                  .secondary,
                                                              iconUri: Assets
                                                                  .svgs
                                                                  .icMinus,
                                                              onTap: () {
                                                                onTapChangeServing(
                                                                  ref,
                                                                  analyzedFoodItem:
                                                                      selectedFoodItem,
                                                                  isPlus: false,
                                                                );
                                                              },
                                                            ),
                                                            SizedBox(
                                                              width: 70,
                                                              child: Center(
                                                                child: Text(
                                                                  '${_formatQuantity(selectedFoodItem.foodAnalysisFoodEntity.serving)}인분',
                                                                  style: context
                                                                      .textTheme
                                                                      .listTitleMSemiBold,
                                                                ),
                                                              ),
                                                            ),
                                                            DSIconSolidButton.xSmall(
                                                              isEnabled:
                                                                  selectedFoodItem
                                                                      .foodAnalysisFoodEntity
                                                                      .serving <
                                                                  2.0,
                                                              variant:
                                                                  .tertiary,
                                                              iconUri: Assets
                                                                  .svgs
                                                                  .icPlus,
                                                              onTap: () {
                                                                onTapChangeServing(
                                                                  ref,
                                                                  analyzedFoodItem:
                                                                      selectedFoodItem,
                                                                  isPlus: true,
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  DSDivider(
                                                    type: DSDividerType.line,
                                                  ),
                                                  DSKeyValueItem.medium(
                                                    title: '탄수화물',
                                                    description:
                                                        '${selectedFoodItem.foodAnalysisFoodEntity.carbohydrate?.value?.toRoundedString() ?? 0}g',
                                                  ),
                                                  DSKeyValueItem.medium(
                                                    title: '단백질',
                                                    description:
                                                        '${selectedFoodItem.foodAnalysisFoodEntity.protein?.value?.toRoundedString() ?? 0}g',
                                                  ),
                                                  DSKeyValueItem.medium(
                                                    title: '지방',
                                                    description:
                                                        '${selectedFoodItem.foodAnalysisFoodEntity.fat?.value?.toRoundedString() ?? 0}g',
                                                  ),
                                                  DSKeyValueItem.medium(
                                                    title: '당',
                                                    description:
                                                        '${selectedFoodItem.foodAnalysisFoodEntity.sugar?.value?.toRoundedString() ?? 0}g',
                                                  ),
                                                  DSKeyValueItem.medium(
                                                    title: '나트륨',
                                                    description:
                                                        '${selectedFoodItem.foodAnalysisFoodEntity.sodium?.value?.toRoundedString() ?? 0}mg',
                                                  ),
                                                ],
                                              ],
                                            ),
                                          ),
                                          DSAction.horizontal(
                                            buttons: [
                                              DSTextButton(
                                                variant:
                                                    selectedFoodItem.isRemoved
                                                    ? .primary
                                                    : .warning,
                                                text: selectedFoodItem.isRemoved
                                                    ? '이 음식 다시 포함'
                                                    : '이 음식은 빼기',
                                                onTap: () {
                                                  onTapRemoveFood(
                                                    ref,
                                                    selectedFoodItem:
                                                        selectedFoodItem,
                                                    buildRemoveLastFoodModalWidgetCallback:
                                                        _buildRemoveLastFoodModalWidget,
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 64),
                          CommonBottomPadding(),
                        ],
                      ),
                    ),
                  ),
                  DSCallToAction.horizontal(
                    buttons: [
                      DSSolidButton.large(
                        variant: .primary,
                        text: '저장',
                        onTap: () {
                          onTapSave(ref);
                        },
                      ),
                    ],
                  ),
                  CommonBottomPadding(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBackModalWidget({
    required VoidCallback onTapCancel,
    required VoidCallback onTapConfirm,
  }) {
    return DSModal(
      noticeWidget: DSNotice.normal(
        wrapperUri: Assets.images.exclamation.path,
        title: '수정을 그만할까요?',
        description: '저장하지 않은 변경사항은 사라져요.',
        size: DSNoticeSize.small,
      ),
      actionWidget: DSAction.horizontal(
        buttons: [
          DSSolidButton.medium(
            variant: DSSolidButtonVariant.primary,
            text: '계속 수정',
            onTap: onTapCancel,
          ),
          DSSolidButton.medium(
            variant: DSSolidButtonVariant.warning,
            text: '나가기',
            onTap: onTapConfirm,
          ),
        ],
      ),
    );
  }

  Widget _buildRemoveLastFoodModalWidget({
    required VoidCallback onTapConfirm,
    required VoidCallback onTapCancel,
  }) {
    return DSModal(
      noticeWidget: DSNotice.normal(
        wrapperUri: Assets.images.exclamation.path,
        title: '최소 1개 음식은 먹은 상태여야 해요',
        description: '분석 결과는 모두 안 먹음으로 바꿀 수 없어요\n먹은 음식이 결과에 없다면 다시 기록해 주세요',
        size: DSNoticeSize.small,
      ),
      actionWidget: DSAction.vertical(
        buttons: [
          DSSolidButton.medium(
            variant: DSSolidButtonVariant.primary,
            text: '확인했어요',
            onTap: onTapConfirm,
          ),
          DSSolidButton.medium(
            variant: DSSolidButtonVariant.tertiary,
            text: '다시 기록하기',
            onTap: onTapCancel,
          ),
        ],
      ),
    );
  }

  String _formatNumber(num? value) {
    if (value == null) return '-';
    return value.toDouble().toRoundedString();
  }

  String _formatValueWithUnit(num? value, String unit) {
    if (value == null) return '-';
    return '${_formatNumber(value)}$unit';
  }
}
