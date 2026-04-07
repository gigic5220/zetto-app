import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../atoms/ds_segmented_control.dart';

class DSSegmentedInput extends StatefulWidget {
  const DSSegmentedInput({super.key, this.label, required this.segmentedInput});

  final String? label;
  final DSSegmentedControl segmentedInput;

  @override
  State<DSSegmentedInput> createState() => _DSSegmentedInputState();
}

class _DSSegmentedInputState extends State<DSSegmentedInput> {
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
  void didUpdateWidget(covariant DSSegmentedInput oldWidget) {
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
          if (widget.label?.isNotEmpty == true)
            Padding(
              padding: labelPadding,
              child: Text(widget.label!, style: labelStyle),
            ),
          widget.segmentedInput,
        ],
      ),
    );
  }
}
