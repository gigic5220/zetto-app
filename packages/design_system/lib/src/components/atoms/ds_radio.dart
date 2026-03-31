import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

class DSRadio extends StatefulWidget {
  const DSRadio({super.key, required this.value, required this.onChanged, this.isEnabled = true});

  final bool value;
  final bool isEnabled;
  final Function(bool value) onChanged;

  @override
  State<DSRadio> createState() => _DSRadioState();
}

class _DSRadioState extends State<DSRadio> {
  final Duration animationDuration = const Duration(milliseconds: 300);
  final Curve animationCurve = Curves.easeInOut;

  late RadioBorderColors radioBorderColors;
  late RadioFillColors radioFillColors;
  late RadioTextColors radioTextColors;
  late double rowSpacing;
  late Color textColor;
  late Color borderColor;
  late TextStyle textStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSRadio oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    radioBorderColors = context.componentColors.radioBorder;
    radioFillColors = context.componentColors.radioFill;
    radioTextColors = context.componentColors.radioText;
    rowSpacing = context.componentGap.xSmall;
    textColor = widget.value ? radioTextColors.activated : radioTextColors.base;
    borderColor = widget.value ? radioFillColors.activated : radioBorderColors.base;
    textStyle = context.textTheme.labelMMedium;

    if (widget.isEnabled == false) {
      textColor = radioTextColors.disabled;
      borderColor = radioBorderColors.disabled;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.isEnabled) {
          widget.onChanged(!widget.value);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: animationDuration,
        curve: animationCurve,
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: borderColor, width: widget.value ? 4 : 2),
        ),
      ),
    );
  }
}
