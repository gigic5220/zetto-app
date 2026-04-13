import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../extension/context_extension.dart';
import '../../responsive/responsive_type.dart';
import '../molecules/ds_action.dart';

class DSModal extends StatefulWidget {
  const DSModal({super.key, required this.noticeWidget, required this.actionWidget});

  // 자유롭게 편집 가능
  final DSNotice noticeWidget;
  final DSAction actionWidget;

  @override
  State<DSModal> createState() => _DSModalState();
}

class _DSModalState extends State<DSModal> {
  late Color backgroundColor;
  late Color borderColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSModal oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    backgroundColor = context.componentColors.modalFill.base;
    borderColor = context.componentColors.modalBorder.base;
  }

  @override
  Widget build(BuildContext context) {
    final responsiveType = context.responsiveType;

    return Center(
      child: Container(
        width: responsiveType == AppResponsiveType.mobile ? double.infinity : 350,
        margin: EdgeInsets.symmetric(horizontal: context.margin.width),
        padding: EdgeInsets.all(context.componentPadding.xxxLarge),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor, strokeAlign: BorderSide.strokeAlignOutside),
          borderRadius: BorderRadius.circular(context.componentRadius.xxLarge),
        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: [widget.noticeWidget, widget.actionWidget]),
      ),
    );
  }
}
