import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSDividerType { line, fill }

class DSDivider extends StatefulWidget {
  const DSDivider({super.key, required this.type, this.usePadding = true});

  final DSDividerType type;
  final bool usePadding;

  @override
  State<DSDivider> createState() => _DSDividerState();
}

class _DSDividerState extends State<DSDivider> {
  late DividerFillColors dividerFill;
  late EdgeInsets margin;
  late double dividerHeight;
  late Color dividerColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSDivider oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    dividerFill = context.componentColors.dividerFill;
    margin = .symmetric(vertical: context.componentPadding.medium);
    dividerHeight = switch (widget.type) {
      DSDividerType.line => 1,
      DSDividerType.fill => 8,
    };
    dividerColor = dividerFill.base;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: widget.usePadding ? margin : .zero,
      height: dividerHeight,
      color: dividerColor,
    );
  }
}
