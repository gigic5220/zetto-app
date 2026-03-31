import 'dart:async';

import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../common/animated_button.dart';
import '../ions/ds_wrapper.dart';

enum DSIconOutlinedButtonVariant { primary, secondary, warning }

enum DSIconOutlinedButtonSize { large, medium, small, xSmall }

class DSIconOutlinedButton extends StatefulWidget {
  const DSIconOutlinedButton._({
    required this.variant,
    required this.size,
    required this.iconUri,
    this.isLoading = false,
    this.isEnabled = true,
    this.onTap,
  });

  factory DSIconOutlinedButton.large({
    required DSIconOutlinedButtonVariant variant,
    required String iconUri,
    bool isLoading = false,
    bool isEnabled = true,
    FutureOr<void> Function()? onTap,
  }) => DSIconOutlinedButton._(
    variant: variant,
    size: DSIconOutlinedButtonSize.large,
    iconUri: iconUri,
    isLoading: isLoading,
    isEnabled: isEnabled,
    onTap: onTap,
  );

  factory DSIconOutlinedButton.medium({
    required DSIconOutlinedButtonVariant variant,
    required String iconUri,
    bool isLoading = false,
    bool isEnabled = true,
    FutureOr<void> Function()? onTap,
  }) => DSIconOutlinedButton._(
    variant: variant,
    size: DSIconOutlinedButtonSize.medium,
    iconUri: iconUri,
    isLoading: isLoading,
    isEnabled: isEnabled,
    onTap: onTap,
  );

  factory DSIconOutlinedButton.small({
    required DSIconOutlinedButtonVariant variant,
    required String iconUri,
    bool isLoading = false,
    bool isEnabled = true,
    FutureOr<void> Function()? onTap,
  }) => DSIconOutlinedButton._(
    variant: variant,
    size: DSIconOutlinedButtonSize.small,
    iconUri: iconUri,
    isLoading: isLoading,
    isEnabled: isEnabled,
    onTap: onTap,
  );

  factory DSIconOutlinedButton.xSmall({
    required DSIconOutlinedButtonVariant variant,
    required String iconUri,
    bool isLoading = false,
    bool isEnabled = true,
    FutureOr<void> Function()? onTap,
  }) => DSIconOutlinedButton._(
    variant: variant,
    size: DSIconOutlinedButtonSize.xSmall,
    iconUri: iconUri,
    isLoading: isLoading,
    isEnabled: isEnabled,
    onTap: onTap,
  );

  final DSIconOutlinedButtonVariant variant;
  final DSIconOutlinedButtonSize size;
  final String iconUri;
  final bool isLoading;
  final bool isEnabled;
  final FutureOr<void> Function()? onTap;

  @override
  State<DSIconOutlinedButton> createState() => _DSIconOutlinedButtonState();
}

class _DSIconOutlinedButtonState extends State<DSIconOutlinedButton> {
  Completer<void>? completer;

  late OutlinedButtonFillColors outlinedButtonFill;
  late OutlinedButtonBorderColors outlinedButtonBorder;
  late OutlinedButtonTextColors outlinedButtonText;
  late Color backgroundColor;
  late Color borderColor;
  late Color textColor;
  late WrapperView wrapperView;
  late BorderRadius borderRadius;
  late EdgeInsets padding;
  late double loadingDimension;
  late double loadingStrokeWidth;
  late bool isLoading;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSIconOutlinedButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    switch (widget.variant) {
      case DSIconOutlinedButtonVariant.primary:
        outlinedButtonFill = context.componentColors.outlinedButtonFill;
        outlinedButtonBorder = context.componentColors.outlinedButtonBorder;
        outlinedButtonText = context.componentColors.outlinedButtonText;
        backgroundColor = outlinedButtonFill.base;
        borderColor = outlinedButtonBorder.primary;
        textColor = outlinedButtonText.primary;
        break;
      case DSIconOutlinedButtonVariant.secondary:
        outlinedButtonFill = context.componentColors.outlinedButtonFill;
        outlinedButtonBorder = context.componentColors.outlinedButtonBorder;
        outlinedButtonText = context.componentColors.outlinedButtonText;
        backgroundColor = outlinedButtonFill.base;
        borderColor = outlinedButtonBorder.secondary;
        textColor = outlinedButtonText.secondary;
        break;
      case DSIconOutlinedButtonVariant.warning:
        outlinedButtonFill = context.componentColors.outlinedButtonFill;
        outlinedButtonBorder = context.componentColors.outlinedButtonBorder;
        outlinedButtonText = context.componentColors.outlinedButtonText;
        backgroundColor = outlinedButtonFill.base;
        borderColor = outlinedButtonBorder.warning;
        textColor = outlinedButtonText.warning;
        break;
    }

    switch (widget.size) {
      case DSIconOutlinedButtonSize.large:
        wrapperView = WrapperView.fix20;
        borderRadius = .circular(context.componentRadius.large);
        padding = .all(context.componentPadding.xLarge + 3);
        loadingDimension = 20;
        loadingStrokeWidth = 3;
        break;
      case DSIconOutlinedButtonSize.medium:
        wrapperView = WrapperView.fix20;
        borderRadius = .circular(context.componentRadius.large);
        padding = .all(context.componentPadding.xLarge + 1);
        loadingDimension = 16;
        loadingStrokeWidth = 3;
        break;
      case DSIconOutlinedButtonSize.small:
        wrapperView = WrapperView.fix16;
        borderRadius = .circular(context.componentRadius.medium);
        padding = .all(context.componentPadding.large + 1);
        loadingDimension = 12;
        loadingStrokeWidth = 2;
        break;
      case DSIconOutlinedButtonSize.xSmall:
        wrapperView = WrapperView.fix12;
        borderRadius = .circular(context.componentRadius.small);
        padding = .all(context.componentPadding.xSmall + 3);
        loadingDimension = 12;
        loadingStrokeWidth = 2;
        break;
    }

    if (widget.isEnabled == false) {
      borderColor = outlinedButtonBorder.disabled;
      textColor = outlinedButtonText.disabled;
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
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: backgroundColor,
          border: Border.all(color: borderColor, strokeAlign: BorderSide.strokeAlignOutside),
        ),
        padding: padding,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: isLoading ? 0.0 : 1.0,
              child: Center(
                widthFactor: 1,
                child: DSWrapper(uri: widget.iconUri, view: wrapperView, svgColor: textColor),
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
