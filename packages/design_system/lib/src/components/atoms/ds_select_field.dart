import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../../components/ions.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

class DSSelectField extends StatefulWidget {
  const DSSelectField({
    super.key,
    required this.placeholder,
    required this.onTap,
    this.text,
    this.textBadge,
    this.trailingUri,
    this.supportingText,
    this.isEnabled = true,
  });

  final String placeholder;
  final void Function() onTap;
  final String? text;
  final DSTextBadge? textBadge;
  final String? trailingUri;
  final String? supportingText;
  final bool isEnabled;

  @override
  State<DSSelectField> createState() => _DSSelectFieldState();
}

class _DSSelectFieldState extends State<DSSelectField> {
  late InputFillColors inputFillColors;
  late InputBorderColors inputBorderColors;
  late InputTextColors inputTextColors;
  late Color? backgroundColor;
  late Color borderColor;
  late Color textColor;
  late Color caretColor;

  late Color supportingTextColor;
  late Color placeholderTextColor;
  late Color iconColor;

  void _calculate() {
    inputFillColors = context.componentColors.inputFill;
    inputBorderColors = context.componentColors.inputBorder;
    inputTextColors = context.componentColors.inputText;

    switch (widget.isEnabled) {
      case true:
        backgroundColor = Colors.transparent;
        borderColor = inputBorderColors.base;
        textColor = inputTextColors.primary;
        placeholderTextColor = inputTextColors.tertiary;
        iconColor = inputTextColors.tertiary;
        supportingTextColor = inputTextColors.tertiary;
        break;
      case false:
        backgroundColor = inputFillColors.disabled;
        borderColor = inputBorderColors.disabled;
        textColor = inputTextColors.disabled;
        placeholderTextColor = inputTextColors.disabled;
        iconColor = inputTextColors.disabled;
        supportingTextColor = inputTextColors.disabled;
        break;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSSelectField oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      crossAxisAlignment: .start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: borderColor, strokeAlign: BorderSide.strokeAlignOutside),
            borderRadius: .circular(context.componentRadius.large),
          ),
          padding: .symmetric(vertical: context.componentPadding.xLarge, horizontal: context.componentPadding.xxLarge),
          child: Row(
            spacing: context.componentGap.xxSmall,
            children: [
              Text(
                widget.text ?? widget.placeholder,
                style: context.textTheme.bodyMMedium.copyWith(
                  color: widget.text?.isNotEmpty == true ? textColor : placeholderTextColor,
                ),
              ),
              ?widget.textBadge,
              if (widget.trailingUri != null) ...[
                const Spacer(),
                DSWrapper(uri: widget.trailingUri!, view: WrapperView.fix16, svgColor: iconColor),
              ],
            ],
          ),
        ),
        if (widget.supportingText?.isNotEmpty == true)
          Padding(
            padding: const .only(left: 12),
            child: Text(
              widget.supportingText!,
              style: context.textTheme.labelSMedium.copyWith(color: supportingTextColor),
            ),
          ),
      ],
    );
  }
}
