import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../atoms/ds_wrapper_select_panel.dart';
import '../common/common_grid_view.dart';

class DSFixWrapperSelect extends StatefulWidget {
  const DSFixWrapperSelect({super.key, required this.count, required this.panels});

  final int count;
  final List<DSWrapperSelectPanel> panels;

  @override
  State<DSFixWrapperSelect> createState() => _DSFixWrapperSelectState();
}

class _DSFixWrapperSelectState extends State<DSFixWrapperSelect> {
  late EdgeInsets margin;
  late double spacing;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSFixWrapperSelect oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = EdgeInsets.symmetric(vertical: context.componentPadding.xSmall);
    spacing = context.componentGap.small;
  }

  @override
  Widget build(BuildContext context) {
    return CommonGridView(
      itemRowCount: widget.count,
      itemRowSpacing: spacing,
      itemColumnSpacing: spacing,
      widgetList: widget.panels,
    );
  }
}
