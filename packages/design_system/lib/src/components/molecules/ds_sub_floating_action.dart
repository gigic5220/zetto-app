import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';

class DSSubFloatingAction extends StatefulWidget {
  const DSSubFloatingAction({super.key, required this.button});

  final Widget button;

  @override
  State<DSSubFloatingAction> createState() => _DSSubFloatingActionState();
}

class _DSSubFloatingActionState extends State<DSSubFloatingAction> {
  late EdgeInsets margin;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSSubFloatingAction oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = .symmetric(vertical: context.componentPadding.small, horizontal: context.margin.width);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Center(child: widget.button),
    );
  }
}
