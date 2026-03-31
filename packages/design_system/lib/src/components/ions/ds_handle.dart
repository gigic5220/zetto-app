import 'package:flutter/material.dart';

import '../../../extenstion.dart';

class DSHandle extends StatefulWidget {
  const DSHandle({super.key});

  @override
  State<DSHandle> createState() => _DSHandleState();
}

class _DSHandleState extends State<DSHandle> {
  late Color handleColor;
  late EdgeInsets margin;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSHandle oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    handleColor = context.semanticColors.fillSubtle;
    margin = .fromLTRB(
      context.margin.width,
      context.componentPadding.xxLarge,
      context.margin.width,
      context.componentPadding.medium,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 48,
        height: 4,
        margin: margin,
        decoration: BoxDecoration(color: handleColor, borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}
