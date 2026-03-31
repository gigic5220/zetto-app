import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../atoms/ds_filter_button.dart';

class DSFilterAction extends StatefulWidget {
  const DSFilterAction({super.key, required this.filters, this.horizontalPadding = 0});

  final List<DSFilterButton> filters;
  final double horizontalPadding;

  @override
  State<DSFilterAction> createState() => _DSFilterActionState();
}

class _DSFilterActionState extends State<DSFilterAction> {
  late double spacing;
  late EdgeInsets margin;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSFilterAction oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    spacing = context.componentGap.small;
    margin = .symmetric(vertical: context.componentPadding.medium, horizontal: widget.horizontalPadding);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: margin,
      scrollDirection: Axis.horizontal,
      child: Row(spacing: spacing, children: widget.filters),
    );
  }
}
