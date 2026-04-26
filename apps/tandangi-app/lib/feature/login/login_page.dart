import 'dart:async';

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
            const SizedBox(height: 8),
            _LoginButton(
              text: '카카오로 계속하기',
              backgroundColor: Color(0xFFFFE600),
              leadingUri: Assets.svgs.logoKakao,
              onTap: () async => await onPressedKakaoLoginButton(ref),
            ),
            const SizedBox(height: 8),
            if (true) ...[
              _LoginButton(
                text: 'Apple로 계속하기',
                leadingUri: Assets.svgs.logoApple,
                onTap: () async => await onPressedAppleLoginButton(ref),
                borderColor: context.semanticColors.borderInverse,
              ),
              const SizedBox(height: 8),
            ],
            _LoginButton(
              borderColor: context.semanticColors.borderSubtle,
              text: '구글로 계속하기',
              leadingUri: Assets.svgs.logoGoogle,
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

class _LoginButton extends StatefulWidget {
  const _LoginButton({
    required this.text,
    required this.leadingUri,
    required this.onTap,
    this.backgroundColor,
    this.borderColor,
  });

  final String text;
  final String leadingUri;
  final FutureOr<void> Function()? onTap;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  State<_LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<_LoginButton> {
  Completer<void>? completer;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    isLoading = !(completer == null || completer!.isCompleted);

    return AnimatedButton(
      onTap: !isLoading && widget.onTap != null
          ? () async {
              if (completer != null && !completer!.isCompleted) return;

              setState(() {
                completer = Completer();
              });

              try {
                await Future.wait<void>([
                  Future.sync(widget.onTap!),
                  Future.delayed(const Duration(milliseconds: 300)),
                ]);
              } catch (_) {
              } finally {
                if (!(completer?.isCompleted ?? true)) {
                  completer?.complete();
                }
                if (mounted) setState(() {});
              }
            }
          : null,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: .circular(999),
          color: widget.backgroundColor,
          border: widget.borderColor != null
              ? Border.all(
                  color: widget.borderColor!,
                  strokeAlign: BorderSide.strokeAlignOutside,
                )
              : null,
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: isLoading ? 0.0 : 1.0,
              child: Row(
                spacing: 8,
                mainAxisSize: .min,
                children: [
                  DSWrapper(uri: widget.leadingUri, view: WrapperView.fix20),
                  Text(
                    widget.text,
                    style: context.textTheme.buttonLSemiBold.copyWith(
                      color: context.semanticColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            if (isLoading)
              SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(
                  color: context.semanticColors.textPrimary,
                  strokeWidth: 3,
                  strokeCap: StrokeCap.round,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
