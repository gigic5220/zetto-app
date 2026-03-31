import 'package:flutter/material.dart';

import '../atomic/app_text_theme.dart';

@immutable
class AppSemanticTexts extends ThemeExtension<AppSemanticTexts> {
  const AppSemanticTexts({
    required this.titleXLSemiBold,
    required this.titleLSemiBold,
    required this.titleMSemiBold,
    required this.titleSSemiBold,
    required this.listTitleLSemiBold,
    required this.listTitleMSemiBold,
    required this.listTitleSSemiBold,
    required this.listTitleSMedium,
    required this.bodyXLRegular,
    required this.bodyXLMedium,
    required this.bodyLRegular,
    required this.bodyLMedium,
    required this.bodyMRegular,
    required this.bodyMMedium,
    required this.bodySRegular,
    required this.bodySMedium,
    required this.buttonXLSemiBold,
    required this.buttonLSemiBold,
    required this.buttonMSemiBold,
    required this.buttonSSemiBold,
    required this.labelLMedium,
    required this.labelMMedium,
    required this.labelSMedium,
  });

  final TextStyle titleXLSemiBold;
  final TextStyle titleLSemiBold;
  final TextStyle titleMSemiBold;
  final TextStyle titleSSemiBold;

  final TextStyle listTitleLSemiBold;
  final TextStyle listTitleMSemiBold;
  final TextStyle listTitleSSemiBold;
  final TextStyle listTitleSMedium;

  final TextStyle bodyXLRegular;
  final TextStyle bodyXLMedium;
  final TextStyle bodyLRegular;
  final TextStyle bodyLMedium;
  final TextStyle bodyMRegular;
  final TextStyle bodyMMedium;
  final TextStyle bodySRegular;
  final TextStyle bodySMedium;

  final TextStyle buttonXLSemiBold;
  final TextStyle buttonLSemiBold;
  final TextStyle buttonMSemiBold;
  final TextStyle buttonSSemiBold;

  final TextStyle labelLMedium;
  final TextStyle labelMMedium;
  final TextStyle labelSMedium;

  static const AppSemanticTexts textTheme = AppSemanticTexts(
    titleXLSemiBold: AppTextTheme.titleXLSemiBold,
    titleLSemiBold: AppTextTheme.titleLSemiBold,
    titleMSemiBold: AppTextTheme.titleMSemiBold,
    titleSSemiBold: AppTextTheme.titleSSemiBold,
    listTitleLSemiBold: AppTextTheme.listTitleXLSemiBold,
    listTitleMSemiBold: AppTextTheme.listTitleLSemiBold,
    listTitleSSemiBold: AppTextTheme.listTitleMSemiBold,
    listTitleSMedium: AppTextTheme.listTitleSMedium,
    bodyXLRegular: AppTextTheme.bodyXLRegular,
    bodyXLMedium: AppTextTheme.bodyXLMedium,
    bodyLRegular: AppTextTheme.bodyLRegular,
    bodyLMedium: AppTextTheme.bodyLMedium,
    bodyMRegular: AppTextTheme.bodyMRegular,
    bodyMMedium: AppTextTheme.bodyMMedium,
    bodySRegular: AppTextTheme.bodySRegular,
    bodySMedium: AppTextTheme.bodySMedium,
    buttonXLSemiBold: AppTextTheme.buttonXLSemiBold,
    buttonLSemiBold: AppTextTheme.buttonLSemiBold,
    buttonMSemiBold: AppTextTheme.buttonMSemiBold,
    buttonSSemiBold: AppTextTheme.buttonSSemiBold,
    labelLMedium: AppTextTheme.labelLMedium,
    labelMMedium: AppTextTheme.labelMMedium,
    labelSMedium: AppTextTheme.labelSMedium,
  );

  @override
  AppSemanticTexts copyWith({
    TextStyle? titleXLSemiBold,
    TextStyle? titleLSemiBold,
    TextStyle? titleMSemiBold,
    TextStyle? titleSSemiBold,
    TextStyle? listTitleLSemiBold,
    TextStyle? listTitleMSemiBold,
    TextStyle? listTitleSSemiBold,
    TextStyle? listTitleSMedium,
    TextStyle? bodyXLRegular,
    TextStyle? bodyXLMedium,
    TextStyle? bodyLRegular,
    TextStyle? bodyLMedium,
    TextStyle? bodyMRegular,
    TextStyle? bodyMMedium,
    TextStyle? bodySRegular,
    TextStyle? bodySMedium,
    TextStyle? buttonXLSemiBold,
    TextStyle? buttonLSemiBold,
    TextStyle? buttonMSemiBold,
    TextStyle? buttonSSemiBold,
    TextStyle? labelLMedium,
    TextStyle? labelMMedium,
    TextStyle? labelSMedium,
  }) {
    return AppSemanticTexts(
      titleXLSemiBold: titleXLSemiBold ?? this.titleXLSemiBold,
      titleLSemiBold: titleLSemiBold ?? this.titleLSemiBold,
      titleMSemiBold: titleMSemiBold ?? this.titleMSemiBold,
      titleSSemiBold: titleSSemiBold ?? this.titleSSemiBold,
      listTitleLSemiBold: listTitleLSemiBold ?? this.listTitleLSemiBold,
      listTitleMSemiBold: listTitleMSemiBold ?? this.listTitleMSemiBold,
      listTitleSSemiBold: listTitleSSemiBold ?? this.listTitleSSemiBold,
      listTitleSMedium: listTitleSMedium ?? this.listTitleSMedium,
      bodyXLRegular: bodyXLRegular ?? this.bodyXLRegular,
      bodyXLMedium: bodyXLMedium ?? this.bodyXLMedium,
      bodyLRegular: bodyLRegular ?? this.bodyLRegular,
      bodyLMedium: bodyLMedium ?? this.bodyLMedium,
      bodyMRegular: bodyMRegular ?? this.bodyMRegular,
      bodyMMedium: bodyMMedium ?? this.bodyMMedium,
      bodySRegular: bodySRegular ?? this.bodySRegular,
      bodySMedium: bodySMedium ?? this.bodySMedium,
      buttonXLSemiBold: buttonXLSemiBold ?? this.buttonXLSemiBold,
      buttonLSemiBold: buttonLSemiBold ?? this.buttonLSemiBold,
      buttonMSemiBold: buttonMSemiBold ?? this.buttonMSemiBold,
      buttonSSemiBold: buttonSSemiBold ?? this.buttonSSemiBold,
      labelLMedium: labelLMedium ?? this.labelLMedium,
      labelMMedium: labelMMedium ?? this.labelMMedium,
      labelSMedium: labelSMedium ?? this.labelSMedium,
    );
  }

  @override
  AppSemanticTexts lerp(ThemeExtension<AppSemanticTexts>? other, double t) {
    if (other is! AppSemanticTexts) {
      return this;
    }

    return AppSemanticTexts(
      titleXLSemiBold: TextStyle.lerp(titleXLSemiBold, other.titleXLSemiBold, t) ?? titleXLSemiBold,
      titleLSemiBold: TextStyle.lerp(titleLSemiBold, other.titleLSemiBold, t) ?? titleLSemiBold,
      titleMSemiBold: TextStyle.lerp(titleMSemiBold, other.titleMSemiBold, t) ?? titleMSemiBold,
      titleSSemiBold: TextStyle.lerp(titleSSemiBold, other.titleSSemiBold, t) ?? titleSSemiBold,
      listTitleLSemiBold: TextStyle.lerp(listTitleLSemiBold, other.listTitleLSemiBold, t) ?? listTitleLSemiBold,
      listTitleMSemiBold: TextStyle.lerp(listTitleMSemiBold, other.listTitleMSemiBold, t) ?? listTitleMSemiBold,
      listTitleSSemiBold: TextStyle.lerp(listTitleSSemiBold, other.listTitleSSemiBold, t) ?? listTitleSSemiBold,
      listTitleSMedium: TextStyle.lerp(listTitleSMedium, other.listTitleSMedium, t) ?? listTitleSMedium,
      bodyXLRegular: TextStyle.lerp(bodyXLRegular, other.bodyXLRegular, t) ?? bodyXLRegular,
      bodyXLMedium: TextStyle.lerp(bodyXLMedium, other.bodyXLMedium, t) ?? bodyXLMedium,
      bodyLRegular: TextStyle.lerp(bodyLRegular, other.bodyLRegular, t) ?? bodyLRegular,
      bodyLMedium: TextStyle.lerp(bodyLMedium, other.bodyLMedium, t) ?? bodyLMedium,
      bodyMRegular: TextStyle.lerp(bodyMRegular, other.bodyMRegular, t) ?? bodyMRegular,
      bodyMMedium: TextStyle.lerp(bodyMMedium, other.bodyMMedium, t) ?? bodyMMedium,
      bodySRegular: TextStyle.lerp(bodySRegular, other.bodySRegular, t) ?? bodySRegular,
      bodySMedium: TextStyle.lerp(bodySMedium, other.bodySMedium, t) ?? bodySMedium,
      buttonXLSemiBold: TextStyle.lerp(buttonXLSemiBold, other.buttonXLSemiBold, t) ?? buttonXLSemiBold,
      buttonLSemiBold: TextStyle.lerp(buttonLSemiBold, other.buttonLSemiBold, t) ?? buttonLSemiBold,
      buttonMSemiBold: TextStyle.lerp(buttonMSemiBold, other.buttonMSemiBold, t) ?? buttonMSemiBold,
      buttonSSemiBold: TextStyle.lerp(buttonSSemiBold, other.buttonSSemiBold, t) ?? buttonSSemiBold,
      labelLMedium: TextStyle.lerp(labelLMedium, other.labelLMedium, t) ?? labelLMedium,
      labelMMedium: TextStyle.lerp(labelMMedium, other.labelMMedium, t) ?? labelMMedium,
      labelSMedium: TextStyle.lerp(labelSMedium, other.labelSMedium, t) ?? labelSMedium,
    );
  }
}
