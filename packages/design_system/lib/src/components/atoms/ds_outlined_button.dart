import 'dart:async';

import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../common/animated_button.dart';
import '../ions/ds_wrapper.dart';

enum DSOutlinedButtonVariant { primary, secondary, warning }

enum DSOutlinedButtonSize { large, medium, small, xSmall }

class DSOutlinedButton extends StatefulWidget {
  const DSOutlinedButton._({
    required this.variant,
    required this.size,
    required this.text,
    this.isLoading = false,
    this.isEnabled = true,
    this.leadingUri,
    this.trailingUri,
    this.onTap,
    this.isShowShadow = false,
  });

  factory DSOutlinedButton.large({
    required DSOutlinedButtonVariant variant,
    required String text,
    bool isLoading = false,
    bool isEnabled = true,
    String? leadingUri,
    String? trailingUri,
    FutureOr<void> Function()? onTap,
    bool isShowShadow = false,
  }) => DSOutlinedButton._(
    variant: variant,
    size: DSOutlinedButtonSize.large,
    text: text,
    isLoading: isLoading,
    isEnabled: isEnabled,
    leadingUri: leadingUri,
    trailingUri: trailingUri,
    onTap: onTap,
    isShowShadow: isShowShadow,
  );

  factory DSOutlinedButton.medium({
    required DSOutlinedButtonVariant variant,
    required String text,
    bool isLoading = false,
    bool isEnabled = true,
    String? leadingUri,
    String? trailingUri,
    FutureOr<void> Function()? onTap,
    bool isShowShadow = false,
  }) => DSOutlinedButton._(
    variant: variant,
    size: DSOutlinedButtonSize.medium,
    text: text,
    isLoading: isLoading,
    isEnabled: isEnabled,
    leadingUri: leadingUri,
    trailingUri: trailingUri,
    onTap: onTap,
    isShowShadow: isShowShadow,
  );

  factory DSOutlinedButton.small({
    required DSOutlinedButtonVariant variant,
    required String text,
    bool isLoading = false,
    bool isEnabled = true,
    String? leadingUri,
    String? trailingUri,
    FutureOr<void> Function()? onTap,
    bool isShowShadow = false,
  }) => DSOutlinedButton._(
    variant: variant,
    size: DSOutlinedButtonSize.small,
    text: text,
    isLoading: isLoading,
    isEnabled: isEnabled,
    leadingUri: leadingUri,
    trailingUri: trailingUri,
    onTap: onTap,
    isShowShadow: isShowShadow,
  );

  factory DSOutlinedButton.xSmall({
    required DSOutlinedButtonVariant variant,
    required String text,
    bool isLoading = false,
    bool isEnabled = true,
    String? leadingUri,
    String? trailingUri,
    FutureOr<void> Function()? onTap,
    bool isShowShadow = false,
  }) => DSOutlinedButton._(
    variant: variant,
    size: DSOutlinedButtonSize.xSmall,
    text: text,
    isLoading: isLoading,
    isEnabled: isEnabled,
    leadingUri: leadingUri,
    trailingUri: trailingUri,
    onTap: onTap,
    isShowShadow: isShowShadow,
  );

  final DSOutlinedButtonVariant variant;
  final DSOutlinedButtonSize size;
  final String text;
  final bool isLoading;
  final bool isEnabled;
  final String? leadingUri;
  final String? trailingUri;
  final FutureOr<void> Function()? onTap;
  final bool isShowShadow;

  @override
  State<DSOutlinedButton> createState() => _DSOutlinedButtonState();
}

class _DSOutlinedButtonState extends State<DSOutlinedButton> {
  Completer<void>? completer;

  late OutlinedButtonBorderColors outlinedButtonBorder;
  late OutlinedButtonFillColors outlinedButtonFill;
  late OutlinedButtonTextColors outlinedButtonText;
  late Color backgroundColor;
  late Color borderColor;
  late Color textColor;
  late WrapperView wrapperView;
  late EdgeInsets padding;
  late double rowSpacing;
  late TextStyle textStyle;
  late double loadingDimension;
  late double loadingStrokeWidth;
  late bool isLoading;

  void _calculate() {
    switch (widget.variant) {
      case DSOutlinedButtonVariant.primary:
        outlinedButtonBorder = context.componentColors.outlinedButtonBorder;
        outlinedButtonFill = context.componentColors.outlinedButtonFill;
        outlinedButtonText = context.componentColors.outlinedButtonText;
        backgroundColor = outlinedButtonFill.base;
        borderColor = outlinedButtonBorder.primary;
        textColor = outlinedButtonText.primary;
        break;
      case DSOutlinedButtonVariant.secondary:
        outlinedButtonBorder = context.componentColors.outlinedButtonBorder;
        outlinedButtonFill = context.componentColors.outlinedButtonFill;
        outlinedButtonText = context.componentColors.outlinedButtonText;
        backgroundColor = outlinedButtonFill.base;
        borderColor = outlinedButtonBorder.secondary;
        textColor = outlinedButtonText.secondary;
        break;
      case DSOutlinedButtonVariant.warning:
        outlinedButtonBorder = context.componentColors.outlinedButtonBorder;
        outlinedButtonFill = context.componentColors.outlinedButtonFill;
        outlinedButtonText = context.componentColors.outlinedButtonText;
        backgroundColor = outlinedButtonFill.base;
        borderColor = outlinedButtonBorder.warning;
        textColor = outlinedButtonText.warning;
        break;
    }

    if (widget.isEnabled == false) {
      borderColor = outlinedButtonBorder.disabled;
      textColor = outlinedButtonText.disabled;
    }

    switch (widget.size) {
      case DSOutlinedButtonSize.large:
        wrapperView = WrapperView.fix16;
        padding = .symmetric(horizontal: context.componentPadding.xxLarge, vertical: context.componentPadding.xLarge);
        rowSpacing = context.componentGap.xSmall;
        textStyle = context.textTheme.buttonLSemiBold;
        loadingDimension = 20;
        loadingStrokeWidth = 3;
        break;
      case DSOutlinedButtonSize.medium:
        wrapperView = WrapperView.fix12;
        padding = .symmetric(horizontal: context.componentPadding.xLarge, vertical: context.componentPadding.xLarge);
        rowSpacing = context.componentGap.xxSmall;
        textStyle = context.textTheme.buttonMSemiBold;
        loadingDimension = 16;
        loadingStrokeWidth = 3;
        break;
      case DSOutlinedButtonSize.small:
        wrapperView = WrapperView.fix12;
        padding = .symmetric(horizontal: context.componentPadding.large, vertical: context.componentPadding.large);
        rowSpacing = context.componentGap.xxSmall;
        textStyle = context.textTheme.buttonSSemiBold;
        loadingDimension = 12;
        loadingStrokeWidth = 2;
        break;
      case DSOutlinedButtonSize.xSmall:
        wrapperView = WrapperView.fix10;
        padding = .symmetric(horizontal: context.componentPadding.small, vertical: context.componentPadding.xSmall);
        rowSpacing = context.componentGap.xxxSmall;
        textStyle = context.textTheme.buttonSSemiBold;
        loadingDimension = 12;
        loadingStrokeWidth = 2;
        break;
    }

    if (widget.isEnabled == false) {
      borderColor = outlinedButtonBorder.disabled;
      textColor = outlinedButtonText.disabled;
    }

    isLoading = widget.isLoading || !(completer == null || completer!.isCompleted);
  }

  @override
  Widget build(BuildContext context) {
    _calculate();

    return AnimatedButton(
      onTap: widget.isEnabled && !isLoading && widget.onTap != null
          ? () {
              if (widget.onTap is Future<void> Function()) {
                if (completer == null || completer!.isCompleted) {
                  setState(() {
                    completer = Completer();
                  });

                  final delayed = Future.delayed(const Duration(milliseconds: 300));
                  final pressedFuture = widget.onTap?.call();

                  Future.wait([pressedFuture as Future, delayed]).then((value) {
                    completer?.complete();
                    if (mounted) setState(() {});
                  });
                }
              } else {
                widget.onTap?.call();
              }
            }
          : null,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: .circular(context.componentRadius.max),
          color: backgroundColor,
          border: Border.all(color: borderColor, strokeAlign: BorderSide.strokeAlignOutside),
          boxShadow: widget.isShowShadow
              ? [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 8,
                    spreadRadius: 0,
                    color: Color(0xFF121212).withValues(alpha: 0.12),
                  ),
                ]
              : null,
        ),
        padding: padding,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: isLoading ? 0.0 : 1.0,
              child: Row(
                spacing: rowSpacing,
                mainAxisSize: .min,
                children: [
                  if (widget.leadingUri != null)
                    DSWrapper(uri: widget.leadingUri!, view: wrapperView, svgColor: textColor),
                  Text(widget.text, style: textStyle.copyWith(color: textColor)),
                  if (widget.trailingUri != null)
                    DSWrapper(uri: widget.trailingUri!, view: wrapperView, svgColor: textColor),
                ],
              ),
            ),
            if (isLoading)
              SizedBox.square(
                dimension: loadingDimension,
                child: CircularProgressIndicator(
                  color: textColor,
                  strokeWidth: loadingStrokeWidth,
                  strokeCap: StrokeCap.round,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
