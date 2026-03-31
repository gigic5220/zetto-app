import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../common/animated_button.dart';
import '../ions/ds_wrapper.dart';

enum DSChipVariant { primary, secondary, tertiary }

enum DSChipSize { medium, small }

enum DSChipType { rectangular, circular }

class DSChip extends StatefulWidget {
  const DSChip._({
    required this.variant,
    required this.size,
    required this.type,
    required this.text,
    this.leadingUri,
    this.onTap,
    this.isDeleteChip = false,
  });

  factory DSChip.medium({
    required DSChipVariant variant,
    required DSChipType type,
    required String text,
    String? leadingUri,
    VoidCallback? onTap,
    bool isDeleteChip = false,
  }) => DSChip._(
    variant: variant,
    size: .medium,
    type: type,
    text: text,
    leadingUri: leadingUri,
    onTap: onTap,
    isDeleteChip: isDeleteChip,
  );

  factory DSChip.small({
    required DSChipVariant variant,
    required DSChipType type,
    required String text,
    String? leadingUri,
    VoidCallback? onTap,
    bool isDeleteChip = false,
  }) => DSChip._(
    variant: variant,
    size: .small,
    type: type,
    text: text,
    leadingUri: leadingUri,
    onTap: onTap,
    isDeleteChip: isDeleteChip,
  );

  final DSChipVariant variant;
  final DSChipSize size;
  final DSChipType type;
  final String text;
  final String? leadingUri;
  final VoidCallback? onTap;
  final bool isDeleteChip;

  @override
  State<DSChip> createState() => _DSChipState();
}

class _DSChipState extends State<DSChip> {
  late ChipFillColors chipFillColors;
  late ChipTextColors chipTextColors;
  late ChipBorderColors chipBorderColors;
  late Color textColor;
  late Color? backgroundColor;
  late Color? borderColor;
  late EdgeInsets padding;
  late double rowSpacing;
  late TextStyle textStyle;
  late double borderRadius;
  late WrapperView wrapperView;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSChip oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    chipFillColors = context.componentColors.chipFill;
    chipTextColors = context.componentColors.chipText;
    chipBorderColors = context.componentColors.chipBorder;

    switch (widget.variant) {
      case .primary:
        backgroundColor = chipFillColors.primary;
        textColor = chipTextColors.primary;
        borderColor = null;
        break;
      case .secondary:
        backgroundColor = chipFillColors.secondary;
        textColor = chipTextColors.secondary;
        borderColor = null;
        break;
      case .tertiary:
        backgroundColor = null;
        textColor = chipTextColors.tertiary;
        borderColor = chipBorderColors.tertiary;
        break;
    }

    switch (widget.size) {
      case .medium:
        padding = switch (widget.type) {
          .rectangular => .symmetric(
            horizontal: context.componentPadding.medium,
            vertical: context.componentPadding.xSmall,
          ),
          .circular => .symmetric(
            horizontal: context.componentPadding.xLarge,
            vertical: context.componentPadding.small,
          ),
        };
        wrapperView = WrapperView.fix12;
        rowSpacing = context.componentGap.xxSmall;
        textStyle = context.textTheme.labelLMedium;
        break;
      case .small:
        padding = switch (widget.type) {
          .rectangular => .symmetric(
            horizontal: context.componentPadding.small,
            vertical: context.componentPadding.xxSmall,
          ),
          .circular => .symmetric(
            horizontal: context.componentPadding.medium,
            vertical: context.componentPadding.xSmall,
          ),
        };
        wrapperView = WrapperView.fix10;
        rowSpacing = context.componentGap.xxxSmall;
        textStyle = context.textTheme.labelSMedium;
        break;
    }

    switch (widget.type) {
      case .rectangular:
        borderRadius = switch (widget.size) {
          .medium => context.componentRadius.small,
          .small => context.componentRadius.xSmall,
        };
        break;
      case .circular:
        borderRadius = context.componentRadius.max;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onTap: widget.onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: .circular(borderRadius),
          border: borderColor != null
              ? Border.all(color: borderColor!, strokeAlign: BorderSide.strokeAlignOutside)
              : null,
          color: backgroundColor,
        ),
        child: Row(
          spacing: rowSpacing,
          mainAxisSize: .min,
          children: [
            if (widget.leadingUri != null) DSWrapper(uri: widget.leadingUri!, view: wrapperView, svgColor: textColor),
            Text(widget.text, style: textStyle.copyWith(color: textColor)),
            if (widget.isDeleteChip) DSWrapper(uri: Svgs.icX, view: wrapperView, svgColor: textColor),
          ],
        ),
      ),
    );
  }
}
