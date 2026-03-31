import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

enum DSTextFieldState { normal, error }

class DSTextField extends StatefulWidget {
  const DSTextField({
    super.key,
    this.suffixText,
    this.supportingText,
    this.textEditingController,
    this.focusNode,
    this.maxLength,
    this.isEnabled = true,
    this.autoFocus = false,
    this.onSubmitCallback,
    this.onChangeCallback,
    this.placeholder,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.autoDisposeControllers = true,
    this.onTapClear,
    this.outSideUnfocus = true,
    this.isShowClearButton = true,
    this.isShowTextCounter = false,
    this.textInputAction,
    this.textAlign = TextAlign.start,
  });

  final String? supportingText;
  final String? suffixText;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final int? maxLength;
  final bool isEnabled;
  final bool autoFocus;
  final String? placeholder;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool autoDisposeControllers;
  final bool outSideUnfocus;
  final bool isShowClearButton;
  final bool isShowTextCounter;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;
  final void Function({required String text})? onSubmitCallback;
  final void Function({required String text})? onChangeCallback;
  final String? Function({String? text})? validator;
  final void Function()? onTapClear;

  @override
  State<DSTextField> createState() => _DSTextFieldState();
}

class _DSTextFieldState extends State<DSTextField> {
  DSTextFieldState textfieldState = DSTextFieldState.normal;
  late TextEditingController textEditingController;
  late FocusNode focusNode;
  int textCount = 0;
  String? errorText;
  bool hasFocus = false;

  late InputFillColors inputFillColors;
  late InputBorderColors inputBorderColors;
  late InputTextColors inputTextColors;

  late Color? backgroundColor;
  late Color borderColor;
  late Color textColor;
  late Color caretColor;

  late Color supportingTextColor;
  late Color placeholderTextColor;
  late Color suffixTextColor;

  void _textEditingControllerListener() {
    setState(() {
      textCount = textEditingController.text.runes.length;
    });
  }

  void _focusNodeListener() {
    setState(() {
      hasFocus = focusNode.hasFocus;
    });
  }

  void _calculate() {
    inputFillColors = context.componentColors.inputFill;
    inputBorderColors = context.componentColors.inputBorder;
    inputTextColors = context.componentColors.inputText;

    switch (widget.isEnabled) {
      case true:
        backgroundColor = Colors.transparent;
        borderColor = switch (textfieldState) {
          DSTextFieldState.normal => hasFocus ? inputBorderColors.focus : inputBorderColors.base,
          DSTextFieldState.error => inputBorderColors.warning,
        };
        textColor = inputTextColors.primary;
        placeholderTextColor = inputTextColors.tertiary;
        suffixTextColor = inputTextColors.primary;
        supportingTextColor = switch (textfieldState) {
          DSTextFieldState.normal => inputTextColors.tertiary,
          DSTextFieldState.error => inputTextColors.warning,
        };
        break;
      case false:
        backgroundColor = inputFillColors.disabled;
        borderColor = inputBorderColors.disabled;
        textColor = inputTextColors.disabled;
        placeholderTextColor = inputTextColors.disabled;
        suffixTextColor = inputTextColors.disabled;
        supportingTextColor = inputTextColors.disabled;
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    textEditingController = widget.textEditingController ?? TextEditingController();
    focusNode = widget.focusNode ?? FocusNode();

    textEditingController.addListener(_textEditingControllerListener);
    focusNode.addListener(_focusNodeListener);
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.removeListener(_textEditingControllerListener);
    focusNode.removeListener(_focusNodeListener);
    if (widget.autoDisposeControllers) {
      textEditingController.dispose();
      focusNode.dispose();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    _calculate();
  }

  @override
  Widget build(BuildContext context) {
    final bool isShowSupportingText = errorText?.isNotEmpty == true || (widget.supportingText?.isNotEmpty == true);
    final bool isShowTextCounter = widget.isShowTextCounter && widget.maxLength != null;

    return Column(
      spacing: 4,
      crossAxisAlignment: .start,
      children: [
        _textFieldWidget(),

        if (isShowSupportingText)
          Padding(
            padding: const .only(left: 12),
            child: Text(
              errorText ?? widget.supportingText!,
              style: context.textTheme.labelSMedium.copyWith(color: supportingTextColor),
            ),
          ),
        if (isShowTextCounter)
          Padding(
            padding: const .only(left: 12),
            child: Text(
              '$textCount / ${widget.maxLength}',
              style: context.textTheme.labelSMedium.copyWith(color: supportingTextColor),
            ),
          ),
      ],
    );
  }

  String? validator(String? text) {
    if (widget.validator == null) return null;

    errorText = widget.validator?.call(text: text);

    if (errorText != null) {
      setState(() {
        textfieldState = DSTextFieldState.error;
        _calculate();
      });
      return '';
    } else {
      setState(() {
        textfieldState = DSTextFieldState.normal;
        _calculate();
      });
      return null;
    }
  }

  void onFieldSubmitted(String text) {
    if (validator(text) == null) {
      widget.onSubmitCallback?.call(text: text);
    }
  }

  Widget _textFieldWidget() {
    final bool isShowClearButton = widget.isShowClearButton && hasFocus && textEditingController.text.isNotEmpty;

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor, strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: .circular(context.componentRadius.large),
      ),
      padding: .symmetric(vertical: context.componentPadding.xLarge, horizontal: context.componentPadding.xxLarge),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              textInputAction: widget.textInputAction,
              enabled: widget.isEnabled,
              textAlign: widget.textAlign,
              controller: textEditingController,
              keyboardType: widget.keyboardType,
              inputFormatters: widget.inputFormatters,
              focusNode: focusNode,
              autofocus: widget.autoFocus,
              maxLength: widget.maxLength,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              onTapUpOutside: (event) => widget.outSideUnfocus ? focusNode.unfocus() : null,
              onChanged: (text) {
                setState(() {
                  errorText = null;
                  textfieldState = DSTextFieldState.normal;
                  _calculate();
                });
                widget.onChangeCallback?.call(text: text);
              },
              onFieldSubmitted: onFieldSubmitted,
              validator: validator,
              cursorHeight: 16,
              cursorWidth: 2,
              cursorColor: context.componentColors.inputCaret.base,
              cursorErrorColor: context.componentColors.inputCaret.base,
              style: context.textTheme.bodyMMedium.copyWith(
                decoration: TextDecoration.none,
                decorationThickness: 0,
                color: textColor,
              ),
              buildCounter: (context, {required currentLength, required isFocused, required maxLength}) {
                return null;
              },
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                hintText: widget.placeholder,
                hintStyle: context.textTheme.bodyMMedium.copyWith(color: placeholderTextColor),
                isDense: true,
                contentPadding: .symmetric(vertical: 0, horizontal: 0),
              ),
            ),
          ),
          if (widget.isEnabled) ...[
            if (isShowClearButton) ...[
              SizedBox(width: context.componentGap.small),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  textEditingController.clear();
                  widget.onTapClear?.call();
                },
                child: Padding(
                  padding: .fromLTRB(
                    context.componentPadding.medium,
                    context.componentPadding.xxSmall,
                    context.componentPadding.medium,
                    context.componentPadding.xxSmall,
                  ),
                  child: DSWrapper(
                    uri: Svgs.icCircleXFill,
                    svgColor: context.componentColors.inputText.tertiary,
                    view: WrapperView.fix16,
                  ),
                ),
              ),
            ] else if (textfieldState == DSTextFieldState.error) ...[
              SizedBox(width: context.componentGap.small),
              Padding(
                padding: .fromLTRB(
                  context.componentPadding.medium,
                  context.componentPadding.xxSmall,
                  context.componentPadding.medium,
                  context.componentPadding.xxSmall,
                ),
                child: DSWrapper(
                  uri: Svgs.icBangFill,
                  svgColor: context.componentColors.inputText.warning,
                  view: WrapperView.fix16,
                ),
              ),
            ],
          ],
          if (widget.suffixText?.isNotEmpty == true) ...[
            SizedBox(width: context.componentGap.small),
            Text(widget.suffixText!, style: context.textTheme.labelSMedium.copyWith(color: suffixTextColor)),
          ],
        ],
      ),
    );
  }
}
