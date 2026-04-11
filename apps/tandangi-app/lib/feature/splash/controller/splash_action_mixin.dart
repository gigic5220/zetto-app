import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart' hide ButtonStyle;
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/entity/app_version_entity.dart';
import 'package:tandangi/domain/repository/app_version_repository.dart';
import 'package:tandangi/domain/repository/user_repository.dart';
import 'package:tandangi/feature/controller/common_provider.dart';
import 'package:tandangi/feature/login/login_page.dart';
import 'package:tandangi/feature/on_boarding/on_boarding_page.dart';
import 'package:tandangi/feature/main/home/home_page.dart';
import 'package:tandangi/util/extension/string_extension.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:version/version.dart';

mixin SplashActionMixin {
  Future<AppVersionEntity> _getAppVersion() async {
    final appVersion = await getIt<AppVersionRepository>().getAppVersion();
    return appVersion;
  }

  void _handleMessage(RemoteMessage message) {
    if (message.data['type'] == 'chat') {}
  }

  Future<void> onInit(WidgetRef ref) async {
    FlutterNativeSplash.remove();

    try {
      RemoteMessage? initialMessage = await FirebaseMessaging.instance
          .getInitialMessage();

      // If the message also contains a data property with a "type" of "chat",
      // navigate to a chat screen
      if (initialMessage != null) {
        _handleMessage(initialMessage);
      }

      // Also handle any interaction when the app is in the background using a
      // Stream listener
      FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);

      final results = await Future.wait<dynamic>([
        _getInitialLocation(ref),
        _checkAppVersion(ref),
      ]);

      final initialLocation = results[0] as String?;

      if (!ref.context.mounted) return;

      if (initialLocation.isExist) {
        ref.context.replaceNamed(initialLocation!);
      }
    } catch (_) {
      await _signOutAndClear(ref);
      if (!ref.context.mounted) return;
      ref.context.replaceNamed(LoginPage.routeName);
    }
  }

  Future<String?> _getInitialLocation(WidgetRef ref) async {
    try {
      final user = await ref.read(meProvider.future);

      if (user == null) {
        await _signOutAndClear(ref);
        return LoginPage.routeName;
      }

      if (user.onboardingCompleted) {
        return HomePage.routeName;
      } else {
        return OnBoardingPage.routeName;
      }
    } catch (_) {
      await _signOutAndClear(ref);
      return LoginPage.routeName;
    }
  }

  Future<void> _signOutAndClear(WidgetRef ref) async {
    await FirebaseAuth.instance.signOut();
    ref.read(meProvider.notifier).set(null);
  }

  Future<void> _checkAppVersion(WidgetRef ref) async {
    final appVersion = await _getAppVersion();

    final version = await PackageInfo.fromPlatform();
    final currentVersion = Version.parse(version.version);
    final latestVersion = Version.parse(appVersion.minimumVersion);

    if (!ref.context.mounted) return;

    if (currentVersion < latestVersion) {
      final update =
          await showDialog<bool?>(
            context: ref.context,
            barrierDismissible: false,
            builder: (context) {
              return Container();
              // return PopScope(
              //   child: DSmo(
              //     title: '업데이트가 필요합니다',
              //     description: '앱 설치 페이지로 이동합니다',
              //     callToActionWidget: DSCallToAction.horizontal(
              //       buttons: [
              //         DSSolidButton.large(
              //           variant: DSSolidButtonVariant.primary,
              //           text: '확인',
              //           onTap: () {
              //             context.pop();
              //             _launchStoreDetailPage();
              //             appClose();
              //           },
              //         ),
              //       ],
              //     ),
              //   ),
              // );
            },
          ) ??
          false;
      if (update) {
        await _launchStoreDetailPage();
        appClose();
      } else {
        appClose();
      }
    }
  }

  void appClose() {
    if (Platform.isAndroid) {
      SystemNavigator.pop();
    } else {
      exit(0);
    }
  }

  Future<void> _launchStoreDetailPage() async {
    late String storeLink;
    late String storeWebLink;

    if (Platform.isAndroid) {
      storeLink = 'market://details?id=com.closerai.yoonseul';
      storeWebLink =
          'https://play.google.com/store/apps/details?id=com.closerai.yoonseul';
    } else {
      storeLink = 'itms-apps://itunes.apple.com/app/id6754550381';
      storeWebLink = 'https://itunes.apple.com/kr/app/apple-store/id6754550381';
    }

    if (await canLaunchUrlString(storeLink)) {
      await launchUrlString(storeLink);
    } else {
      await launchUrlString(storeWebLink, mode: LaunchMode.externalApplication);
    }
  }

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
    final user = await getIt<UserRepository>().getMe();
    ref.read(meProvider.notifier).set(user);
  }
}
