import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../responsive/responsive_type.dart';
import '../atomic/app_sizes.dart';

class DsComponentRadius {
  factory DsComponentRadius({required AppResponsiveType type}) => switch (type) {
    AppResponsiveType.mobile => mobile,
    AppResponsiveType.tablet => tablet,
    AppResponsiveType.desktop => desktop,
  };
  const DsComponentRadius._({
    required this.xxSmall,
    required this.xSmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.xLarge,
    required this.xxLarge,
    required this.max,
  });

  static const DsComponentRadius mobile = DsComponentRadius._(
    xxSmall: AppSizes.base4,
    xSmall: AppSizes.base6,
    small: AppSizes.base8,
    medium: AppSizes.base10,
    large: AppSizes.base12,
    xLarge: AppSizes.base16,
    xxLarge: AppSizes.base20,
    max: AppSizes.base999,
  );

  static const DsComponentRadius tablet = DsComponentRadius._(
    xxSmall: AppSizes.base4,
    xSmall: AppSizes.base6,
    small: AppSizes.base8,
    medium: AppSizes.base10,
    large: AppSizes.base12,
    xLarge: AppSizes.base16,
    xxLarge: AppSizes.base20,
    max: AppSizes.base999,
  );

  static const DsComponentRadius desktop = DsComponentRadius._(
    xxSmall: AppSizes.base4,
    xSmall: AppSizes.base6,
    small: AppSizes.base8,
    medium: AppSizes.base10,
    large: AppSizes.base12,
    xLarge: AppSizes.base16,
    xxLarge: AppSizes.base20,
    max: AppSizes.base999,
  );

  final double xxSmall;
  final double xSmall;
  final double small;
  final double medium;
  final double large;
  final double xLarge;
  final double xxLarge;
  final double max;

  static DsComponentRadius of(BuildContext context) => DsComponentRadius(type: context.responsiveType);
}
