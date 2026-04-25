import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/feature/main/edit_food_photo/edit_food_photo_page.dart';
import 'package:tandangi/feature/main/home/home_page.dart';
import 'package:tandangi/feature/login/login_page.dart';
import 'package:tandangi/feature/main/main_page.dart';
import 'package:tandangi/feature/main/my/my_page.dart';
import 'package:tandangi/feature/main/report/report_page.dart';
import 'package:tandangi/feature/on_boarding/on_boarding_page.dart';
import 'package:tandangi/feature/shop/shop_page.dart';
import 'package:tandangi/feature/splash/splash_page.dart';
import 'package:tandangi/feature/web_view/web_view_page.dart';

part 'routes.g.dart';

@Riverpod(keepAlive: true)
GlobalKey<NavigatorState> rootNavigationKey(Ref ref) {
  return GlobalKey<NavigatorState>();
}

@Riverpod(keepAlive: true)
GlobalKey<NavigatorState> shellNavigationKey(Ref ref) {
  return GlobalKey<NavigatorState>();
}

@Riverpod(keepAlive: true)
class Router extends _$Router {
  @override
  GoRouter build() {
    return GoRouter(
      initialLocation: '/${SplashPage.routeName}',
      //initialLocation: '/${ShopPage.routeName}',
      observers: [TalkerRouteObserver(getIt<Talker>())],
      debugLogDiagnostics: true,
      overridePlatformDefaultLocation: true,
      navigatorKey: ref.watch(rootNavigationKeyProvider),
      refreshListenable: _GoRouterRefreshStream(
        FirebaseAuth.instance.authStateChanges(),
      ),
      redirect: (context, state) {
        final isLoggedIn = FirebaseAuth.instance.currentUser != null;
        final currentPath = state.matchedLocation;
        final isLoginRoute = currentPath == '/${LoginPage.routeName}';
        final isSplashRoute = currentPath == '/${SplashPage.routeName}';
        final isWebViewRoute = currentPath == '/${WebViewPage.routeName}';

        // 미로그인인데 로그인·스플래시 페이지가 아닌 곳 → 로그인으로
        if (!isLoggedIn && !isLoginRoute && !isSplashRoute && !isWebViewRoute) {
          return '/${LoginPage.routeName}';
        }

        // 그 외엔 현재 위치 유지
        return null;
      },
      routes: [
        GoRoute(
          name: SplashPage.routeName,
          path: '/${SplashPage.routeName}',
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const SplashPage(),
          ),
        ),
        GoRoute(
          name: LoginPage.routeName,
          path: '/${LoginPage.routeName}',
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const LoginPage(),
          ),
        ),
        GoRoute(
          name: OnBoardingPage.routeName,
          path: '/${OnBoardingPage.routeName}',
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const OnBoardingPage(),
          ),
        ),
        StatefulShellRoute.indexedStack(
          pageBuilder: (context, state, navigationShell) => NoTransitionPage(
            child: MainPage(navigationShell: navigationShell),
          ),
          branches: [
            StatefulShellBranch(
              navigatorKey: ref.watch(shellNavigationKeyProvider),
              routes: [
                GoRoute(
                  name: HomePage.routeName,
                  path: '/home',
                  pageBuilder: (context, state) =>
                      NoTransitionPage(child: HomePage()),
                ),
              ],
            ),
            // StatefulShellBranch(
            //   navigatorKey: ref.watch(shellNavigationKeyProvider),
            //   routes: [
            //     GoRoute(
            //       name: ReportPage.routeName,
            //       path: '/report',
            //       pageBuilder: (context, state) => NoTransitionPage(
            //         child: ReportPage(xFile: state.extra as XFile),
            //       ),
            //     ),
            //   ],
            // ),
            StatefulShellBranch(
              //navigatorKey: ref.watch(shellNavigationKeyProvider),
              routes: [
                GoRoute(
                  name: MyPage.routeName,
                  path: '/my',
                  pageBuilder: (context, state) =>
                      NoTransitionPage(child: MyPage()),
                ),
              ],
            ),
            // StatefulShellBranch(
            //   navigatorKey: ref.watch(shellNavigationKeyProvider),
            //   routes: [
            //     GoRoute(
            //       name: Tab1Page.routeName,
            //       path: '/tab1',
            //       pageBuilder: (context, state) =>
            //           NoTransitionPage(child: Tab1Page()),
            //     ),
            //   ],
            // ),
            // StatefulShellBranch(
            //   routes: [
            //     GoRoute(
            //       name: TestPage.routeName,
            //       path: '/tab2',
            //       pageBuilder: (context, state) =>
            //           NoTransitionPage(child: TestPage()),
            //     ),
            //   ],
            // ),
            // StatefulShellBranch(
            //   routes: [
            //     GoRoute(
            //       name: Tab3Page.routeName,
            //       path: '/tab3',
            //       pageBuilder: (context, state) =>
            //           NoTransitionPage(child: Tab3Page()),
            //     ),
            //   ],
            // ),
          ],
        ),
        GoRoute(
          name: EditFoodPhotoPage.routeName,
          path: '/${EditFoodPhotoPage.routeName}',
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: EditFoodPhotoPage(selectedPhoto: state.extra as Uint8List),
          ),
        ),
        GoRoute(
          name: ReportPage.routeName,
          path: '/${ReportPage.routeName}',
          pageBuilder: (context, state) {
            final extra = state.extra as Map<String, dynamic>;
            final croppedPhoto = extra['croppedPhoto'] as File;
            final includeWatermark = extra['includeWatermark'] as bool;
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: ReportPage(
                selectedPhoto: croppedPhoto,
                includeWatermark: includeWatermark,
              ),
            );
          },
        ),
        GoRoute(
          name: ShopPage.routeName,
          path: '/${ShopPage.routeName}',
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const ShopPage(),
          ),
        ),
        GoRoute(
          name: WebViewPage.routeName,
          path: '/${WebViewPage.routeName}',
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: WebViewPage(
              url: state.uri.queryParameters['url'] ?? '',
              title: state.uri.queryParameters['title'] ?? '',
            ),
          ),
        ),
      ],
    );
  }
}

class _GoRouterRefreshStream extends ChangeNotifier {
  _GoRouterRefreshStream(Stream<dynamic> stream) {
    Timer? debounce;
    stream.listen((_) {
      debounce?.cancel();
      debounce = Timer(const Duration(milliseconds: 300), notifyListeners);
    });
  }
}

Page<T> buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  bool fullscreenDialog = false,
}) {
  return CupertinoPage(
    child: child,
    name: state.name,
    fullscreenDialog: fullscreenDialog,
  );
}
