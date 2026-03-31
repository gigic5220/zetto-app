import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../atoms/ds_text_field.dart';
import '../ions/ds_wrapper.dart';

enum DSTextFieldInputType { single, horizontalDouble, verticalDouble, button, verticalButton, security }

class DSTextFieldInput extends StatefulWidget {
  const DSTextFieldInput._({
    required this.type,
    required this.label,
    required this.textField,
    this.additionalTextField,
    this.button,
  });

  factory DSTextFieldInput.single({required String label, required DSTextField textField}) {
    return DSTextFieldInput._(type: DSTextFieldInputType.single, label: label, textField: textField);
  }

  factory DSTextFieldInput.horizontalDouble({
    required String label,
    required DSTextField textField,
    required DSTextField additionalTextField,
  }) {
    return DSTextFieldInput._(
      type: DSTextFieldInputType.horizontalDouble,
      label: label,
      textField: textField,
      additionalTextField: additionalTextField,
    );
  }

  factory DSTextFieldInput.verticalDouble({
    required String label,
    required DSTextField textField,
    required DSTextField additionalTextField,
  }) {
    return DSTextFieldInput._(
      type: DSTextFieldInputType.verticalDouble,
      label: label,
      textField: textField,
      additionalTextField: additionalTextField,
    );
  }

  factory DSTextFieldInput.button({required String label, required DSTextField textField, required Widget button}) {
    return DSTextFieldInput._(type: DSTextFieldInputType.button, label: label, textField: textField, button: button);
  }

  factory DSTextFieldInput.verticalButton({
    required String label,
    required DSTextField textField,
    required Widget button,
  }) {
    return DSTextFieldInput._(
      type: DSTextFieldInputType.verticalButton,
      label: label,
      textField: textField,
      button: button,
    );
  }

  factory DSTextFieldInput.security({
    required String label,
    required DSTextField textField,
    required DSTextField additionalTextField,
  }) {
    return DSTextFieldInput._(
      type: DSTextFieldInputType.security,
      label: label,
      textField: textField,
      additionalTextField: additionalTextField,
    );
  }

  final DSTextFieldInputType type;
  final String label;
  final DSTextField textField;
  final DSTextField? additionalTextField;
  final Widget? button;

  @override
  State<DSTextFieldInput> createState() => _DSTextFieldInputState();
}

class _DSTextFieldInputState extends State<DSTextFieldInput> {
  late EdgeInsets margin;
  late EdgeInsets labelPadding;
  late TextStyle labelStyle;
  late double labelGap;
  late double textFieldGap;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSTextFieldInput oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = EdgeInsets.symmetric(vertical: context.componentPadding.medium);
    labelPadding = EdgeInsets.symmetric(horizontal: context.componentPadding.xLarge);
    labelStyle = context.textTheme.labelSMedium;
    labelGap = context.componentGap.xSmall;
    textFieldGap = context.componentGap.small;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: labelPadding,
            child: Text(widget.label, style: labelStyle),
          ),
          SizedBox(height: labelGap),
          switch (widget.type) {
            .single => _singleWidget(),
            .horizontalDouble => _horizontalDoubleWidget(),
            .verticalDouble => _verticalDoubleWidget(),
            .button => _buttonWidget(),
            .verticalButton => _verticalButtonWidget(),
            .security => _securityWidget(),
          },
        ],
      ),
    );
  }

  Widget _singleWidget() {
    return widget.textField;
  }

  Widget _horizontalDoubleWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: textFieldGap,
      children: [
        Expanded(child: widget.textField),
        Expanded(child: widget.additionalTextField ?? const SizedBox.shrink()),
      ],
    );
  }

  Widget _verticalDoubleWidget() {
    return Column(
      spacing: textFieldGap,
      children: [widget.textField, widget.additionalTextField ?? const SizedBox.shrink()],
    );
  }

  Widget _buttonWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: textFieldGap,
      children: [
        Expanded(child: widget.textField),
        widget.button ?? const SizedBox.shrink(),
      ],
    );
  }

  Widget _verticalButtonWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: textFieldGap,
      children: [widget.textField, widget.button ?? const SizedBox.shrink()],
    );
  }

  Widget _securityWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: widget.textField),
        SizedBox(width: textFieldGap),
        Expanded(
          child: Row(
            children: [
              Text('-', style: context.textTheme.labelSMedium),
              SizedBox(width: textFieldGap),
              SizedBox(width: 46, child: widget.additionalTextField ?? const SizedBox.shrink()),
              SizedBox(width: textFieldGap),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: context.componentGap.xxSmall,
                  children: List.generate(6, (index) => DSWrapper(uri: Svgs.icDotFill, view: WrapperView.fix12)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
