import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../extension/context_extension.dart';
import '../common/common_grid_view.dart';

class DSFixSelect extends StatefulWidget {
  const DSFixSelect({super.key, required this.count, required this.panels});

  final int count;
  final List<DSSelectPanel> panels;

  @override
  State<DSFixSelect> createState() => _DSFixSelectState();
}

class _DSFixSelectState extends State<DSFixSelect> {
  late EdgeInsets margin;
  late double spacing;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSFixSelect oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = EdgeInsets.symmetric(vertical: context.componentPadding.xSmall);
    spacing = context.componentGap.small;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: CommonGridView(
        itemRowCount: widget.count,
        itemRowSpacing: spacing,
        itemColumnSpacing: spacing,
        widgetList: widget.panels,
      ),
    );
  }
}
