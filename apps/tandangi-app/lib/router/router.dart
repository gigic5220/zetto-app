import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/feature/login/login_page.dart';
import 'package:tandangi/feature/on_boarding/on_boarding_page.dart';
import 'package:tandangi/feature/splash/splash_page.dart';
import 'package:tandangi/feature/web_view/web_view_page.dart';
import 'package:tandangi/feature/home/main_page.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  observers: [TalkerRouteObserver(getIt<Talker>())],
  // 앱 시작은 항상 SplashPage → 거기서 로그인/온보딩/홈 분기
  initialLocation: '/${SplashPage.routeName}',
  refreshListenable: _GoRouterRefreshStream(
    FirebaseAuth.instance.authStateChanges(),
  ),
  redirect: (context, state) {
    final isLoggedIn = FirebaseAuth.instance.currentUser != null;
    final currentPath = state.matchedLocation;
    final isLoginRoute = currentPath == '/${LoginPage.routeName}';
    final isSplashRoute = currentPath == '/${SplashPage.routeName}';

    // 미로그인인데 로그인·스플래시 페이지가 아닌 곳 → 로그인으로
    if (!isLoggedIn && !isLoginRoute && !isSplashRoute) {
      return '/${LoginPage.routeName}';
    }

    // 그 외엔 현재 위치 유지
    return null;
  },
  routes: <RouteBase>[
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
    GoRoute(
      name: HomePage.routeName,
      path: '/${HomePage.routeName}',
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const HomePage(),
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

class _GoRouterRefreshStream extends ChangeNotifier {
  _GoRouterRefreshStream(Stream<dynamic> stream) {
    Timer? _debounce;
    stream.listen((_) {
      _debounce?.cancel();
      _debounce = Timer(const Duration(milliseconds: 300), notifyListeners);
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
