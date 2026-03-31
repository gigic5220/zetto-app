import 'package:flutter/material.dart';

import '../../../components/molecules.dart';
import '../../extension/context_extension.dart';

enum DSBannerVariant { normal, brand, warning }

class DSBanner extends StatefulWidget {
  const DSBanner._({required this.variant, required this.listItemWidget});

  factory DSBanner.normal({required DSListItem listItemWidget}) =>
      DSBanner._(variant: DSBannerVariant.normal, listItemWidget: listItemWidget);

  factory DSBanner.brand({required DSListItem listItemWidget}) =>
      DSBanner._(variant: DSBannerVariant.brand, listItemWidget: listItemWidget);

  factory DSBanner.warning({required DSListItem listItemWidget}) =>
      DSBanner._(variant: DSBannerVariant.warning, listItemWidget: listItemWidget);

  final DSBannerVariant variant;
  final DSListItem listItemWidget;

  @override
  State<DSBanner> createState() => _DSBannerState();
}

class _DSBannerState extends State<DSBanner> {
  late Color backgroundColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSBanner oldWidget) {
    super.didUpdateWidget(oldWidget);
    _calculate();
  }

  void _calculate() {
    switch (widget.variant) {
      case DSBannerVariant.normal:
        backgroundColor = context.componentColors.bannerFill.base;
        break;
      case DSBannerVariant.brand:
        backgroundColor = context.componentColors.bannerFill.brand;
        break;
      case DSBannerVariant.warning:
        backgroundColor = context.componentColors.bannerFill.warning;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.componentPadding.xSmall),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: context.componentPadding.xSmall,
          horizontal: context.componentPadding.xxLarge,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(context.componentRadius.xLarge),
        ),
        child: widget.listItemWidget,
      ),
    );
  }
}
