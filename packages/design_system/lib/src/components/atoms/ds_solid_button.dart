import 'dart:async';

import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../common/animated_button.dart';
import '../ions/ds_wrapper.dart';

enum DSSolidButtonVariant { primary, secondary, tertiary, warning }

enum DSSolidButtonSize { large, medium, small, xSmall }

class DSSolidButton extends StatefulWidget {
  const DSSolidButton._({
    required this.variant,
    required this.size,
    required this.text,
    this.isLoading = false,
    this.isEnabled = true,
    this.leadingUri,
    this.trailingUri,
    this.onTap,
  });

  factory DSSolidButton.large({
    required DSSolidButtonVariant variant,
    required String text,
    bool isLoading = false,
    bool isEnabled = true,
    String? leadingUri,
    String? trailingUri,
    FutureOr<void> Function()? onTap,
  }) => DSSolidButton._(
    variant: variant,
    size: DSSolidButtonSize.large,
    text: text,
    isLoading: isLoading,
    isEnabled: isEnabled,
    leadingUri: leadingUri,
    trailingUri: trailingUri,
    onTap: onTap,
  );

  factory DSSolidButton.medium({
    required DSSolidButtonVariant variant,
    required String text,
    bool isLoading = false,
    bool isEnabled = true,
    String? leadingUri,
    String? trailingUri,
    FutureOr<void> Function()? onTap,
  }) => DSSolidButton._(
    variant: variant,
    size: DSSolidButtonSize.medium,
    text: text,
    isLoading: isLoading,
    isEnabled: isEnabled,
    leadingUri: leadingUri,
    trailingUri: trailingUri,
    onTap: onTap,
  );

  factory DSSolidButton.small({
    required DSSolidButtonVariant variant,
    required String text,
    bool isLoading = false,
    bool isEnabled = true,
    String? leadingUri,
    String? trailingUri,
    FutureOr<void> Function()? onTap,
  }) => DSSolidButton._(
    variant: variant,
    size: DSSolidButtonSize.small,
    text: text,
    isLoading: isLoading,
    isEnabled: isEnabled,
    leadingUri: leadingUri,
    trailingUri: trailingUri,
    onTap: onTap,
  );

  factory DSSolidButton.xSmall({
    required DSSolidButtonVariant variant,
    required String text,
    bool isLoading = false,
    bool isEnabled = true,
    String? leadingUri,
    String? trailingUri,
    FutureOr<void> Function()? onTap,
  }) => DSSolidButton._(
    variant: variant,
    size: DSSolidButtonSize.xSmall,
    text: text,
    isLoading: isLoading,
    isEnabled: isEnabled,
    leadingUri: leadingUri,
    trailingUri: trailingUri,
    onTap: onTap,
  );

  final DSSolidButtonVariant variant;
  final DSSolidButtonSize size;
  final String text;
  final bool isLoading;
  final bool isEnabled;
  final String? leadingUri;
  final String? trailingUri;
  final FutureOr<void> Function()? onTap;

  @override
  State<DSSolidButton> createState() => _DSSolidButtonState();
}

class _DSSolidButtonState extends State<DSSolidButton> {
  Completer<void>? completer;

  late SolidButtonFillColors solidButtonFill;
  late SolidButtonTextColors solidButtonText;
  late Color backgroundColor;
  late Color textColor;
  late WrapperView wrapperView;
  late EdgeInsets padding;
  late double rowSpacing;
  late TextStyle textStyle;
  late double loadingDimension;
  late double loadingStrokeWidth;
  late bool isLoading;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSSolidButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    solidButtonFill = context.componentColors.solidButtonFill;
    solidButtonText = context.componentColors.solidButtonText;

    switch (widget.variant) {
      case .primary:
        backgroundColor = solidButtonFill.primary;
        textColor = solidButtonText.primary;
        break;
      case .secondary:
        backgroundColor = solidButtonFill.secondary;
        textColor = solidButtonText.secondary;
        break;
      case .tertiary:
        backgroundColor = solidButtonFill.tertiary;
        textColor = solidButtonText.tertiary;
        break;
      case .warning:
        backgroundColor = solidButtonFill.warning;
        textColor = solidButtonText.warning;
        break;
    }

    if (widget.isEnabled == false) {
      backgroundColor = solidButtonFill.disabled;
      textColor = solidButtonText.disabled;
    }

    switch (widget.size) {
      case .large:
        wrapperView = WrapperView.fix16;
        padding = .symmetric(horizontal: context.componentPadding.xxLarge, vertical: context.componentPadding.xLarge);
        rowSpacing = context.componentGap.xSmall;
        textStyle = context.textTheme.buttonLSemiBold;
        loadingDimension = 20;
        loadingStrokeWidth = 3;
        break;
      case .medium:
        wrapperView = WrapperView.fix12;
        padding = .symmetric(horizontal: context.componentPadding.xLarge, vertical: context.componentPadding.xLarge);
        rowSpacing = context.componentGap.xxSmall;
        textStyle = context.textTheme.buttonMSemiBold;
        loadingDimension = 16;
        loadingStrokeWidth = 3;
        break;
      case .small:
        wrapperView = WrapperView.fix12;
        padding = .symmetric(horizontal: context.componentPadding.large, vertical: context.componentPadding.large);
        rowSpacing = context.componentGap.xxSmall;
        textStyle = context.textTheme.buttonSSemiBold;
        loadingDimension = 12;
        loadingStrokeWidth = 2;
        break;
      case .xSmall:
        wrapperView = WrapperView.fix10;
        padding = .symmetric(horizontal: context.componentPadding.small, vertical: context.componentPadding.xSmall);
        rowSpacing = context.componentGap.xxxSmall;
        textStyle = context.textTheme.buttonSSemiBold;
        loadingDimension = 12;
        loadingStrokeWidth = 2;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    isLoading = widget.isLoading || !(completer == null || completer!.isCompleted);

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
        decoration: BoxDecoration(borderRadius: .circular(999), color: backgroundColor),
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
