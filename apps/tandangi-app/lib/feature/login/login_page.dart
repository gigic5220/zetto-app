import 'dart:io';

import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/ions.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 56),
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
                  borderRadius: BorderRadius.circular(999),
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
                      style: context.textTheme.buttonLSemiBold.copyWith(
                        color: context.semanticColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () async => await onPressedKakaoLoginButton(ref),
            ),
            const SizedBox(height: 8),
            if (Platform.isIOS) ...[
              AnimatedButton(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(
                      color: context.semanticColors.borderInverse,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      DSWrapper(
                        uri: Assets.svgs.logoApple,
                        view: WrapperView.fix20,
                      ),
                      Text(
                        'Apple로 계속하기',
                        style: context.textTheme.buttonLSemiBold.copyWith(
                          color: context.semanticColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () async => await onPressedAppleLoginButton(ref),
              ),
              const SizedBox(height: 8),
            ],
            AnimatedButton(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(
                    color: context.semanticColors.borderSubtle,
                  ),
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
                      style: context.textTheme.buttonLSemiBold.copyWith(
                        color: context.semanticColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () async => await onPressedGoogleLoginButton(ref),
            ),
            const SizedBox(height: 8),
            Text(
              '로그인함으로써 이용약관 및 개인정보처리방침에 동의합니다.',
              style: context.textTheme.labelSMedium.copyWith(
                color: context.semanticColors.textTertiary,
              ),
            ),
            DSTextAction.horizontal(
              isExpanded: false,
              buttons: [
                DSTextButton(
                  variant: DSTextButtonVariant.primary,
                  text: '이용약관',
                  onTap: () {
                    onTapTermsOfService(ref);
                  },
                ),
                DSTextButton(
                  variant: DSTextButtonVariant.primary,
                  text: '개인정보처리방침',
                  onTap: () {
                    onTapPrivacyPolicy(ref);
                  },
                ),
              ],
            ),
            CommonBottomPadding(),
          ],
        ),
      ),
    );
  }
}
