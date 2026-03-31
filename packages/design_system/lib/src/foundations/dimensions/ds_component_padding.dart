import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../responsive/responsive_type.dart';
import '../atomic/app_sizes.dart';

class DsComponentPadding {
  factory DsComponentPadding({required AppResponsiveType type}) => switch (type) {
    AppResponsiveType.mobile => mobile,
    AppResponsiveType.tablet => tablet,
    AppResponsiveType.desktop => desktop,
  };
  const DsComponentPadding._({
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

  static const DsComponentPadding mobile = DsComponentPadding._(
    xxSmall: AppSizes.base2,
    xSmall: AppSizes.base4,
    small: AppSizes.base6,
    medium: AppSizes.base8,
    large: AppSizes.base10,
    xLarge: AppSizes.base12,
    xxLarge: AppSizes.base16,
    xxxLarge: AppSizes.base20,
    max: AppSizes.base64,
  );

  static const DsComponentPadding tablet = DsComponentPadding._(
    xxSmall: AppSizes.base2,
    xSmall: AppSizes.base4,
    small: AppSizes.base6,
    medium: AppSizes.base8,
    large: AppSizes.base10,
    xLarge: AppSizes.base12,
    xxLarge: AppSizes.base16,
    xxxLarge: AppSizes.base20,
    max: AppSizes.base64,
  );

  static const DsComponentPadding desktop = DsComponentPadding._(
    xxSmall: AppSizes.base2,
    xSmall: AppSizes.base4,
    small: AppSizes.base6,
    medium: AppSizes.base8,
    large: AppSizes.base10,
    xLarge: AppSizes.base12,
    xxLarge: AppSizes.base16,
    xxxLarge: AppSizes.base20,
    max: AppSizes.base64,
  );

  final double xxSmall;
  final double xSmall;
  final double small;
  final double medium;
  final double large;
  final double xLarge;
  final double xxLarge;
  final double xxxLarge;
  final double max;

  static DsComponentPadding of(BuildContext context) => DsComponentPadding(type: context.responsiveType);
}
