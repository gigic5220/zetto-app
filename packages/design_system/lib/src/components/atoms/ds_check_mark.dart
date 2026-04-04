import 'package:flutter/material.dart';

import '../../../components/ions.dart';
import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

class DSCheckMark extends StatefulWidget {
  const DSCheckMark({super.key, required this.value, this.onChanged, this.isEnabled = true});

  final bool value;
  final Function(bool value)? onChanged;
  final bool isEnabled;

  @override
  State<DSCheckMark> createState() => _DSCheckMarkState();
}

class _DSCheckMarkState extends State<DSCheckMark> {
  final Duration animationDuration = const Duration(milliseconds: 300);
  final Curve animationCurve = Curves.easeInOut;

  late CheckMarkTextColors checkMarkTextColors;

  late Color textColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSCheckMark oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    checkMarkTextColors = context.componentColors.checkMarkText;

    switch (widget.isEnabled) {
      case true:
        textColor = widget.value ? checkMarkTextColors.activated : checkMarkTextColors.base;
        break;
      case false:
        textColor = checkMarkTextColors.disabled;
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
      child: TweenAnimationBuilder<Color?>(
        tween: ColorTween(end: textColor),
        duration: animationDuration,
        curve: animationCurve,
        builder: (context, color, _) => Padding(
          padding: const .all(2),
          child: DSWrapper(uri: Svgs.icCheckmark, view: WrapperView.fix16, svgColor: color ?? textColor),
        ),
      ),
    );
  }
}
