import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../../components/ions.dart';
import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSToastType { normal, success, warning, info }

class DSToast extends StatefulWidget {
  const DSToast({super.key, required this.text, this.wrapper, this.button, this.type = DSToastType.normal});

  final String text;
  final Widget? wrapper;
  final DSSolidButton? button;
  final DSToastType type;

  @override
  State<DSToast> createState() => _DSToastState();
}

class _DSToastState extends State<DSToast> {
  late ToastFillColors toastFillColors;
  late ToastTextColors toastTextColors;

  late Color textColor;
  late Color backgroundColor;
  late Color indicatorColor;
  late Color borderColor;
  late Widget? wrapper;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSToast oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    toastFillColors = context.componentColors.toastFill;
    toastTextColors = context.componentColors.toastText;
    backgroundColor = toastFillColors.primary;
    textColor = toastTextColors.primary;

    wrapper = switch (widget.type) {
      DSToastType.normal => widget.wrapper,
      DSToastType.success => DSWrapper(uri: Images.circleCheckGreen, view: WrapperView.fix16),
      DSToastType.warning => DSWrapper(uri: Images.circleX, view: WrapperView.fix16),
      DSToastType.info => DSWrapper(uri: Images.exclamation, view: WrapperView.fix16),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 50),
      margin: .symmetric(horizontal: context.margin.width),
      padding: .fromLTRB(
        context.componentPadding.xxLarge,
        context.componentPadding.xLarge,
        context.componentPadding.xLarge,
        context.componentPadding.xLarge,
      ),
      decoration: BoxDecoration(color: backgroundColor, borderRadius: .circular(context.componentRadius.xLarge)),
      child: Row(
        mainAxisSize: .min,
        spacing: context.componentGap.small,
        children: [
          ?wrapper,
          Expanded(
            child: Text(
              widget.text,
              style: context.textTheme.bodyMMedium.copyWith(color: textColor),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (widget.button != null) widget.button!,
        ],
      ),
    );
  }
}
