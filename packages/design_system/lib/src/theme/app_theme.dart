import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../foundations/semantic/app_semantic_colors.dart';
import '../foundations/atomic/app_colors.dart';
import '../foundations/component/app_component_colors.dart';
import '../foundations/semantic/app_semantic_texts.dart';

abstract final class AppTheme {
  static ThemeData get light => _buildTheme(
    brightness: Brightness.light,
    semanticColors: AppSemanticColors.light,
    componentColors: AppComponentColors.light,
    textTheme: AppSemanticTexts.textTheme,
  );

  static ThemeData get dark => _buildTheme(
    brightness: Brightness.dark,
    semanticColors: AppSemanticColors.dark,
    componentColors: AppComponentColors.dark,
    textTheme: AppSemanticTexts.textTheme,
  );

  static ThemeData _buildTheme({
    required Brightness brightness,
    required AppSemanticColors semanticColors,
    required AppComponentColors componentColors,
    required AppSemanticTexts textTheme,
  }) {
    final ColorScheme baseScheme = ColorScheme.fromSeed(seedColor: semanticColors.brandPrimary, brightness: brightness);

    final Color errorColor = brightness == Brightness.light ? AppColors.red50 : AppColors.red70;
    final Color onErrorColor = brightness == Brightness.light ? AppColors.neutral100 : AppColors.neutral10;

    final ColorScheme scheme = baseScheme.copyWith(
      primary: semanticColors.brandPrimary,
      onPrimary: semanticColors.textInverse,
      secondary: semanticColors.textSuccess,
      onSecondary: semanticColors.textInverse,
      error: errorColor,
      onError: onErrorColor,
      surface: semanticColors.bgPage,
      onSurface: semanticColors.textPrimary,
      outline: semanticColors.borderDefault,
    );

    final SystemUiOverlayStyle systemUiOverlayStyle = _systemUiOverlayStyle(
      brightness: brightness,
      semanticColors: semanticColors,
    );

    return ThemeData(
      fontFamily: 'Pretendard',
      useMaterial3: true,
      brightness: brightness,
      scaffoldBackgroundColor: semanticColors.bgPage,
      colorScheme: scheme,
      appBarTheme: AppBarTheme(
        backgroundColor: semanticColors.bgPage,
        foregroundColor: semanticColors.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: semanticColors.textPrimary),
        actionsIconTheme: IconThemeData(color: semanticColors.textPrimary),
        titleTextStyle: TextStyle(color: semanticColors.textPrimary, fontSize: 20, fontWeight: FontWeight.w600),
        systemOverlayStyle: systemUiOverlayStyle,
      ),
      tabBarTheme: TabBarThemeData(
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      dividerColor: semanticColors.borderSubtle,
      disabledColor: semanticColors.textDisabled,
      splashFactory: NoSplash.splashFactory,
      extensions: <ThemeExtension<dynamic>>[semanticColors, componentColors, textTheme],
    );
  }

  static SystemUiOverlayStyle _systemUiOverlayStyle({
    required Brightness brightness,
    required AppSemanticColors semanticColors,
  }) {
    final bool isDark = brightness == Brightness.dark;
    final Brightness iconBrightness = isDark ? Brightness.light : Brightness.dark;
    final Brightness statusBarBrightness = isDark ? Brightness.dark : Brightness.light;

    return SystemUiOverlayStyle(
      statusBarColor: semanticColors.bgPage,
      statusBarIconBrightness: iconBrightness,
      statusBarBrightness: statusBarBrightness,
      systemNavigationBarColor: semanticColors.bgPage,
      systemNavigationBarDividerColor: semanticColors.borderSubtle,
      systemNavigationBarIconBrightness: iconBrightness,
    );
  }
}
