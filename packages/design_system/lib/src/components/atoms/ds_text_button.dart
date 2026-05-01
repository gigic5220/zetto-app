import 'dart:async';

import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../common/animated_button.dart';
import '../ions/ds_wrapper.dart';

enum DSTextButtonVariant { primary, secondary, warning }

class DSTextButton extends StatefulWidget {
  const DSTextButton({
    super.key,
    required this.variant,
    required this.text,
    this.isLoading = false,
    this.isEnabled = true,
    this.leadingUri,
    this.trailingUri,
    this.onTap,
  });

  final DSTextButtonVariant variant;
  final String text;
  final bool isLoading;
  final bool isEnabled;
  final String? leadingUri;
  final String? trailingUri;
  final FutureOr<void> Function()? onTap;

  @override
  State<DSTextButton> createState() => _DSTextButtonState();
}

class _DSTextButtonState extends State<DSTextButton> {
  Completer<void>? completer;

  late TextButtonColors textButtonColors;
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
  void didUpdateWidget(covariant DSTextButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    textButtonColors = context.componentColors.textButton;

    switch (widget.variant) {
      case .primary:
        textColor = textButtonColors.primary;
        break;
      case .secondary:
        textColor = textButtonColors.secondary;
        break;
      case .warning:
        textColor = textButtonColors.warning;
        break;
    }

    if (widget.isEnabled == false) {
      textColor = textButtonColors.disabled;
    }

    textStyle = context.textTheme.buttonSSemiBold;
    wrapperView = WrapperView.fix10;
    padding = .all(context.componentPadding.xSmall);
    rowSpacing = context.componentGap.xxxSmall;
    loadingDimension = 12;
    loadingStrokeWidth = 2;
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
      child: Padding(
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
