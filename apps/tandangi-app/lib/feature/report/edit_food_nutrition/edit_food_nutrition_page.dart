import 'package:core_app/extensions/extension.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/components/organism.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/domain/entity/food_analysis_entity.dart';
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
                                              Row(
                                                spacing:
                                                    context.componentGap.medium,
                                                children: [
                                                  Expanded(
                                                    child: DSListTitle.mediumNormal(
                                                      title: analyzedFoodItemsWithQuantity
                                                          .foodAnalysisFoodEntity
                                                          .name,
                                                    ),
                                                  ),
                                                  Row(
                                                    spacing: context
                                                        .componentGap
                                                        .large,
                                                    children: [
                                                      DSIconSolidButton.xSmall(
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
                                                ],
                                              ),
                                              DSDivider(
                                                type: DSDividerType.line,
                                              ),
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
}
