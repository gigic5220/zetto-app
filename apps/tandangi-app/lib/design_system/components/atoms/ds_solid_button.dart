import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tandangi/design_system/color/semantic/colors.dart';
import 'package:tandangi/design_system/components/atoms/animated_button.dart';
import 'package:tandangi/design_system/components/ions/ds_wrapper.dart';
import 'package:tandangi/design_system/typography/app_typography.dart';

enum DSSolidButtonVariant { primary, secondary, warning }

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

  late Color backgroundColor;
  late Color textColor;
  late WrapperView wrapperView;
  late BorderRadius borderRadius;
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
    switch (widget.variant) {
      case .primary:
        backgroundColor = SemanticColors.fillPrimary;
        textColor = SemanticColors.textInverse;
        break;
      case .secondary:
        backgroundColor = SemanticColors.fillSecondary;
        textColor = SemanticColors.textPrimary;
        break;
      case .warning:
        backgroundColor = SemanticColors.fillWarning;
        textColor = SemanticColors.textWarning;
        break;
    }

    if (widget.isEnabled == false) {
      backgroundColor = SemanticColors.fillDisabled;
      textColor = SemanticColors.textDisabled;
    }

    switch (widget.size) {
      case .large:
        wrapperView = WrapperView.fix16;
        borderRadius = .circular(999);
        padding = .symmetric(vertical: 12, horizontal: 32);
        rowSpacing = 6;
        textStyle = AppTypography.buttonL;
        loadingDimension = 20;
        loadingStrokeWidth = 3;
        break;
      case .medium:
        wrapperView = WrapperView.fix12;
        borderRadius = .circular(12);
        padding = .symmetric(vertical: 12, horizontal: 12);
        rowSpacing = 4;
        textStyle = AppTypography.buttonM;
        loadingDimension = 16;
        loadingStrokeWidth = 3;
        break;
      case .small:
        wrapperView = WrapperView.fix12;
        borderRadius = .circular(10);
        padding = .symmetric(vertical: 10, horizontal: 10);
        rowSpacing = 4;
        textStyle = AppTypography.buttonS;
        loadingDimension = 12;
        loadingStrokeWidth = 2;
        break;
      case .xSmall:
        wrapperView = WrapperView.fix10;
        borderRadius = .circular(8);
        padding = .symmetric(vertical: 4, horizontal: 6);
        rowSpacing = 2;
        textStyle = AppTypography.buttonS;
        loadingDimension = 12;
        loadingStrokeWidth = 2;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    isLoading =
        widget.isLoading || !(completer == null || completer!.isCompleted);

    return AnimatedButton(
      onTap: widget.isEnabled && !isLoading && widget.onTap != null
          ? () {
              if (widget.onTap is Future<void> Function()) {
                if (completer == null || completer!.isCompleted) {
                  setState(() {
                    completer = Completer();
                  });

                  final delayed = Future.delayed(
                    const Duration(milliseconds: 300),
                  );
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
                    DSWrapper(
                      uri: widget.leadingUri!,
                      view: wrapperView,
                      svgColor: textColor,
                    ),
                  Text(
                    widget.text,
                    style: textStyle.copyWith(color: textColor),
                  ),
                  if (widget.trailingUri != null)
                    DSWrapper(
                      uri: widget.trailingUri!,
                      view: wrapperView,
                      svgColor: textColor,
                    ),
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
