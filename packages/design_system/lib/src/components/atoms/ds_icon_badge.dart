import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

enum DSIconBadgeVariant { primary, secondary, tertiary, warning, success }

enum DSIconBadgeType { rectangle, circular }

enum DSIconBadgeSize { medium, small }

class DSIconBadge extends StatefulWidget {
  const DSIconBadge._({required this.variant, required this.size, required this.type, required this.iconUri});

  factory DSIconBadge.medium({
    required String iconUri,
    required DSIconBadgeVariant variant,
    required DSIconBadgeType type,
  }) => DSIconBadge._(variant: variant, size: DSIconBadgeSize.medium, type: type, iconUri: iconUri);

  factory DSIconBadge.small({required String iconUri, required DSIconBadgeVariant variant}) =>
      DSIconBadge._(variant: variant, size: DSIconBadgeSize.small, type: DSIconBadgeType.circular, iconUri: iconUri);

  final DSIconBadgeVariant variant;
  final DSIconBadgeSize size;
  final DSIconBadgeType type;
  final String iconUri;

  @override
  State<DSIconBadge> createState() => _DSIconBadgeState();
}

class _DSIconBadgeState extends State<DSIconBadge> {
  late BadgeFillColors badgeFillColors;
  late BadgeTextColors badgeTextColors;
  late Color backgroundColor;
  late Color iconColor;
  late double borderRadius;
  late EdgeInsets padding;
  late WrapperView wrapperView;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSIconBadge oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    badgeFillColors = context.componentColors.badgeFill;
    badgeTextColors = context.componentColors.badgeText;

    switch (widget.variant) {
      case .primary:
        backgroundColor = badgeFillColors.primary;
        iconColor = badgeTextColors.primary;
        break;
      case .secondary:
        backgroundColor = badgeFillColors.secondary;
        iconColor = badgeTextColors.secondary;
        break;
      case .tertiary:
        backgroundColor = badgeFillColors.tertiary;
        iconColor = badgeTextColors.tertiary;
        break;
      case .warning:
        backgroundColor = badgeFillColors.warning;
        iconColor = badgeTextColors.warning;
        break;
      case .success:
        backgroundColor = badgeFillColors.success;
        iconColor = badgeTextColors.success;
        break;
    }

    switch (widget.type) {
      case .rectangle:
        borderRadius = context.componentRadius.xSmall;
        padding = .all(context.componentPadding.xSmall);
        break;
      case .circular:
        borderRadius = context.componentRadius.max;
        padding = .all(context.componentPadding.xSmall);
        break;
    }

    switch (widget.size) {
      case .medium:
        wrapperView = WrapperView.fix12;
        break;
      case .small:
        wrapperView = WrapperView.fix10;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backgroundColor, borderRadius: .circular(borderRadius)),
      padding: padding,
      child: Center(
        widthFactor: 1,
        heightFactor: 1,
        child: DSWrapper(uri: widget.iconUri, view: wrapperView, svgColor: iconColor),
      ),
    );
  }
}
