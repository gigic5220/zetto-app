import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/components/organism.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          return Scaffold(
            appBar: DSAppBar.page(text: '', showBackButton: true),
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
                              final analyzedFoodItems = watchAnalyzedFoodItems(
                                ref,
                              );
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
                                              DSListTitle.mediumNormal(
                                                title: selectedFoodItem
                                                    .foodAnalysisFoodEntity
                                                    .name,
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        onTapToggleEditMode(
                                                          ref,
                                                          selectedFoodItem:
                                                              selectedFoodItem,
                                                          editModeEnum:
                                                              EditModeEnum
                                                                  .amount,
                                                        );
                                                      },
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color:
                                                                  selectedFoodItem
                                                                          .editModeEnum ==
                                                                      EditModeEnum
                                                                          .amount
                                                                  ? context
                                                                        .semanticColors
                                                                        .borderInverse
                                                                  : Colors
                                                                        .transparent,
                                                              width: 2,
                                                            ),
                                                          ),
                                                        ),
                                                        padding: EdgeInsets.all(
                                                          context
                                                              .componentPadding
                                                              .xLarge,
                                                        ),
                                                        child: Text(
                                                          '양으로 조절',
                                                          style: context
                                                              .textTheme
                                                              .bodyLMedium
                                                              .copyWith(
                                                                color: context
                                                                    .semanticColors
                                                                    .textPrimary,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        onTapToggleEditMode(
                                                          ref,
                                                          selectedFoodItem:
                                                              selectedFoodItem,
                                                          editModeEnum:
                                                              EditModeEnum
                                                                  .directInput,
                                                        );
                                                      },
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color:
                                                                  selectedFoodItem
                                                                          .editModeEnum ==
                                                                      EditModeEnum
                                                                          .directInput
                                                                  ? context
                                                                        .semanticColors
                                                                        .borderInverse
                                                                  : Colors
                                                                        .transparent,
                                                              width: 2,
                                                            ),
                                                          ),
                                                        ),
                                                        padding: EdgeInsets.all(
                                                          context
                                                              .componentPadding
                                                              .xLarge,
                                                        ),
                                                        child: Text(
                                                          '직접 입력',
                                                          style: context
                                                              .textTheme
                                                              .bodyLMedium
                                                              .copyWith(
                                                                color: context
                                                                    .semanticColors
                                                                    .textPrimary,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height:
                                                    context.componentGap.medium,
                                              ),
                                              if (selectedFoodItem
                                                      .editModeEnum ==
                                                  EditModeEnum.directInput) ...[
                                                IgnorePointer(
                                                  ignoring: selectedFoodItem
                                                      .isRemoved,
                                                  child: Column(
                                                    spacing: context
                                                        .componentGap
                                                        .medium,
                                                    children: [
                                                      Row(
                                                        spacing: context
                                                            .componentGap
                                                            .medium,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              '탄수화물',
                                                              style: context
                                                                  .textTheme
                                                                  .bodyLMedium
                                                                  .copyWith(
                                                                    color: context
                                                                        .semanticColors
                                                                        .textPrimary,
                                                                  ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 100,
                                                            child: DSTextField(
                                                              initialValue:
                                                                  (selectedFoodItem
                                                                              .foodAnalysisFoodEntity
                                                                              .carbohydrate
                                                                              ?.value
                                                                              ?.toInt() ??
                                                                          0)
                                                                      .toString(),
                                                              autoDisposeControllers:
                                                                  false,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              onChangeCallback:
                                                                  ({
                                                                    required String
                                                                    text,
                                                                  }) {
                                                                    onChangeNutrition(
                                                                      ref,
                                                                      analyzedFoodItemId:
                                                                          selectedFoodItem
                                                                              .foodAnalysisFoodEntity
                                                                              .id,
                                                                      nutritionTypeEnum:
                                                                          NutritionTypeEnum
                                                                              .carbohydrate,
                                                                      text:
                                                                          text,
                                                                    );
                                                                  },
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 30,
                                                            child: Text(
                                                              'g',
                                                              style: context
                                                                  .textTheme
                                                                  .bodyLMedium
                                                                  .copyWith(
                                                                    color: context
                                                                        .semanticColors
                                                                        .textPrimary,
                                                                  ),
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
                                                            child: Text(
                                                              '단백질',
                                                              style: context
                                                                  .textTheme
                                                                  .bodyLMedium
                                                                  .copyWith(
                                                                    color: context
                                                                        .semanticColors
                                                                        .textPrimary,
                                                                  ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 100,
                                                            child: DSTextField(
                                                              initialValue:
                                                                  (selectedFoodItem
                                                                              .foodAnalysisFoodEntity
                                                                              .protein
                                                                              ?.value
                                                                              ?.toInt() ??
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
                                                                      analyzedFoodItemId:
                                                                          selectedFoodItem
                                                                              .foodAnalysisFoodEntity
                                                                              .id,
                                                                      nutritionTypeEnum:
                                                                          NutritionTypeEnum
                                                                              .protein,
                                                                      text:
                                                                          text,
                                                                    );
                                                                  },
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 30,
                                                            child: Text(
                                                              'g',
                                                              style: context
                                                                  .textTheme
                                                                  .bodyLMedium
                                                                  .copyWith(
                                                                    color: context
                                                                        .semanticColors
                                                                        .textPrimary,
                                                                  ),
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
                                                            child: Text(
                                                              '지방',
                                                              style: context
                                                                  .textTheme
                                                                  .bodyLMedium
                                                                  .copyWith(
                                                                    color: context
                                                                        .semanticColors
                                                                        .textPrimary,
                                                                  ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 100,
                                                            child: DSTextField(
                                                              initialValue:
                                                                  (selectedFoodItem
                                                                              .foodAnalysisFoodEntity
                                                                              .fat
                                                                              ?.value
                                                                              ?.toInt() ??
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
                                                                      analyzedFoodItemId:
                                                                          selectedFoodItem
                                                                              .foodAnalysisFoodEntity
                                                                              .id,
                                                                      nutritionTypeEnum:
                                                                          NutritionTypeEnum
                                                                              .fat,
                                                                      text:
                                                                          text,
                                                                    );
                                                                  },
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 30,
                                                            child: Text(
                                                              'g',
                                                              style: context
                                                                  .textTheme
                                                                  .bodyLMedium
                                                                  .copyWith(
                                                                    color: context
                                                                        .semanticColors
                                                                        .textPrimary,
                                                                  ),
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
                                                            child: Text(
                                                              '당',
                                                              style: context
                                                                  .textTheme
                                                                  .bodyLMedium
                                                                  .copyWith(
                                                                    color: context
                                                                        .semanticColors
                                                                        .textPrimary,
                                                                  ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 100,
                                                            child: DSTextField(
                                                              initialValue:
                                                                  (selectedFoodItem
                                                                              .foodAnalysisFoodEntity
                                                                              .sugar
                                                                              ?.value
                                                                              ?.toInt() ??
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
                                                                      analyzedFoodItemId:
                                                                          selectedFoodItem
                                                                              .foodAnalysisFoodEntity
                                                                              .id,
                                                                      nutritionTypeEnum:
                                                                          NutritionTypeEnum
                                                                              .sugar,
                                                                      text:
                                                                          text,
                                                                    );
                                                                  },
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 30,
                                                            child: Text(
                                                              'g',
                                                              style: context
                                                                  .textTheme
                                                                  .bodyLMedium
                                                                  .copyWith(
                                                                    color: context
                                                                        .semanticColors
                                                                        .textPrimary,
                                                                  ),
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
                                                            child: Text(
                                                              '나트륨',
                                                              style: context
                                                                  .textTheme
                                                                  .bodyLMedium
                                                                  .copyWith(
                                                                    color: context
                                                                        .semanticColors
                                                                        .textPrimary,
                                                                  ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 100,
                                                            child: DSTextField(
                                                              initialValue:
                                                                  (selectedFoodItem
                                                                              .foodAnalysisFoodEntity
                                                                              .sodium
                                                                              ?.value
                                                                              ?.toInt() ??
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
                                                                      analyzedFoodItemId:
                                                                          selectedFoodItem
                                                                              .foodAnalysisFoodEntity
                                                                              .id,
                                                                      nutritionTypeEnum:
                                                                          NutritionTypeEnum
                                                                              .sodium,
                                                                      text:
                                                                          text,
                                                                    );
                                                                  },
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 30,
                                                            child: Text(
                                                              'mg',
                                                              style: context
                                                                  .textTheme
                                                                  .bodyLMedium
                                                                  .copyWith(
                                                                    color: context
                                                                        .semanticColors
                                                                        .textPrimary,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ] else ...[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
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
                                                      variant: .secondary,
                                                      iconUri:
                                                          Assets.svgs.icMinus,
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
                                                      variant: .tertiary,
                                                      iconUri:
                                                          Assets.svgs.icPlus,
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
                                                DSKeyValueItem.medium(
                                                  title: '탄수화물',
                                                  description:
                                                      _formatValueWithUnit(
                                                        selectedFoodItem
                                                            .foodAnalysisFoodEntity
                                                            .carbohydrate
                                                            ?.value,
                                                        'g',
                                                      ),
                                                ),
                                                DSKeyValueItem.medium(
                                                  title: '단백질',
                                                  description:
                                                      _formatValueWithUnit(
                                                        selectedFoodItem
                                                            .foodAnalysisFoodEntity
                                                            .protein
                                                            ?.value,
                                                        'g',
                                                      ),
                                                ),
                                                DSKeyValueItem.medium(
                                                  title: '지방',
                                                  description:
                                                      _formatValueWithUnit(
                                                        selectedFoodItem
                                                            .foodAnalysisFoodEntity
                                                            .fat
                                                            ?.value,
                                                        'g',
                                                      ),
                                                ),
                                                DSKeyValueItem.medium(
                                                  title: '당',
                                                  description:
                                                      _formatValueWithUnit(
                                                        selectedFoodItem
                                                            .foodAnalysisFoodEntity
                                                            .sugar
                                                            ?.value,
                                                        'g',
                                                      ),
                                                ),
                                                DSKeyValueItem.medium(
                                                  title: '나트륨',
                                                  description:
                                                      _formatValueWithUnit(
                                                        selectedFoodItem
                                                            .foodAnalysisFoodEntity
                                                            .sodium
                                                            ?.value,
                                                        'mg',
                                                      ),
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
                                                  selectedFoodItem,
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
          );
        },
      ),
    );
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
}
