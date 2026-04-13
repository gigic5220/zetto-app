import 'package:tandangi/core/developer/plugins/user_info_plugin.dart';
import 'package:core_app/core/dev_tools.dart';
import 'package:core_app/core/theme/theme.dart';
import 'package:core_app/route/route.dart';
import 'package:design_system/responsive.dart';
import 'package:design_system/theme/theme.dart';
import 'package:tandangi/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'flavors.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  late final AppThemeModeNotifier _themeModeNotifier;

  @override
  void initState() {
    super.initState();
    _themeModeNotifier = AppThemeModeNotifier();
    _themeModeNotifier.load();

    GoRouterWatcher.instance.initialize(ref.read(routerProvider));
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSettings(
      child: AnimatedBuilder(
        animation: Listenable.merge([_themeModeNotifier]),
        builder: (context, _) => MaterialApp.router(
          title: FlavorInfo.appTitle,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: _themeModeNotifier.themeMode,
          builder: (context, child) {
            final ThemeData theme = Theme.of(context);
            final AppSemanticColors semantic =
                theme.extension<AppSemanticColors>() ??
                (theme.brightness == Brightness.dark
                    ? AppSemanticColors.dark
                    : AppSemanticColors.light);

            final bool isDark = theme.brightness == Brightness.dark;
            final Brightness iconBrightness = isDark
                ? Brightness.light
                : Brightness.dark;
            final Brightness statusBarBrightness = isDark
                ? Brightness.dark
                : Brightness.light;

            final SystemUiOverlayStyle overlayStyle = SystemUiOverlayStyle(
              statusBarColor: semantic.bgPage,
              statusBarIconBrightness: iconBrightness,
              statusBarBrightness: statusBarBrightness,
              systemNavigationBarColor: semantic.bgPage,
              systemNavigationBarDividerColor: semantic.borderSubtle,
              systemNavigationBarIconBrightness: iconBrightness,
            );

            return Overlay(
              initialEntries: [
                OverlayEntry(
                  builder: (context) => DevToolsOverlay(
                    navigatorKey: ref.read(rootNavigationKeyProvider),
                    initialShowDevTools: FlavorInfo.flavor == Flavor.dev,
                    plugins: [UserInfoPlugin()],
                    child: AnnotatedRegion<SystemUiOverlayStyle>(
                      value: overlayStyle,
                      child: Scaffold(body: child ?? const SizedBox.shrink()),
                    ),
                  ),
                ),
              ],
            );
          },
          routerConfig: ref.watch(routerProvider),
        ),
      ),
    );
  }
}
