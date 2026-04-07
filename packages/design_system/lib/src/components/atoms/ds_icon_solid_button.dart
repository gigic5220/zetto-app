import 'dart:async';

import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../common/animated_button.dart';
import '../ions/ds_wrapper.dart';

enum DSIconSolidButtonVariant { primary, secondary, tertiary, warning }

enum DSIconSolidButtonSize { large, medium, small, xSmall }

class DSIconSolidButton extends StatefulWidget {
  const DSIconSolidButton._({
    required this.variant,
    required this.size,
    required this.iconUri,
    this.isLoading = false,
    this.isEnabled = true,
    this.onTap,
  });

  factory DSIconSolidButton.large({
    required DSIconSolidButtonVariant variant,
    required String iconUri,
    bool isLoading = false,
    bool isEnabled = true,
    FutureOr<void> Function()? onTap,
  }) => DSIconSolidButton._(
    variant: variant,
    size: DSIconSolidButtonSize.large,
    iconUri: iconUri,
    isLoading: isLoading,
    isEnabled: isEnabled,
    onTap: onTap,
  );

  factory DSIconSolidButton.medium({
    required DSIconSolidButtonVariant variant,
    required String iconUri,
    bool isLoading = false,
    bool isEnabled = true,
    FutureOr<void> Function()? onTap,
  }) => DSIconSolidButton._(
    variant: variant,
    size: DSIconSolidButtonSize.medium,
    iconUri: iconUri,
    isLoading: isLoading,
    isEnabled: isEnabled,
    onTap: onTap,
  );

  factory DSIconSolidButton.small({
    required DSIconSolidButtonVariant variant,
    required String iconUri,
    bool isLoading = false,
    bool isEnabled = true,
    FutureOr<void> Function()? onTap,
  }) => DSIconSolidButton._(
    variant: variant,
    size: DSIconSolidButtonSize.small,
    iconUri: iconUri,
    isLoading: isLoading,
    isEnabled: isEnabled,
    onTap: onTap,
  );

  factory DSIconSolidButton.xSmall({
    required DSIconSolidButtonVariant variant,
    required String iconUri,
    bool isLoading = false,
    bool isEnabled = true,
    FutureOr<void> Function()? onTap,
  }) => DSIconSolidButton._(
    variant: variant,
    size: DSIconSolidButtonSize.xSmall,
    iconUri: iconUri,
    isLoading: isLoading,
    isEnabled: isEnabled,
    onTap: onTap,
  );

  final DSIconSolidButtonVariant variant;
  final DSIconSolidButtonSize size;
  final String iconUri;
  final bool isLoading;
  final bool isEnabled;
  final FutureOr<void> Function()? onTap;

  @override
  State<DSIconSolidButton> createState() => _DSIconSolidButtonState();
}

class _DSIconSolidButtonState extends State<DSIconSolidButton> {
  Completer<void>? completer;

  late SolidButtonFillColors solidButtonFill;
  late SolidButtonTextColors solidButtonText;
  late Color backgroundColor;
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
  void didUpdateWidget(covariant DSIconSolidButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    switch (widget.variant) {
      case DSIconSolidButtonVariant.primary:
        solidButtonFill = context.componentColors.solidButtonFill;
        solidButtonText = context.componentColors.solidButtonText;
        backgroundColor = solidButtonFill.primary;
        textColor = solidButtonText.primary;
        break;
      case DSIconSolidButtonVariant.secondary:
        solidButtonFill = context.componentColors.solidButtonFill;
        solidButtonText = context.componentColors.solidButtonText;
        backgroundColor = solidButtonFill.secondary;
        textColor = solidButtonText.secondary;
        break;
      case DSIconSolidButtonVariant.tertiary:
        solidButtonFill = context.componentColors.solidButtonFill;
        solidButtonText = context.componentColors.solidButtonText;
        backgroundColor = solidButtonFill.tertiary;
        textColor = solidButtonText.tertiary;
        break;
      case DSIconSolidButtonVariant.warning:
        solidButtonFill = context.componentColors.solidButtonFill;
        solidButtonText = context.componentColors.solidButtonText;
        backgroundColor = solidButtonFill.warning;
        textColor = solidButtonText.warning;
        break;
    }

    switch (widget.size) {
      case DSIconSolidButtonSize.large:
        wrapperView = WrapperView.fix20;
        padding = .all(context.componentPadding.xLarge + 3);
        loadingDimension = 20;
        loadingStrokeWidth = 3;
        break;
      case DSIconSolidButtonSize.medium:
        wrapperView = WrapperView.fix20;
        padding = .all(context.componentPadding.xLarge + 1);
        loadingDimension = 20;
        loadingStrokeWidth = 3;
        break;
      case DSIconSolidButtonSize.small:
        wrapperView = WrapperView.fix16;
        padding = .all(context.componentPadding.large + 1);
        loadingDimension = 12;
        loadingStrokeWidth = 2;
        break;
      case DSIconSolidButtonSize.xSmall:
        wrapperView = WrapperView.fix12;
        padding = .all(context.componentPadding.xSmall + 3);
        loadingDimension = 12;
        loadingStrokeWidth = 2;
        break;
    }

    if (widget.isEnabled == false) {
      backgroundColor = solidButtonFill.disabled;
      textColor = solidButtonText.disabled;
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
          borderRadius: BorderRadius.circular(context.componentRadius.max),
          color: backgroundColor,
        ),
        padding: padding,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: isLoading ? 0.0 : 1.0,
              child: Center(
                widthFactor: 1,
                heightFactor: 1,
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
