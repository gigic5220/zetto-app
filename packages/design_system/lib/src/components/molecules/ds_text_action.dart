import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../atoms/ds_text_button.dart';

enum DSTextActionFlow { horizontal, vertical }

class DSTextAction extends StatefulWidget {
  const DSTextAction._({required this.flow, required this.buttons, required this.isExpanded});

  factory DSTextAction.horizontal({required List<DSTextButton> buttons, bool isExpanded = true}) =>
      DSTextAction._(flow: .horizontal, buttons: buttons, isExpanded: isExpanded);
  factory DSTextAction.vertical({required List<DSTextButton> buttons, bool isExpanded = true}) =>
      DSTextAction._(flow: .vertical, buttons: buttons, isExpanded: isExpanded);

  final DSTextActionFlow flow;
  final List<DSTextButton> buttons;
  final bool isExpanded;

  @override
  State<DSTextAction> createState() => _DSTextActionState();
}

class _DSTextActionState extends State<DSTextAction> {
  late EdgeInsets margin;
  late double spacing;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSTextAction oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = .symmetric(vertical: context.componentPadding.medium);
    spacing = context.componentGap.medium;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: widget.flow == .horizontal
          ? Row(
              spacing: spacing,
              mainAxisAlignment: .center,
              children: widget.buttons.map((button) => widget.isExpanded ? Expanded(child: button) : button).toList(),
            )
          : Center(
              child: Column(
                crossAxisAlignment: widget.isExpanded ? .stretch : .center,
                spacing: spacing,
                children: widget.buttons,
              ),
            ),
    );
  }
}
