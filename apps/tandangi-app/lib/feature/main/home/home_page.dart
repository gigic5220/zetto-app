import 'dart:math' as math;

import 'package:core_app/components/async_widget.dart';
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
import 'package:tandangi/feature/main/home/controller/home_provider.dart';
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
      body: SingleChildScrollView(
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
                                  style: context.textTheme.bodyMMedium.copyWith(
                                    color: context.semanticColors.textPrimary,
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
                        Stack(
                          children: [
                            DSWrapper(
                              uri: userCharacterDetail.characterImageUrl,
                              view: WrapperView(size: 167, ratio: 167 / 213),
                            ),
                            Positioned(
                              top: 0,
                              right: 10,
                              child: Center(
                                child: DSSolidButton.small(
                                  text: '카메라',
                                  variant: DSSolidButtonVariant.primary,
                                  onTap: () {
                                    onTapFeedCharacter(
                                      context,
                                      source: ImageSource.camera,
                                    );
                                  },
                                  leadingUri: Assets.svgs.icCameraFill,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 50,
                              right: 10,
                              child: Center(
                                child: DSSolidButton.small(
                                  text: '앨범',
                                  variant: DSSolidButtonVariant.primary,
                                  onTap: () {
                                    onTapFeedCharacter(
                                      context,
                                      source: ImageSource.gallery,
                                    );
                                  },
                                  leadingUri: Assets.svgs.icCameraFill,
                                ),
                              ),
                            ),
                          ],
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
                  final todayNutritionSummary = watchTodayNutritionSummary(ref);
                  return AsyncWidget.combine2(
                    first: userCharacterDetail,
                    second: todayNutritionSummary,
                    builder: (userCharacterDetail, todayNutritionSummary) {
                      return Column(
                        children: [
                          DSViewTitle.large(
                            subTitle:
                                '오늘의 ${userCharacterDetail.userCharacter.characterName}',
                            title:
                                '${todayNutritionSummary.grade}등급 ${userCharacterDetail.userCharacter.characterOriginName}',
                            description:
                                '균형이 좋아요! 다만 탄수화물 비율이 조금 높아, 다음 식사는 단백질과 채소 위주로 가볍게 맞춰봐요',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: context.componentPadding.small,
                            ),
                            child: Column(
                              children: [
                                NutritionRingChart(
                                  nutritionType: NutritionType.carbohydrate,
                                  valueText: '16g',
                                  progress: 0.78,
                                  progressColor:
                                      context.semanticColors.chartCarbohydrate,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: context.componentGap.xLarge,
                                  children: [
                                    NutritionRingChart(
                                      nutritionType: NutritionType.protein,
                                      valueText: '16g',
                                      progress: 1.1,
                                      progressColor: context
                                          .semanticColors
                                          .chartCarbohydrate,
                                    ),
                                    NutritionRingChart(
                                      nutritionType: NutritionType.fat,
                                      valueText: '16g',
                                      progress: 0.78,
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
                                      color:
                                          context.semanticColors.borderSubtle,
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
                                        subTitle: '0g',
                                        titleBadge: DSTextBadge.small(
                                          text: '좋음',
                                          variant: DSTextBadgeVariant.success,
                                          type: DSTextBadgeType.circular,
                                        ),
                                        description: '최대 130g',
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
                                      color:
                                          context.semanticColors.borderWarning,
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
                                        subTitle: '0mg',
                                        titleBadge: DSTextBadge.small(
                                          text: '주의',
                                          variant: DSTextBadgeVariant.warning,
                                          type: DSTextBadgeType.circular,
                                        ),
                                        description: '최대 130g',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: context.componentGap.xxxLarge),
                          DSListTitle.mediumNormal(title: '오늘 먹었어요'),
                          DSEmptyArea(
                            type: .section,
                            title: '아직 먹인 음식이 없어요',
                            description: '밥을 먹이면 탄단지 그래프가 채워져요',
                          ),
                          DSBanner.normal(
                            listItemWidget: DSListItem.small(
                              leadingWidget: DSWrapper(
                                uri: Assets.images.avocado.path,
                                view: WrapperView.fix52,
                              ),
                              variant: .normal,
                              title: '고등어구이와 동그랑땡',
                              description: '탄 12g | 단 12g | 지 23g',
                              trailingText: '13시간전',
                            ),
                          ),
                          DSBanner.normal(
                            listItemWidget: DSListItem.small(
                              leadingWidget: DSWrapper(
                                uri: Assets.images.avocado.path,
                                view: WrapperView.fix52,
                              ),
                              variant: .normal,
                              title: '고등어구이와 동그랑땡',
                              description: '탄 12g | 단 12g | 지 23g',
                              trailingText: '13시간전',
                            ),
                          ),
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

  final NutritionType nutritionType;
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
      NutritionType.carbohydrate => context.semanticColors.chartCarbohydrate,
      NutritionType.protein => context.semanticColors.chartProtein,
      NutritionType.fat => context.semanticColors.chartFat,
      _ => throw UnimplementedError(),
    };

    progressColor = isOverLimit
        ? context.semanticColors.chartWarning
        : progressColor;

    final String imagePath = switch (nutritionType) {
      NutritionType.carbohydrate => Assets.images.sweetPotato.path,
      NutritionType.protein => Assets.images.egg.path,
      NutritionType.fat => Assets.images.avocado.path,
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
                      NutritionType.carbohydrate => '탄수화물',
                      NutritionType.protein => '단백질',
                      NutritionType.fat => '지방',
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

    const startAngle = -math.pi / 2; // 12시 방향 시작
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
