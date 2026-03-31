import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/design_system/color/semantic/colors.dart';
import 'package:tandangi/design_system/components/atoms/animated_button.dart';
import 'package:tandangi/design_system/components/ions/ds_wrapper.dart';
import 'package:tandangi/design_system/components/molecule/ds_app_bar.dart';
import 'package:tandangi/design_system/theme/theme_extensions.dart';
import 'package:tandangi/design_system/typography/app_typography.dart';
import 'package:tandangi/feature/components/common_bottom_padding.dart';
import 'package:tandangi/feature/login/controller/login_provider.dart';
import 'package:tandangi/gen/assets.gen.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  static const String routeName = 'login';

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage>
    with LoginActionMixin, LoginStateMixin {
  late final TapGestureRecognizer termsOfServiceRecognizer;
  late final TapGestureRecognizer privacyPolicyRecognizer;

  @override
  void initState() {
    super.initState();
    termsOfServiceRecognizer = TapGestureRecognizer()
      ..onTap = () {
        onTapTermsOfService(ref);
      };
    privacyPolicyRecognizer = TapGestureRecognizer()
      ..onTap = () {
        onTapPrivacyPolicy(ref);
      };
  }

  @override
  void dispose() {
    termsOfServiceRecognizer.dispose();
    privacyPolicyRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DSAppBar.title(
        text: '로그인',
        actionWidgets: [
          IconButton(
            onPressed: () {},
            icon: DSWrapper(
              uri: Assets.svgs.circleQuestionMarkBubble,
              view: WrapperView.fix24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: DSWrapper(
                uri: Assets.images.logo.path,
                view: WrapperView(size: 127, ratio: 127 / 42),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: DSWrapper(
                uri: Assets.images.logoText.path,
                view: WrapperView(size: 128, ratio: 128 / 42),
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: DSWrapper(
                uri: Assets.images.logoSubText.path,
                view: WrapperView(size: 166, ratio: 166 / 52),
              ),
            ),
            const Spacer(),
            AnimatedButton(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFE600),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    DSWrapper(
                      uri: Assets.svgs.logoKakao,
                      view: WrapperView.fix20,
                    ),
                    Text(
                      '카카오로 계속하기',
                      style: AppTypography.buttonM.copyWith(
                        color: SemanticColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () async => await onPressedKakaoLoginButton(ref),
            ),
            const SizedBox(height: 8),
            AnimatedButton(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: SemanticColors.borderSubtle),
                ),
                padding: const EdgeInsets.symmetric(vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    DSWrapper(
                      uri: Assets.svgs.logoGoogle,
                      view: WrapperView.fix20,
                    ),
                    Text(
                      '구글로 계속하기',
                      style: AppTypography.buttonM.copyWith(
                        color: SemanticColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () async => await onPressedGoogleLoginButton(ref),
            ),
            if (Platform.isIOS) ...[
              const SizedBox(height: 8),
              AnimatedButton(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: SemanticColors.borderSubtle),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  child: Row(
                    spacing: 8,
                    children: [
                      DSWrapper(
                        uri: Assets.svgs.logoGoogle,
                        view: WrapperView.fix20,
                      ),
                      Text(
                        '애플로 계속하기',
                        style: AppTypography.buttonM.copyWith(
                          color: SemanticColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () async => await onPressedAppleLoginButton(ref),
              ),
            ],
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                style: AppTypography.labelS.withColor(
                  SemanticColors.textTertiary,
                ),
                children: [
                  const TextSpan(text: '로그인함으로써 '),
                  TextSpan(
                    text: 'Tandangi 이용약관',
                    style: AppTypography.labelS.copyWith(
                      color: SemanticColors.textTertiary,
                      decoration: TextDecoration.underline,
                      decorationColor: SemanticColors.textTertiary,
                    ),
                    recognizer: termsOfServiceRecognizer,
                  ),
                  const TextSpan(text: ' 및\n'),
                  TextSpan(
                    text: '개인정보처리방침',
                    style: AppTypography.labelS.copyWith(
                      color: SemanticColors.textTertiary,
                      decoration: TextDecoration.underline,
                      decorationColor: SemanticColors.textTertiary,
                    ),
                    recognizer: privacyPolicyRecognizer,
                  ),
                  const TextSpan(text: '에 동의합니다.'),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            CommonBottomPadding(),
          ],
        ),
      ),
    );
  }
}
