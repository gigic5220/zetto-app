import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../atoms/ds_text_area.dart';

class DSTextAreaInput extends StatefulWidget {
  const DSTextAreaInput({super.key, required this.label, required this.textArea});

  final String label;
  final DSTextArea textArea;

  @override
  State<DSTextAreaInput> createState() => _DSTextAreaInputState();
}

class _DSTextAreaInputState extends State<DSTextAreaInput> {
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
  void didUpdateWidget(covariant DSTextAreaInput oldWidget) {
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
          widget.textArea,
        ],
      ),
    );
  }
}
