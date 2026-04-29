import 'package:core_app/extensions/extension.dart';
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
    with EditFoodNutritionStateMixin, EditFoodNutritionActionMixin {
  String _formatQuantity(double quantity) {
    if (quantity == quantity.truncateToDouble()) {
      return quantity.toInt().toString();
    }
    return quantity.toString();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        initialFoodAnalysisIdProvider.overrideWithValue(widget.foodAnalysisId),
        initialAnalyzedFoodItemsWithQuantityProvider.overrideWithBuild(
          (ref, _) => widget.foodAnalysisFoodItems
              .map(
                (foodAnalysisFoodEntity) => AnalyzedFoodItemEntityWithQuantity(
                  foodAnalysisFoodEntity: foodAnalysisFoodEntity,
                  quantity: 1,
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
                              final analyzedFoodItemsWithQuantity =
                                  watchAnalyzedFoodItemsWithQuantity(ref);
                              return DSCategory(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.margin.width,
                                  vertical: context.componentPadding.medium,
                                ),
                                items: analyzedFoodItemsWithQuantity
                                    .map(
                                      (analyzedFoodItemsWithQuantity) =>
                                          DSCategoryItem(
                                            text: analyzedFoodItemsWithQuantity
                                                .foodAnalysisFoodEntity
                                                .name,
                                          ),
                                    )
                                    .toList(),
                                tabController: null,
                                onTap: (index) {
                                  onTapAnalyzedFoodItemEntityWithQuantity(
                                    ref,
                                    analyzedFoodItemEntityWithQuantity:
                                        analyzedFoodItemsWithQuantity[index],
                                  );
                                },
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
                                final analyzedFoodItemsWithQuantity =
                                    watchAnalyzedFoodItemsWithQuantity(ref);
                                return Column(
                                  children: analyzedFoodItemsWithQuantity
                                      .mapToIndexedList(
                                        (
                                          index,
                                          analyzedFoodItemsWithQuantity,
                                        ) => DSCard(
                                          size: .medium,
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                DSListTitle.mediumNormal(
                                                  title:
                                                      analyzedFoodItemsWithQuantity
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
                                                            index: index,
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
                                                                    analyzedFoodItemsWithQuantity
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
                                                            index: index,
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
                                                                    analyzedFoodItemsWithQuantity
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
                                                  height: context
                                                      .componentGap
                                                      .medium,
                                                ),
                                                if (analyzedFoodItemsWithQuantity
                                                        .editModeEnum ==
                                                    EditModeEnum
                                                        .directInput) ...[
                                                  Column(
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
                                                                  analyzedFoodItemsWithQuantity
                                                                      .carbohydrate
                                                                      .toInt()
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
                                                                      index:
                                                                          index,
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
                                                                  analyzedFoodItemsWithQuantity
                                                                      .protein
                                                                      .toInt()
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
                                                                      index:
                                                                          index,
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
                                                                  analyzedFoodItemsWithQuantity
                                                                      .fat
                                                                      .toInt()
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
                                                                      index:
                                                                          index,
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
                                                                  analyzedFoodItemsWithQuantity
                                                                      .sugar
                                                                      .toInt()
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
                                                                      index:
                                                                          index,
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
                                                                  analyzedFoodItemsWithQuantity
                                                                      .sodium
                                                                      .toInt()
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
                                                                      index:
                                                                          index,
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
                                                ] else ...[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    spacing: context
                                                        .componentGap
                                                        .large,
                                                    children: [
                                                      DSIconSolidButton.xSmall(
                                                        isEnabled:
                                                            analyzedFoodItemsWithQuantity
                                                                .quantity >
                                                            0.25,
                                                        variant: .secondary,
                                                        iconUri:
                                                            Assets.svgs.icMinus,
                                                        onTap: () {
                                                          onTapQuantity(
                                                            ref,
                                                            index: index,
                                                            analyzedFoodItemEntityWithQuantity:
                                                                analyzedFoodItemsWithQuantity,
                                                            isPlus: false,
                                                          );
                                                        },
                                                      ),
                                                      SizedBox(
                                                        width: 70,
                                                        child: Center(
                                                          child: Text(
                                                            '${_formatQuantity(analyzedFoodItemsWithQuantity.quantity)}인분',
                                                            style: context
                                                                .textTheme
                                                                .listTitleMSemiBold,
                                                          ),
                                                        ),
                                                      ),
                                                      DSIconSolidButton.xSmall(
                                                        isEnabled:
                                                            analyzedFoodItemsWithQuantity
                                                                .quantity <
                                                            2.0,
                                                        variant: .tertiary,
                                                        iconUri:
                                                            Assets.svgs.icPlus,
                                                        onTap: () {
                                                          onTapQuantity(
                                                            ref,
                                                            index: index,
                                                            analyzedFoodItemEntityWithQuantity:
                                                                analyzedFoodItemsWithQuantity,
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
                                                          analyzedFoodItemsWithQuantity
                                                              .carbohydrate,
                                                          'g',
                                                        ),
                                                  ),
                                                  DSKeyValueItem.medium(
                                                    title: '단백질',
                                                    description:
                                                        _formatValueWithUnit(
                                                          analyzedFoodItemsWithQuantity
                                                              .protein,
                                                          'g',
                                                        ),
                                                  ),
                                                  DSKeyValueItem.medium(
                                                    title: '지방',
                                                    description:
                                                        _formatValueWithUnit(
                                                          analyzedFoodItemsWithQuantity
                                                              .fat,
                                                          'g',
                                                        ),
                                                  ),
                                                  DSKeyValueItem.medium(
                                                    title: '당',
                                                    description:
                                                        _formatValueWithUnit(
                                                          analyzedFoodItemsWithQuantity
                                                              .sugar,
                                                          'g',
                                                        ),
                                                  ),
                                                  DSKeyValueItem.medium(
                                                    title: '나트륨',
                                                    description:
                                                        _formatValueWithUnit(
                                                          analyzedFoodItemsWithQuantity
                                                              .sodium,
                                                          'mg',
                                                        ),
                                                  ),
                                                ],
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                );
                              },
                            ),
                          ),
                        ),
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
