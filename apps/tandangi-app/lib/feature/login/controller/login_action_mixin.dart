part of 'login_provider.dart';

mixin LoginActionMixin {
  Future<void> onPressedGoogleLoginButton(WidgetRef ref) async {
    final GoogleSignInAccount account = await GoogleSignIn.instance
        .authenticate();

    final String? googleIdToken = account.authentication.idToken;
    if (googleIdToken == null) {
      throw Exception(
        'Google idToken is null. (Firebase 콘솔 Google Provider / SHA-1 / 설정 확인)',
      );
    }

    final credential = GoogleAuthProvider.credential(idToken: googleIdToken);

    await FirebaseAuth.instance.signInWithCredential(credential);

    final userRepository = getIt<UserRepository>();
    await userRepository.postMe();
    final user = await userRepository.getMe();
    ref.read(meProvider.notifier).set(user);
    _navigateAfterLogin(ref, user.onboardingCompleted);
  }

  Future<void> onPressedKakaoLoginButton(WidgetRef ref) async {
    kakao.OAuthToken token;

    // 카카오톡 앱이 설치된 경우 앱 로그인 시도, 실패 시 웹 로그인으로 폴백
    if (await kakao.isKakaoTalkInstalled()) {
      try {
        token = await kakao.UserApi.instance.loginWithKakaoTalk();
      } catch (_) {
        token = await kakao.UserApi.instance.loginWithKakaoAccount();
      }
    } else {
      token = await kakao.UserApi.instance.loginWithKakaoAccount();
    }

    // 서버에서 카카오 액세스 토큰으로 Firebase Custom Token 발급
    final customToken = await getIt<AuthRepository>()
        .getFirebaseCustomTokenByKakao(token.accessToken);

    // Firebase Custom Token으로 로그인
    await FirebaseAuth.instance.signInWithCustomToken(customToken);

    final userRepository = getIt<UserRepository>();
    await userRepository.postMe();
    final user = await userRepository.getMe();
    ref.read(meProvider.notifier).set(user);
    _navigateAfterLogin(ref, user.onboardingCompleted);
  }

  Future<void> onPressedAppleLoginButton(WidgetRef ref) async {
    final rawNonce = _generateNonce();
    final nonce = _sha256ofString(rawNonce);

    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    final identityToken = appleCredential.identityToken;
    if (identityToken == null) {
      throw Exception('Apple identityToken is null');
    }

    final oauthCredential = OAuthProvider('apple.com').credential(
      idToken: identityToken,
      rawNonce: rawNonce,
      accessToken: appleCredential.authorizationCode,
    );

    await FirebaseAuth.instance.signInWithCredential(oauthCredential);

    final userRepository = getIt<UserRepository>();
    await userRepository.postMe();
    final user = await userRepository.getMe();
    ref.read(meProvider.notifier).set(user);
    _navigateAfterLogin(ref, user.onboardingCompleted);
  }

  String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }

  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  void _navigateAfterLogin(WidgetRef ref, bool onboardingCompleted) {
    if (!ref.context.mounted) return;
    if (onboardingCompleted) {
      ref.context.goNamed(HomePage.routeName);
    } else {
      ref.context.goNamed(OnBoardingPage.routeName);
    }
  }

  void onTapTermsOfService(WidgetRef ref) {
    ref.context.pushNamed(
      WebViewPage.routeName,
      queryParameters: {'url': FlavorInfo.termsUrl, 'title': '이용약관'},
    );
  }

  void onTapPrivacyPolicy(WidgetRef ref) {
    ref.context.pushNamed(
      WebViewPage.routeName,
      queryParameters: {
        'url': FlavorInfo.privacyPolicyUrl,
        'title': '개인정보 처리방침',
      },
    );
  }
}
