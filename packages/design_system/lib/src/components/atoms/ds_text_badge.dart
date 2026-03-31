import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

enum DSTextBadgeVariant { primary, secondary, tertiary, warning, success }

enum DSTextBadgeType { rectangle, circular, text }

enum DSTextBadgeSize { medium, small }

class DSTextBadge extends StatefulWidget {
  const DSTextBadge._({
    required this.variant,
    required this.size,
    required this.type,
    required this.text,
    this.leadingUri,
    this.trailingUri,
  });

  factory DSTextBadge.medium({
    required String text,
    required DSTextBadgeVariant variant,
    required DSTextBadgeType type,
    String? leadingUri,
    String? trailingUri,
  }) => DSTextBadge._(
    variant: variant,
    size: DSTextBadgeSize.medium,
    type: type,
    text: text,
    leadingUri: leadingUri,
    trailingUri: trailingUri,
  );

  factory DSTextBadge.small({
    required String text,
    required DSTextBadgeVariant variant,
    required DSTextBadgeType type,
    String? leadingUri,
    String? trailingUri,
  }) => DSTextBadge._(
    variant: variant,
    size: DSTextBadgeSize.small,
    type: type,
    text: text,
    leadingUri: leadingUri,
    trailingUri: trailingUri,
  );

  final DSTextBadgeVariant variant;
  final DSTextBadgeSize size;
  final DSTextBadgeType type;
  final String text;
  final String? leadingUri;
  final String? trailingUri;

  @override
  State<DSTextBadge> createState() => _DSTextBadgeState();
}

class _DSTextBadgeState extends State<DSTextBadge> {
  late BadgeFillColors badgeFillColors;
  late BadgeTextColors badgeTextColors;
  late Color backgroundColor;
  late Color textColor;
  late double borderRadius;
  late EdgeInsets padding;
  late TextStyle textStyle;
  late double rowSpacing;
  late WrapperView wrapperView;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSTextBadge oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    badgeFillColors = context.componentColors.badgeFill;
    badgeTextColors = context.componentColors.badgeText;

    switch (widget.variant) {
      case .primary:
        backgroundColor = badgeFillColors.primary;
        textColor = switch (widget.type) {
          DSTextBadgeType.rectangle || DSTextBadgeType.circular => badgeTextColors.primary,
          DSTextBadgeType.text => badgeTextColors.secondary,
        };
        break;
      case .secondary:
        backgroundColor = badgeFillColors.secondary;
        textColor = switch (widget.type) {
          DSTextBadgeType.rectangle || DSTextBadgeType.circular => badgeTextColors.secondary,
          DSTextBadgeType.text => badgeTextColors.secondary,
        };
        break;
      case .tertiary:
        backgroundColor = badgeFillColors.tertiary;
        textColor = badgeTextColors.tertiary;
        break;
      case .warning:
        backgroundColor = badgeFillColors.warning;
        textColor = badgeTextColors.warning;
        break;
      case .success:
        backgroundColor = badgeFillColors.success;
        textColor = badgeTextColors.success;
        break;
    }

    switch (widget.type) {
      case .rectangle:
        borderRadius = switch (widget.size) {
          DSTextBadgeSize.medium => context.componentRadius.small,
          DSTextBadgeSize.small => context.componentRadius.xSmall,
        };
        padding = .symmetric(horizontal: context.componentPadding.small, vertical: context.componentPadding.xxSmall);
        break;
      case .circular:
        borderRadius = context.componentRadius.max;
        padding = .symmetric(
          horizontal: switch (widget.size) {
            DSTextBadgeSize.medium => context.componentPadding.medium,
            DSTextBadgeSize.small => context.componentPadding.small,
          },
          vertical: context.componentPadding.xxSmall,
        );
        break;
      case .text:
        backgroundColor = Colors.transparent;
        borderRadius = context.componentRadius.max;
        padding = .zero;
        break;
    }

    switch (widget.size) {
      case .medium:
        wrapperView = WrapperView.fix12;
        rowSpacing = context.componentGap.xxSmall;
        textStyle = context.textTheme.labelMMedium;
        break;
      case .small:
        wrapperView = WrapperView.fix10;
        rowSpacing = context.componentGap.xxxSmall;
        textStyle = context.textTheme.labelSMedium;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backgroundColor, borderRadius: .circular(borderRadius)),
      padding: padding,
      child: Row(
        mainAxisSize: .min,
        spacing: rowSpacing,
        children: [
          if (widget.leadingUri != null) DSWrapper(uri: widget.leadingUri!, view: wrapperView, svgColor: textColor),
          Text(widget.text, style: textStyle.copyWith(color: textColor)),
          if (widget.trailingUri != null) DSWrapper(uri: widget.trailingUri!, view: wrapperView, svgColor: textColor),
        ],
      ),
    );
  }
}
