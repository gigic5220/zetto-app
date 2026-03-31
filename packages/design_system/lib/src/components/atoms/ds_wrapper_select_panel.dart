import 'dart:async';

import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

class DSWrapperSelectPanel extends StatefulWidget {
  const DSWrapperSelectPanel({
    super.key,
    required this.imageUri,
    required this.title,
    this.description,
    this.isMultiSelect = false,
    this.isLoading = false,
    this.isEnabled = true,
    this.isSelected = false,
    this.onTap,
  });

  final String imageUri;
  final String title;
  final String? description;
  final bool isMultiSelect;
  final bool isLoading;
  final bool isEnabled;
  final bool isSelected;
  final FutureOr<void> Function()? onTap;

  @override
  State<DSWrapperSelectPanel> createState() => _DSWrapperSelectPanelState();
}

class _DSWrapperSelectPanelState extends State<DSWrapperSelectPanel> {
  Completer<void>? completer;

  late double verticalPadding;

  late SelectPanelFillColors selectPanelFillColors;
  late SelectPanelBorderColors selectPanelBorderColors;
  late SelectPanelTextColors selectPanelTextColors;

  late Color? backgroundColor;
  late Color borderColor;
  late Color textColor;

  late bool isLoading;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSWrapperSelectPanel oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    selectPanelFillColors = context.componentColors.selectPanelFill;
    selectPanelBorderColors = context.componentColors.selectPanelBorder;
    selectPanelTextColors = context.componentColors.selectPanelText;

    switch (widget.isMultiSelect) {
      case true:
        verticalPadding = context.componentPadding.xxLarge;
        break;
      case false:
        verticalPadding = context.componentPadding.xxxLarge;
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
          borderRadius: .circular(context.componentRadius.xLarge),
          color: backgroundColor,
          border: Border.all(color: borderColor, strokeAlign: BorderSide.strokeAlignOutside),
        ),
        padding: .symmetric(horizontal: context.componentPadding.xxLarge, vertical: verticalPadding),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: isLoading ? 0.0 : 1.0,
              child: Column(
                mainAxisSize: .min,
                spacing: context.componentGap.medium,
                children: [
                  if (widget.isMultiSelect)
                    SizedBox(
                      width: WrapperView.fix80.size,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: DSWrapper(uri: Svgs.icCheckmark, view: WrapperView.fix24, svgColor: textColor),
                      ),
                    ),
                  DSWrapper(uri: widget.imageUri, view: WrapperView.image80(context)),
                  Column(
                    mainAxisSize: .min,
                    crossAxisAlignment: .center,
                    spacing: context.componentGap.xxxSmall,
                    children: [
                      Text(
                        widget.title,
                        style: context.textTheme.buttonXLSemiBold.copyWith(color: textColor),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      if (widget.description != null)
                        Text(
                          widget.description!,
                          style: context.textTheme.labelMMedium.copyWith(color: textColor),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                    ],
                  ),
                ],
              ),
            ),
            if (isLoading)
              SizedBox.square(
                dimension: 20,
                child: CircularProgressIndicator(color: textColor, strokeWidth: 3, strokeCap: StrokeCap.round),
              ),
          ],
        ),
      ),
    );
  }
}
