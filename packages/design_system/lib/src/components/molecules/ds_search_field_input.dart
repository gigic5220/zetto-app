import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../atoms/ds_search_field.dart';

class DSSearchFieldInput extends StatefulWidget {
  const DSSearchFieldInput({super.key, required this.label, required this.searchField});

  final String label;
  final DSSearchField searchField;

  @override
  State<DSSearchFieldInput> createState() => _DSSearchFieldInputState();
}

class _DSSearchFieldInputState extends State<DSSearchFieldInput> {
  late EdgeInsets margin;
  late EdgeInsets labelPadding;
  late TextStyle labelStyle;
  late double labelGap;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSSearchFieldInput oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = EdgeInsets.symmetric(vertical: context.componentPadding.medium);
    labelGap = context.componentGap.xSmall;
    labelPadding = EdgeInsets.symmetric(horizontal: context.componentPadding.xLarge);
    labelStyle = context.textTheme.labelSMedium;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: labelGap,
        children: [
          Padding(
            padding: labelPadding,
            child: Text(widget.label, style: labelStyle),
          ),
          widget.searchField,
        ],
      ),
    );
  }
}
