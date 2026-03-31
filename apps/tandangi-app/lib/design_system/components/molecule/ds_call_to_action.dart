import 'package:flutter/material.dart';

enum DSCallToActionFlow { horizontal, vertical }

class DSCallToAction extends StatefulWidget {
  const DSCallToAction._({
    required this.flow,
    required this.buttons,
    this.leadingButton,
    this.trailingButton,
  });

  factory DSCallToAction.horizontal({
    required List<Widget> buttons,
    Widget? leadingButton,
    Widget? trailingButton,
  }) => DSCallToAction._(
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: widget.flow == .horizontal
          ? Row(
              spacing: 10,
              children: [
                if (widget.leadingButton != null) widget.leadingButton!,
                ...widget.buttons.map((button) => Expanded(child: button)),
                if (widget.trailingButton != null) widget.trailingButton!,
              ],
            )
          : Column(
              crossAxisAlignment: .stretch,
              spacing: 10,
              children: widget.buttons,
            ),
    );
  }
}
