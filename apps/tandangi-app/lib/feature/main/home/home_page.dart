import 'package:core_app/components/async_widget.dart';
import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/ions.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/extenstion.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tandangi/feature/main/home/controller/home_provider.dart';
import 'package:tandangi/feature/select_food_photo/select_food_photo_page.dart';
import 'package:tandangi/feature/shop/shop_page.dart';
import 'package:tandangi/gen/assets.gen.dart';

Future<void> signOut() async {
  await FirebaseAuth.instance.signOut();
  await GoogleSignIn.instance.signOut();
}

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  static const String routeName = 'home';

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with HomeStateMixin, HomeActionMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DSAppBar.logo(
        logoUri: 'assets/images/logo.png',
        actionWidgetList: [
          DSSolidButton.medium(
            text: '테스트',
            onTap: () {
              context.pushNamed(ShopPage.routeName);
            },
            variant: .primary,
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
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
                                      color: context.semanticColors.fillSubtle,
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
                    final todayNutritionSummary = watchTodayNutritionSummary(
                      ref,
                    );
                    return AsyncWidget.combine2(
                      first: userCharacterDetail,
                      second: todayNutritionSummary,
                      builder: (userCharacterDetail, todayNutritionSummary) {
                        return Column(
                          children: [
                            DSViewTitle.large(
                              title:
                                  '오늘의 ${userCharacterDetail.userCharacter.characterName}',
                            ),
                            Row(
                              spacing: context.componentGap.medium,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: context.componentPadding.xxLarge,
                                    horizontal: context.componentPadding.xLarge,
                                  ),
                                  decoration: BoxDecoration(
                                    color: context.semanticColors.bgCard,
                                    borderRadius: BorderRadius.circular(
                                      context.componentRadius.xLarge,
                                    ),
                                  ),
                                  child: Column(
                                    spacing: context.componentGap.medium,
                                    children: [
                                      Row(
                                        spacing: 4,
                                        children: [
                                          Text(
                                            '탄단지 점수',
                                            style: context.textTheme.bodyLMedium
                                                .copyWith(
                                                  color: context
                                                      .semanticColors
                                                      .textTertiary,
                                                ),
                                          ),
                                          Text(
                                            '100점',
                                            style: context.textTheme.bodyMMedium
                                                .copyWith(
                                                  color: context
                                                      .semanticColors
                                                      .textPrimary,
                                                ),
                                          ),
                                          DSWrapper(
                                            uri: Assets.svgs.icQuestionFill,
                                            view: WrapperView.fix12,
                                            svgColor: context
                                                .semanticColors
                                                .textTertiary,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        spacing: 8,
                                        children: [
                                          _buildNutritionBar(),
                                          _buildNutritionBar(),
                                          _buildNutritionBar(),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical:
                                          context.componentPadding.xxLarge,
                                      horizontal:
                                          context.componentPadding.xLarge,
                                    ),
                                    decoration: BoxDecoration(
                                      color: context.semanticColors.bgCard,
                                      borderRadius: BorderRadius.circular(
                                        context.componentRadius.xLarge,
                                      ),
                                    ),
                                    child: Column(
                                      spacing: context.componentGap.medium,
                                      children: [
                                        Row(
                                          spacing: 4,
                                          children: [
                                            Text(
                                              '단짠 점수',
                                              style: context
                                                  .textTheme
                                                  .bodyLMedium
                                                  .copyWith(
                                                    color: context
                                                        .semanticColors
                                                        .textTertiary,
                                                  ),
                                            ),
                                            Text(
                                              '23점',
                                              style: context
                                                  .textTheme
                                                  .bodyMMedium
                                                  .copyWith(
                                                    color: context
                                                        .semanticColors
                                                        .textPrimary,
                                                  ),
                                            ),
                                            DSWrapper(
                                              uri: Assets.svgs.icQuestionFill,
                                              view: WrapperView.fix12,
                                              svgColor: context
                                                  .semanticColors
                                                  .textTertiary,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          spacing: 8,
                                          children: [
                                            _buildNutritionBar(),
                                            _buildNutritionBar(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Consumer(
              builder: (context, ref, child) {
                final userCharacterDetail = watchUserCharacterDetail(ref);
                return AsyncWidget(
                  asyncValue: userCharacterDetail,
                  builder: (userCharacterDetail) {
                    return DSAction.horizontal(
                      isExpanded: false,
                      buttons: [
                        DSSolidButton.medium(
                          text:
                              '${userCharacterDetail.userCharacter.characterName} 밥 먹이기',
                          variant: DSSolidButtonVariant.primary,
                          onTap: () {
                            context.pushNamed(SelectFoodPhotoPage.routeName);
                          },
                          leadingUri: Assets.svgs.icCameraFill,
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNutritionBar() {
    return Row(
      spacing: 8,
      children: [
        Column(
          spacing: 8,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 12,
                  height: 52,
                  decoration: BoxDecoration(
                    color: context.semanticColors.fillSubtle,
                    borderRadius: BorderRadius.circular(
                      context.componentRadius.xxSmall,
                    ),
                  ),
                ),
                Container(
                  width: 12,
                  height: 52 * 0.8,
                  decoration: BoxDecoration(
                    color: context.semanticColors.textSuccess,
                    borderRadius: BorderRadius.circular(
                      context.componentRadius.xxSmall,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '탄수화물',
                  style: context.textTheme.bodySRegular.copyWith(
                    color: context.semanticColors.textTertiary,
                  ),
                ),
                Text(
                  '300g',
                  style: context.textTheme.bodyLMedium.copyWith(
                    color: context.semanticColors.textPrimary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
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
