import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../responsive/responsive_type.dart';
import '../atomic/app_sizes.dart';

class DsComponentGap {
  factory DsComponentGap({required AppResponsiveType type}) => switch (type) {
    AppResponsiveType.mobile => mobile,
    AppResponsiveType.tablet => tablet,
    AppResponsiveType.desktop => desktop,
  };
  const DsComponentGap._({
    required this.xxxSmall,
    required this.xxSmall,
    required this.xSmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.xLarge,
    required this.xxLarge,
    required this.xxxLarge,
    required this.max,
  });

  static const DsComponentGap mobile = DsComponentGap._(
    xxxSmall: AppSizes.base2,
    xxSmall: AppSizes.base4,
    xSmall: AppSizes.base6,
    small: AppSizes.base8,
    medium: AppSizes.base12,
    large: AppSizes.base16,
    xLarge: AppSizes.base20,
    xxLarge: AppSizes.base24,
    xxxLarge: AppSizes.base32,
    max: AppSizes.base64,
  );

  static const DsComponentGap tablet = DsComponentGap._(
    xxxSmall: AppSizes.base2,
    xxSmall: AppSizes.base4,
    xSmall: AppSizes.base6,
    small: AppSizes.base8,
    medium: AppSizes.base12,
    large: AppSizes.base16,
    xLarge: AppSizes.base20,
    xxLarge: AppSizes.base24,
    xxxLarge: AppSizes.base32,
    max: AppSizes.base64,
  );

  static const DsComponentGap desktop = DsComponentGap._(
    xxxSmall: AppSizes.base2,
    xxSmall: AppSizes.base4,
    xSmall: AppSizes.base6,
    small: AppSizes.base8,
    medium: AppSizes.base12,
    large: AppSizes.base16,
    xLarge: AppSizes.base20,
    xxLarge: AppSizes.base24,
    xxxLarge: AppSizes.base32,
    max: AppSizes.base64,
  );

  final double xxxSmall;
  final double xxSmall;
  final double xSmall;
  final double small;
  final double medium;
  final double large;
  final double xLarge;
  final double xxLarge;
  final double xxxLarge;
  final double max;

  static DsComponentGap of(BuildContext context) => DsComponentGap(type: context.responsiveType);
}
