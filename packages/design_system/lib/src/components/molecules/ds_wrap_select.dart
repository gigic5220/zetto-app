import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../atoms/ds_select_panel.dart';

class DSWrapSelect extends StatefulWidget {
  const DSWrapSelect({super.key, required this.label, required this.panels});

  final String label;
  final List<DSSelectPanel> panels;

  @override
  State<DSWrapSelect> createState() => _DSWrapSelectState();
}

class _DSWrapSelectState extends State<DSWrapSelect> {
  late EdgeInsets margin;
  late EdgeInsets labelPadding;
  late double spacing;
  late double wrapSpacing;
  late TextStyle labelStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSWrapSelect oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = EdgeInsets.symmetric(vertical: context.componentPadding.xLarge);
    labelPadding = EdgeInsets.symmetric(horizontal: context.componentPadding.xLarge);
    spacing = context.componentGap.small;
    wrapSpacing = context.componentGap.small;
    labelStyle = context.textTheme.labelSMedium;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Column(
        spacing: spacing,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: labelPadding,
            child: Text(widget.label, style: labelStyle),
          ),
          Wrap(spacing: wrapSpacing, runSpacing: wrapSpacing, children: widget.panels),
        ],
      ),
    );
  }
}
