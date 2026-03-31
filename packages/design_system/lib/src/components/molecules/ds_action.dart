import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';

enum DSActionFlow { horizontal, vertical }

class DSAction extends StatefulWidget {
  const DSAction._({required this.flow, required this.buttons, required this.isExpanded});

  factory DSAction.horizontal({required List<Widget> buttons, bool isExpanded = true}) =>
      DSAction._(flow: .horizontal, buttons: buttons, isExpanded: isExpanded);
  factory DSAction.vertical({required List<Widget> buttons, bool isExpanded = true}) =>
      DSAction._(flow: .vertical, buttons: buttons, isExpanded: isExpanded);

  final DSActionFlow flow;
  final List<Widget> buttons;
  final bool isExpanded;

  @override
  State<DSAction> createState() => _DSActionState();
}

class _DSActionState extends State<DSAction> {
  late EdgeInsets margin;
  late double spacing;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSAction oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = .symmetric(vertical: context.componentPadding.xSmall);
    spacing = context.componentGap.small;
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
