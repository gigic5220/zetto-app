import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../atoms/ds_select_field.dart';
import '../atoms/ds_text_field.dart';

enum DSSelectFieldInputType { single, horizontalDouble, verticalDouble, addInfo }

class DSSelectFieldInput extends StatefulWidget {
  const DSSelectFieldInput._({
    required this.type,
    required this.label,
    required this.selectField,
    this.additionalSelectField,
    this.addInfoTextField,
  });

  factory DSSelectFieldInput.single({required String label, required DSSelectField selectField}) {
    return DSSelectFieldInput._(type: DSSelectFieldInputType.single, label: label, selectField: selectField);
  }

  factory DSSelectFieldInput.horizontalDouble({
    required String label,
    required DSSelectField selectField,
    required DSSelectField additionalSelectField,
  }) {
    return DSSelectFieldInput._(
      type: DSSelectFieldInputType.horizontalDouble,
      label: label,
      selectField: selectField,
      additionalSelectField: additionalSelectField,
    );
  }

  factory DSSelectFieldInput.verticalDouble({
    required String label,
    required DSSelectField selectField,
    required DSSelectField additionalSelectField,
  }) {
    return DSSelectFieldInput._(
      type: DSSelectFieldInputType.verticalDouble,
      label: label,
      selectField: selectField,
      additionalSelectField: additionalSelectField,
    );
  }

  factory DSSelectFieldInput.addInfo({
    required String label,
    required DSSelectField selectField,
    required DSTextField addInfoTextField,
  }) {
    return DSSelectFieldInput._(
      type: DSSelectFieldInputType.addInfo,
      label: label,
      selectField: selectField,
      addInfoTextField: addInfoTextField,
    );
  }

  final DSSelectFieldInputType type;
  final String label;
  final DSSelectField selectField;
  final DSSelectField? additionalSelectField;
  final DSTextField? addInfoTextField;

  @override
  State<DSSelectFieldInput> createState() => _DSSelectFieldInputState();
}

class _DSSelectFieldInputState extends State<DSSelectFieldInput> {
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
  void didUpdateWidget(covariant DSSelectFieldInput oldWidget) {
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
            .addInfo => _addInfoWidget(),
          },
        ],
      ),
    );
  }

  Widget _singleWidget() {
    return widget.selectField;
  }

  Widget _horizontalDoubleWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: textFieldGap,
      children: [
        Expanded(child: widget.selectField),
        Expanded(child: widget.additionalSelectField ?? const SizedBox.shrink()),
      ],
    );
  }

  Widget _verticalDoubleWidget() {
    return Column(
      spacing: textFieldGap,
      children: [widget.selectField, widget.additionalSelectField ?? const SizedBox.shrink()],
    );
  }

  Widget _addInfoWidget() {
    return Column(
      spacing: textFieldGap,
      children: [widget.selectField, widget.addInfoTextField ?? const SizedBox.shrink()],
    );
  }
}
