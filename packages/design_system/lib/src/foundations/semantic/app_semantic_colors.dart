import 'package:flutter/material.dart';

import '../atomic/app_colors.dart';

@immutable
class AppSemanticColors extends ThemeExtension<AppSemanticColors> {
  const AppSemanticColors({
    required this.brandPrimary,
    required this.brandSecondary,
    required this.brandStrong,
    required this.staticWhite,
    required this.staticBlack,
    required this.accentRed,
    required this.accentBlue,
    required this.bgPage,
    required this.bgSection,
    required this.bgCard,
    required this.bgInverse,
    required this.bgDimmed,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textDisabled,
    required this.textInverse,
    required this.textSuccess,
    required this.textWarning,
    required this.fillDefault,
    required this.fillSubtle,
    required this.fillStrong,
    required this.fillDisabled,
    required this.fillInverse,
    required this.fillInfo,
    required this.fillSuccess,
    required this.fillWarning,
    required this.borderDefault,
    required this.borderSubtle,
    required this.borderStrong,
    required this.borderDisabled,
    required this.borderInverse,
    required this.borderInfo,
    required this.borderSuccess,
    required this.borderWarning,
    required this.layerDefault,
    required this.layerSubtle,
    required this.layerStrong,
  });

  final Color brandPrimary;
  final Color brandSecondary;
  final Color brandStrong;

  final Color staticWhite;
  final Color staticBlack;

  final Color accentRed;
  final Color accentBlue;

  final Color bgPage;
  final Color bgSection;
  final Color bgCard;
  final Color bgInverse;
  final Color bgDimmed;

  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textDisabled;
  final Color textInverse;
  final Color textSuccess;
  final Color textWarning;

  final Color fillDefault;
  final Color fillSubtle;
  final Color fillStrong;
  final Color fillDisabled;
  final Color fillInverse;
  final Color fillInfo;
  final Color fillSuccess;
  final Color fillWarning;

  final Color borderDefault;
  final Color borderSubtle;
  final Color borderStrong;
  final Color borderDisabled;
  final Color borderInverse;
  final Color borderInfo;
  final Color borderSuccess;
  final Color borderWarning;

  final Color layerDefault;
  final Color layerSubtle;
  final Color layerStrong;

  static const AppSemanticColors light = AppSemanticColors(
    brandPrimary: AppColors.neutral15,
    brandSecondary: AppColors.neutral90,
    brandStrong: AppColors.neutral10,
    staticWhite: AppColors.neutral100,
    staticBlack: AppColors.neutral10,
    accentRed: AppColors.red50,
    accentBlue: AppColors.blue50,
    bgPage: AppColors.neutral100,
    bgSection: AppColors.neutral95,
    bgCard: AppColors.neutral100,
    bgInverse: AppColors.neutral10,
    bgDimmed: AppColors.opacity64,
    textPrimary: AppColors.neutral10,
    textSecondary: AppColors.neutral30,
    textTertiary: AppColors.neutral60,
    textDisabled: AppColors.neutral80,
    textInverse: AppColors.neutral100,
    textSuccess: AppColors.green50,
    textWarning: AppColors.red50,
    fillDefault: AppColors.neutral100,
    fillSubtle: AppColors.neutral90,
    fillStrong: AppColors.neutral80,
    fillDisabled: AppColors.neutral95,
    fillInverse: AppColors.neutral10,
    fillInfo: AppColors.blue90,
    fillSuccess: AppColors.green90,
    fillWarning: AppColors.red90,
    borderDefault: AppColors.neutral80,
    borderSubtle: AppColors.neutral90,
    borderStrong: AppColors.neutral60,
    borderDisabled: AppColors.neutral95,
    borderInverse: AppColors.neutral30,
    borderInfo: AppColors.blue80,
    borderSuccess: AppColors.green80,
    borderWarning: AppColors.red80,
    layerDefault: AppColors.opacity48,
    layerSubtle: AppColors.opacity32,
    layerStrong: AppColors.opacity64,
  );

  static const AppSemanticColors dark = AppSemanticColors(
    brandPrimary: AppColors.neutral80,
    brandSecondary: AppColors.neutral20,
    brandStrong: AppColors.navy100,
    staticWhite: AppColors.neutral100,
    staticBlack: AppColors.neutral10,
    accentRed: AppColors.red50,
    accentBlue: AppColors.blue70,
    bgPage: AppColors.neutral10,
    bgSection: AppColors.neutral15,
    bgCard: AppColors.neutral10,
    bgInverse: AppColors.neutral100,
    bgDimmed: AppColors.opacity72,
    textPrimary: AppColors.neutral100,
    textSecondary: AppColors.neutral70,
    textTertiary: AppColors.neutral60,
    textDisabled: AppColors.neutral30,
    textInverse: AppColors.neutral10,
    textSuccess: AppColors.green80,
    textWarning: AppColors.red80,
    fillDefault: AppColors.neutral10,
    fillSubtle: AppColors.neutral20,
    fillStrong: AppColors.neutral40,
    fillDisabled: AppColors.neutral15,
    fillInverse: AppColors.neutral100,
    fillInfo: AppColors.blue20,
    fillSuccess: AppColors.green20,
    fillWarning: AppColors.red20,
    borderDefault: AppColors.neutral30,
    borderSubtle: AppColors.neutral20,
    borderStrong: AppColors.neutral50,
    borderDisabled: AppColors.neutral20,
    borderInverse: AppColors.neutral80,
    borderInfo: AppColors.blue30,
    borderSuccess: AppColors.green30,
    borderWarning: AppColors.red30,
    layerDefault: AppColors.opacity64,
    layerSubtle: AppColors.opacity48,
    layerStrong: AppColors.opacity64,
  );

  @override
  AppSemanticColors copyWith({
    Color? brandPrimary,
    Color? brandSecondary,
    Color? brandStrong,
    Color? staticWhite,
    Color? staticBlack,
    Color? accentRed,
    Color? accentBlue,
    Color? bgPage,
    Color? bgSection,
    Color? bgCard,
    Color? bgCardAlt,
    Color? bgSubtle,
    Color? bgInverse,
    Color? bgDimmed,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? textDisabled,
    Color? textInverse,
    Color? textSuccess,
    Color? textWarning,
    Color? fillDefault,
    Color? fillSubtle,
    Color? fillStrong,
    Color? fillDisabled,
    Color? fillInverse,
    Color? fillInfo,
    Color? fillSuccess,
    Color? fillWarning,
    Color? borderDefault,
    Color? borderSubtle,
    Color? borderStrong,
    Color? borderDisabled,
    Color? borderInverse,
    Color? borderInfo,
    Color? borderSuccess,
    Color? borderWarning,
    Color? layerDefault,
    Color? layerSubtle,
    Color? layerStrong,
  }) {
    return AppSemanticColors(
      brandPrimary: brandPrimary ?? this.brandPrimary,
      brandSecondary: brandSecondary ?? this.brandSecondary,
      brandStrong: brandStrong ?? this.brandStrong,
      staticWhite: staticWhite ?? this.staticWhite,
      staticBlack: staticBlack ?? this.staticBlack,
      accentRed: accentRed ?? this.accentRed,
      accentBlue: accentBlue ?? this.accentBlue,
      bgPage: bgPage ?? this.bgPage,
      bgSection: bgSection ?? this.bgSection,
      bgCard: bgCard ?? this.bgCard,
      bgInverse: bgInverse ?? this.bgInverse,
      bgDimmed: bgDimmed ?? this.bgDimmed,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      textDisabled: textDisabled ?? this.textDisabled,
      textInverse: textInverse ?? this.textInverse,
      textSuccess: textSuccess ?? this.textSuccess,
      textWarning: textWarning ?? this.textWarning,
      fillDefault: fillDefault ?? this.fillDefault,
      fillSubtle: fillSubtle ?? this.fillSubtle,
      fillStrong: fillStrong ?? this.fillStrong,
      fillDisabled: fillDisabled ?? this.fillDisabled,
      fillInverse: fillInverse ?? this.fillInverse,
      fillInfo: fillInfo ?? this.fillInfo,
      fillSuccess: fillSuccess ?? this.fillSuccess,
      fillWarning: fillWarning ?? this.fillWarning,
      borderDefault: borderDefault ?? this.borderDefault,
      borderSubtle: borderSubtle ?? this.borderSubtle,
      borderStrong: borderStrong ?? this.borderStrong,
      borderDisabled: borderDisabled ?? this.borderDisabled,
      borderInverse: borderInverse ?? this.borderInverse,
      borderInfo: borderInfo ?? this.borderInfo,
      borderSuccess: borderSuccess ?? this.borderSuccess,
      borderWarning: borderWarning ?? this.borderWarning,
      layerDefault: layerDefault ?? this.layerDefault,
      layerSubtle: layerSubtle ?? this.layerSubtle,
      layerStrong: layerStrong ?? this.layerStrong,
    );
  }

  @override
  AppSemanticColors lerp(ThemeExtension<AppSemanticColors>? other, double t) {
    if (other is! AppSemanticColors) {
      return this;
    }

    return AppSemanticColors(
      brandPrimary: Color.lerp(brandPrimary, other.brandPrimary, t) ?? brandPrimary,
      brandSecondary: Color.lerp(brandSecondary, other.brandSecondary, t) ?? brandSecondary,
      brandStrong: Color.lerp(brandStrong, other.brandStrong, t) ?? brandStrong,
      staticWhite: Color.lerp(staticWhite, other.staticWhite, t) ?? staticWhite,
      staticBlack: Color.lerp(staticBlack, other.staticBlack, t) ?? staticBlack,
      accentRed: Color.lerp(accentRed, other.accentRed, t) ?? accentRed,
      accentBlue: Color.lerp(accentBlue, other.accentBlue, t) ?? accentBlue,
      bgPage: Color.lerp(bgPage, other.bgPage, t) ?? bgPage,
      bgSection: Color.lerp(bgSection, other.bgSection, t) ?? bgSection,
      bgCard: Color.lerp(bgCard, other.bgCard, t) ?? bgCard,
      bgInverse: Color.lerp(bgInverse, other.bgInverse, t) ?? bgInverse,
      bgDimmed: Color.lerp(bgDimmed, other.bgDimmed, t) ?? bgDimmed,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t) ?? textPrimary,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t) ?? textSecondary,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t) ?? textTertiary,
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t) ?? textDisabled,
      textInverse: Color.lerp(textInverse, other.textInverse, t) ?? textInverse,
      textSuccess: Color.lerp(textSuccess, other.textSuccess, t) ?? textSuccess,
      textWarning: Color.lerp(textWarning, other.textWarning, t) ?? textWarning,
      fillDefault: Color.lerp(fillDefault, other.fillDefault, t) ?? fillDefault,
      fillSubtle: Color.lerp(fillSubtle, other.fillSubtle, t) ?? fillSubtle,
      fillStrong: Color.lerp(fillStrong, other.fillStrong, t) ?? fillStrong,
      fillDisabled: Color.lerp(fillDisabled, other.fillDisabled, t) ?? fillDisabled,
      fillInverse: Color.lerp(fillInverse, other.fillInverse, t) ?? fillInverse,
      fillInfo: Color.lerp(fillInfo, other.fillInfo, t) ?? fillInfo,
      fillSuccess: Color.lerp(fillSuccess, other.fillSuccess, t) ?? fillSuccess,
      fillWarning: Color.lerp(fillWarning, other.fillWarning, t) ?? fillWarning,
      borderDefault: Color.lerp(borderDefault, other.borderDefault, t) ?? borderDefault,
      borderSubtle: Color.lerp(borderSubtle, other.borderSubtle, t) ?? borderSubtle,
      borderStrong: Color.lerp(borderStrong, other.borderStrong, t) ?? borderStrong,
      borderDisabled: Color.lerp(borderDisabled, other.borderDisabled, t) ?? borderDisabled,
      borderInverse: Color.lerp(borderInverse, other.borderInverse, t) ?? borderInverse,
      borderInfo: Color.lerp(borderInfo, other.borderInfo, t) ?? borderInfo,
      borderSuccess: Color.lerp(borderSuccess, other.borderSuccess, t) ?? borderSuccess,
      borderWarning: Color.lerp(borderWarning, other.borderWarning, t) ?? borderWarning,
      layerDefault: Color.lerp(layerDefault, other.layerDefault, t) ?? layerDefault,
      layerSubtle: Color.lerp(layerSubtle, other.layerSubtle, t) ?? layerSubtle,
      layerStrong: Color.lerp(layerStrong, other.layerStrong, t) ?? layerStrong,
    );
  }
}
