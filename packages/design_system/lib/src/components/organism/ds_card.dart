import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../common/animated_button.dart';

enum DSCardSize { small, medium, large }

class DSCard extends StatefulWidget {
  const DSCard({super.key, required this.child, required this.size, this.onTap});

  // 자유롭게 편집 가능
  final Widget child;
  final DSCardSize size;
  final VoidCallback? onTap;

  @override
  State<DSCard> createState() => _DSCardState();
}

class _DSCardState extends State<DSCard> {
  late EdgeInsets padding;
  late double borderRadius;
  late Color backgroundColor;
  late Color borderColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    backgroundColor = context.componentColors.cardFill.base;
    borderColor = context.componentColors.cardBorder.base;
    borderRadius = context.componentRadius.xLarge;

    switch (widget.size) {
      case .large:
        padding = .symmetric(vertical: context.componentPadding.xxLarge, horizontal: context.componentPadding.xxxLarge);
        break;
      case .medium:
        padding = .symmetric(vertical: context.componentPadding.medium, horizontal: context.componentPadding.xxxLarge);
        break;
      case .small:
        padding = .symmetric(vertical: context.componentPadding.xSmall, horizontal: context.componentPadding.xxxLarge);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final cardWidget = Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor, strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: widget.child,
    );

    return widget.onTap != null ? AnimatedButton(onTap: widget.onTap, child: cardWidget) : cardWidget;
  }
}
