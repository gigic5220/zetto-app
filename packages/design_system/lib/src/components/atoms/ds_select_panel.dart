import 'dart:async';

import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

enum DSSelectPanelSize { large, small }

class DSSelectPanel extends StatefulWidget {
  const DSSelectPanel._({
    required this.text,
    required this.size,
    this.isMultiSelect = false,
    this.isLoading = false,
    this.isEnabled = true,
    this.isSelected = false,
    this.onTap,
  });

  factory DSSelectPanel.large({
    required String text,
    bool isMultiSelect = false,
    bool isLoading = false,
    bool isEnabled = true,
    bool isSelected = false,
    FutureOr<void> Function()? onTap,
  }) => DSSelectPanel._(
    text: text,
    size: DSSelectPanelSize.large,
    isMultiSelect: isMultiSelect,
    isLoading: isLoading,
    isEnabled: isEnabled,
    isSelected: isSelected,
    onTap: onTap,
  );

  factory DSSelectPanel.small({
    required String text,
    bool isMultiSelect = false,
    bool isLoading = false,
    bool isEnabled = true,
    bool isSelected = false,
    FutureOr<void> Function()? onTap,
  }) => DSSelectPanel._(
    text: text,
    size: DSSelectPanelSize.small,
    isMultiSelect: isMultiSelect,
    isLoading: isLoading,
    isEnabled: isEnabled,
    isSelected: isSelected,
    onTap: onTap,
  );

  final DSSelectPanelSize size;
  final String text;
  final bool isMultiSelect;
  final bool isLoading;
  final bool isEnabled;
  final bool isSelected;
  final FutureOr<void> Function()? onTap;

  @override
  State<DSSelectPanel> createState() => _DSSelectPanelState();
}

class _DSSelectPanelState extends State<DSSelectPanel> {
  Completer<void>? completer;

  late SelectPanelFillColors selectPanelFillColors;
  late SelectPanelBorderColors selectPanelBorderColors;
  late SelectPanelTextColors selectPanelTextColors;

  late double borderRadius;
  late double verticalPadding;
  late double horizontalPadding;
  late TextStyle textStyle;

  late Color? backgroundColor;
  late Color borderColor;
  late Color textColor;

  late double loadingSpinnerSize;
  late double loadingSpinnerStrokeWidth;

  late int textMaxLines;

  late bool isLoading;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSSelectPanel oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    selectPanelFillColors = context.componentColors.selectPanelFill;
    selectPanelBorderColors = context.componentColors.selectPanelBorder;
    selectPanelTextColors = context.componentColors.selectPanelText;

    switch (widget.size) {
      case DSSelectPanelSize.large:
        borderRadius = context.componentRadius.large;
        verticalPadding = context.componentPadding.xLarge;
        horizontalPadding = context.componentPadding.xLarge;
        textStyle = context.textTheme.buttonLSemiBold;
        loadingSpinnerSize = 20;
        loadingSpinnerStrokeWidth = 3;
        textMaxLines = 2;
        break;
      case DSSelectPanelSize.small:
        borderRadius = context.componentRadius.max;
        verticalPadding = context.componentPadding.large;
        horizontalPadding = context.componentPadding.xxLarge;
        textStyle = context.textTheme.buttonMSemiBold;
        loadingSpinnerSize = 12;
        loadingSpinnerStrokeWidth = 2;
        textMaxLines = 1;
        break;
    }

    switch (widget.isEnabled) {
      case true:
        backgroundColor = widget.isSelected ? selectPanelFillColors.selected : null;
        borderColor = widget.isSelected ? selectPanelBorderColors.selected : selectPanelBorderColors.base;
        textColor = widget.isSelected ? selectPanelTextColors.selected : selectPanelTextColors.base;
        break;
      case false:
        backgroundColor = null;
        borderColor = selectPanelBorderColors.disabled;
        textColor = selectPanelTextColors.disabled;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    isLoading = widget.isLoading || !(completer == null || completer!.isCompleted);

    return GestureDetector(
      onTap: () {
        if (widget.isEnabled && !isLoading) {
          widget.onTap?.call();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: .circular(borderRadius),
          color: backgroundColor,
          border: Border.all(color: borderColor, strokeAlign: BorderSide.strokeAlignOutside),
        ),
        padding: .symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: isLoading ? 0.0 : 1.0,
              child: Row(
                spacing: context.componentGap.xSmall,
                mainAxisSize: .min,
                children: [
                  if (widget.isMultiSelect)
                    DSWrapper(uri: Svgs.icCheckmark, view: WrapperView.fix16, svgColor: textColor),
                  Text(
                    widget.text,
                    style: textStyle.copyWith(color: textColor),
                    maxLines: textMaxLines,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            if (isLoading)
              SizedBox.square(
                dimension: loadingSpinnerSize,
                child: CircularProgressIndicator(
                  color: textColor,
                  strokeWidth: loadingSpinnerStrokeWidth,
                  strokeCap: StrokeCap.round,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
