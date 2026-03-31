import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';

enum DSFloatingActionFlow { horizontal, vertical }

class DSFloatingAction extends StatefulWidget {
  const DSFloatingAction._({required this.flow, this.actions, this.action});

  factory DSFloatingAction.horizontal({required Widget action}) =>
      DSFloatingAction._(flow: .horizontal, action: action);
  factory DSFloatingAction.vertical({required List<Widget> actions}) =>
      DSFloatingAction._(flow: .vertical, actions: actions);

  final DSFloatingActionFlow flow;
  final List<Widget>? actions;
  final Widget? action;

  @override
  State<DSFloatingAction> createState() => _DSFloatingActionState();
}

class _DSFloatingActionState extends State<DSFloatingAction> {
  late EdgeInsets margin;
  late double spacing;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSFloatingAction oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = .symmetric(vertical: context.componentPadding.medium, horizontal: context.margin.width);
    spacing = context.componentGap.medium;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Row(
        spacing: spacing,
        mainAxisAlignment: .end,
        children: [
          switch (widget.flow) {
            .horizontal => widget.action ?? const SizedBox.shrink(),
            .vertical => Column(spacing: spacing, crossAxisAlignment: .end, children: widget.actions ?? []),
          },
        ],
      ),
    );
  }
}
