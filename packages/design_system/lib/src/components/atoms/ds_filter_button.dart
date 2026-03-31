import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';
import 'ds_text_badge.dart';

enum DSFilterButtonState { normal, expanded, activated, disabled }

class DSFilterButton extends StatefulWidget {
  const DSFilterButton({super.key, required this.state, required this.text, this.otherNumber, this.onTap});

  final DSFilterButtonState state;
  final String text;
  final int? otherNumber;
  final VoidCallback? onTap;

  @override
  State<DSFilterButton> createState() => _DSFilterButtonState();
}

class _DSFilterButtonState extends State<DSFilterButton> {
  late FilterButtonBorderColors filterButtonBorder;
  late FilterButtonTextColors filterButtonText;
  late Color borderColor;
  late Color textColor;
  late TextStyle textStyle;
  late BorderRadius borderRadius;
  late EdgeInsets padding;
  late double rowSpacing;
  late WrapperView wrapperView;
  late String dropdownUri;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSFilterButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    filterButtonBorder = context.componentColors.filterButtonBorder;
    filterButtonText = context.componentColors.filterButtonText;

    textStyle = context.textTheme.labelLMedium;
    padding = .symmetric(horizontal: context.componentPadding.large, vertical: context.componentPadding.xSmall);
    borderRadius = .circular(context.componentRadius.small);
    wrapperView = WrapperView.fix10;
    rowSpacing = context.componentGap.xxSmall;

    switch (widget.state) {
      case DSFilterButtonState.normal:
        borderColor = filterButtonBorder.base;
        textColor = filterButtonText.base;
        dropdownUri = Svgs.icDropdownDownFill;
        break;
      case DSFilterButtonState.expanded:
        borderColor = filterButtonBorder.expand;
        textColor = filterButtonText.expand;
        dropdownUri = Svgs.icDropdownUpFill;
        break;
      case DSFilterButtonState.activated:
        borderColor = filterButtonBorder.activated;
        textColor = filterButtonText.activated;
        dropdownUri = Svgs.icDropdownDownFill;
        break;
      case DSFilterButtonState.disabled:
        borderColor = filterButtonBorder.disabled;
        textColor = filterButtonText.disabled;
        dropdownUri = Svgs.icDropdownDownFill;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          border: BoxBorder.all(color: borderColor, strokeAlign: BorderSide.strokeAlignOutside),
          borderRadius: borderRadius,
        ),
        child: Row(
          mainAxisSize: .min,
          spacing: rowSpacing,
          children: [
            Text(widget.text, style: textStyle.copyWith(color: textColor)),
            if (widget.otherNumber != null)
              DSTextBadge.small(text: '${widget.otherNumber}개', variant: .secondary, type: .circular),
            DSWrapper(uri: dropdownUri, view: wrapperView, svgColor: textColor),
          ],
        ),
      ),
    );
  }
}
