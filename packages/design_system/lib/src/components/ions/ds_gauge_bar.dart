import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';

class DSGaugeBar extends StatefulWidget {
  const DSGaugeBar({super.key, required this.value, this.valueText, this.supportingText});

  /// 0 ~ 100 percentage
  final double value;
  final String? valueText;
  final String? supportingText;

  @override
  State<DSGaugeBar> createState() => _DSGaugeBarState();
}

class _DSGaugeBarState extends State<DSGaugeBar> {
  late TextStyle textStyle;
  late TextStyle supportingTextStyle;
  late Color backgroundColor;
  late Color valueColor;
  late double gap;

  /// 첫 프레임 이후 [widget.value]로 맞춰 등장 시에도 막대 너비가 애니메이션되게 한다.
  double _animatedValuePercent = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSGaugeBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
    if (oldWidget.value != widget.value) {
      setState(() => _animatedValuePercent = widget.value);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      setState(() => _animatedValuePercent = widget.value);
    });
  }

  void _calculate() {
    textStyle = context.textTheme.labelSMedium.copyWith(color: context.semanticColors.textTertiary);
    supportingTextStyle = context.textTheme.labelSMedium.copyWith(color: context.semanticColors.textTertiary);
    backgroundColor = context.semanticColors.fillSubtle;
    valueColor = context.semanticColors.brandPrimary;
    gap = context.componentGap.small;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Row(
          spacing: gap,
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(
                    children: [
                      Container(
                        height: 4,
                        width: constraints.maxWidth,
                        decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(4)),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        height: 4,
                        width: (_animatedValuePercent / 100) * constraints.maxWidth,
                        decoration: BoxDecoration(color: valueColor, borderRadius: BorderRadius.circular(4)),
                      ),
                    ],
                  );
                },
              ),
            ),
            if (widget.valueText != null) Text(widget.valueText!, style: textStyle),
          ],
        ),
        if (widget.supportingText != null) Text(widget.supportingText!, style: supportingTextStyle),
      ],
    );
  }
}
