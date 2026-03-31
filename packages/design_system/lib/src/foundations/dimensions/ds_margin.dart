import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../responsive/responsive_type.dart';
import '../atomic/app_sizes.dart';

class DsMargin {
  factory DsMargin({required AppResponsiveType type}) => switch (type) {
    AppResponsiveType.mobile => mobile,
    AppResponsiveType.tablet => tablet,
    AppResponsiveType.desktop => desktop,
  };
  const DsMargin._({required this.width, required this.navigation});

  static const DsMargin mobile = DsMargin._(width: AppSizes.base20, navigation: AppSizes.base12);

  static const DsMargin tablet = DsMargin._(width: AppSizes.base32, navigation: AppSizes.base24);

  static const DsMargin desktop = DsMargin._(width: AppSizes.base40, navigation: AppSizes.base32);

  final double width;
  final double navigation;

  static DsMargin of(BuildContext context) => DsMargin(type: context.responsiveType);
}
