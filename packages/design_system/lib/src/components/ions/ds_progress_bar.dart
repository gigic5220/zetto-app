import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';

enum DSProgressBarType { fill, fixed }

class DSProgressBar extends StatefulWidget {
  const DSProgressBar({super.key, required this.type, required this.totalCount, required this.currentCount});

  final DSProgressBarType type;
  final int totalCount;
  final int currentCount;

  @override
  State<DSProgressBar> createState() => _DSProgressBarState();
}

class _DSProgressBarState extends State<DSProgressBar> {
  late EdgeInsets margin;
  late Color backgroundColor;
  late Color valueColor;
  late double gap;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = .symmetric(vertical: context.componentPadding.xSmall);
    backgroundColor = context.semanticColors.fillSubtle;
    valueColor = context.semanticColors.brandPrimary;

    switch (widget.type) {
      case DSProgressBarType.fill:
        gap = context.componentGap.xxSmall;
        break;
      case DSProgressBarType.fixed:
        gap = context.componentGap.small;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        spacing: gap,
        mainAxisSize: .min,
        children: List.generate(
          widget.totalCount,
          (index) => switch (widget.type) {
            .fill => _fillProgressBar(index < widget.currentCount),
            .fixed => _fixedProgressBar(index < widget.currentCount),
          },
        ),
      ),
    );
  }

  Widget _fillProgressBar(bool isEnabled) {
    return Expanded(
      child: Container(
        height: 2,
        decoration: BoxDecoration(
          color: isEnabled ? valueColor : backgroundColor,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }

  Widget _fixedProgressBar(bool isEnabled) {
    return Flexible(
      child: Container(
        height: 4,
        constraints: BoxConstraints(maxWidth: 60),
        decoration: BoxDecoration(
          color: isEnabled ? valueColor : backgroundColor,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
