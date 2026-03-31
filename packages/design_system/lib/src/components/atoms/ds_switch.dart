import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

class DSSwitch extends StatefulWidget {
  const DSSwitch({super.key, required this.value, required this.onChanged, this.isEnabled = true});

  final bool value;
  final bool isEnabled;
  final Function(bool value) onChanged;

  @override
  State<DSSwitch> createState() => _DSSwitchState();
}

class _DSSwitchState extends State<DSSwitch> {
  final Duration animationDuration = const Duration(milliseconds: 300);
  final Curve animationCurve = Curves.easeInOut;
  final double switchWidth = 34;
  final double switchHeight = 20;
  final double thumbSize = 16;

  late SwitchThumbColors switchThumbColors;
  late SwitchFillColors switchFillColors;
  late SwitchTextColors switchTextColors;
  late double rowSpacing;
  late Color textColor;
  late Color backgroundColor;
  late Color switchThumbColor;
  late TextStyle textStyle;
  late EdgeInsets switchPadding;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    switchThumbColors = context.componentColors.switchThumb;
    switchFillColors = context.componentColors.switchFill;
    switchTextColors = context.componentColors.switchText;
    rowSpacing = context.componentGap.xSmall;
    textColor = widget.value ? switchTextColors.activated : switchTextColors.base;
    backgroundColor = widget.value ? switchFillColors.activated : switchFillColors.base;
    switchThumbColor = widget.value ? switchThumbColors.activated : switchThumbColors.base;
    textStyle = context.textTheme.labelMMedium;
    switchPadding = .all(context.componentPadding.xxSmall);

    if (widget.isEnabled == false) {
      textColor = switchTextColors.disabled;
      backgroundColor = switchFillColors.disabled;
      switchThumbColor = switchThumbColors.disabled;
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
        width: switchWidth,
        height: switchHeight,
        padding: switchPadding,
        alignment: widget.value ? Alignment.centerRight : Alignment.centerLeft,
        decoration: BoxDecoration(color: backgroundColor, borderRadius: .circular(switchHeight)),
        duration: animationDuration,
        curve: animationCurve,
        child: AnimatedContainer(
          duration: animationDuration,
          curve: animationCurve,
          width: thumbSize,
          height: thumbSize,
          decoration: BoxDecoration(shape: BoxShape.circle, color: switchThumbColor),
        ),
      ),
    );
  }
}
