import 'package:flutter/material.dart';

import '../../../components/ions.dart';
import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

class DSCheckBox extends StatefulWidget {
  const DSCheckBox({
    super.key,
    required this.value,
    this.onChanged,
    this.isEnabled = true,
    this.isAllChildrenChecked = true,
  });

  final bool value;
  final Function(bool value)? onChanged;
  final bool isEnabled;
  final bool isAllChildrenChecked;

  @override
  State<DSCheckBox> createState() => _DSCheckBoxState();
}

class _DSCheckBoxState extends State<DSCheckBox> {
  final Duration animationDuration = const Duration(milliseconds: 300);
  final Curve animationCurve = Curves.easeInOut;

  late CheckBoxBorderColors checkBoxBorderColors;
  late CheckBoxFillColors checkBoxFillColors;
  late CheckBoxTextColors checkBoxTextColors;
  late CheckBoxIndicatorColors checkBoxIndicatorColors;

  late Color textColor;
  late Color backgroundColor;
  late Color indicatorColor;
  late Color borderColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    checkBoxBorderColors = context.componentColors.checkBoxBorder;
    checkBoxFillColors = context.componentColors.checkBoxFill;
    checkBoxTextColors = context.componentColors.checkBoxText;
    checkBoxIndicatorColors = context.componentColors.checkBoxIndicator;

    switch (widget.isEnabled) {
      case true:
        backgroundColor = widget.value ? checkBoxFillColors.activated : Colors.transparent;
        textColor = widget.value ? checkBoxTextColors.activated : checkBoxTextColors.base;
        indicatorColor = widget.value ? checkBoxIndicatorColors.activated : Colors.transparent;
        borderColor = widget.value ? checkBoxFillColors.activated : checkBoxBorderColors.base;
        break;
      case false:
        backgroundColor = Colors.transparent;
        textColor = checkBoxTextColors.disabled;
        indicatorColor = Colors.transparent;
        borderColor = checkBoxBorderColors.disabled;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.isEnabled) {
          widget.onChanged?.call(!widget.value);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: animationDuration,
        curve: animationCurve,
        padding: .all(4),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor, width: 1.5, strokeAlign: BorderSide.strokeAlignOutside),
          borderRadius: .circular(context.componentRadius.xSmall),
        ),
        child: DSWrapper(
          uri: widget.isAllChildrenChecked ? Svgs.icCheckmark : Svgs.icMinus,
          view: WrapperView.fix12,
          svgColor: checkBoxIndicatorColors.activated,
        ),
      ),
    );
  }
}
