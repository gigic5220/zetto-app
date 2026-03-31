import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';

enum DSCallToActionFlow { horizontal, vertical }

class DSCallToAction extends StatefulWidget {
  const DSCallToAction._({required this.flow, required this.buttons, this.leadingButton, this.trailingButton});

  factory DSCallToAction.horizontal({required List<Widget> buttons, Widget? leadingButton, Widget? trailingButton}) =>
      DSCallToAction._(
        flow: .horizontal,
        buttons: buttons,
        leadingButton: leadingButton,
        trailingButton: trailingButton,
      );
  factory DSCallToAction.vertical({required List<Widget> buttons}) =>
      DSCallToAction._(flow: .vertical, buttons: buttons);

  final DSCallToActionFlow flow;
  final List<Widget> buttons;
  final Widget? leadingButton;
  final Widget? trailingButton;

  @override
  State<DSCallToAction> createState() => _DSCallToActionState();
}

class _DSCallToActionState extends State<DSCallToAction> {
  late EdgeInsets margin;
  late double spacing;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSCallToAction oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = .symmetric(vertical: context.componentPadding.xLarge, horizontal: context.margin.width);
    spacing = context.componentGap.small;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: widget.flow == .horizontal
          ? Row(
              spacing: spacing,
              children: [
                if (widget.leadingButton != null) widget.leadingButton!,
                ...widget.buttons.map((button) => Expanded(child: button)),
                if (widget.trailingButton != null) widget.trailingButton!,
              ],
            )
          : Column(crossAxisAlignment: .stretch, spacing: spacing, children: widget.buttons),
    );
  }
}
