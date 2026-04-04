import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

enum DSTextFieldState { normal, error }

/// [text]가 비어 있으면 [message], 아니면 null.
typedef DSTextFieldValidator = String? Function(String? text);

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
    this.externalError,
    this.keyboardType,
    this.inputFormatters,
    this.autoDisposeControllers = true,
    this.onTapClear,
    this.outSideUnfocus = true,
    this.isShowClearButton = true,
    this.isShowTextCounter = false,
    this.textInputAction,
    this.textAlign = TextAlign.start,
    this.obscureText = false,
  });

  /// 폼 [validator] 밖에서 올린 에러(예: 로그인 API 실패).
  /// - `null`: 없음
  /// - `''`: 메시지 없이 경고 보더만
  /// - 그 외: 보더 + 하단 메시지
  final String? externalError;

  final String? supportingText;
  final String? suffixText;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final int? maxLength;
  final bool isEnabled;
  final bool autoFocus;
  final bool obscureText;
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
  final DSTextFieldValidator? validator;
  final void Function()? onTapClear;

  static String? validateRequired(String? text, {required String message}) {
    if (text == null || text.isEmpty) return message;
    return null;
  }

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
  bool _externalDismissed = false;

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
        final bool externalActive = _isExternalErrorActive;
        final bool showErrorChrome = textfieldState == DSTextFieldState.error || externalActive;
        borderColor = showErrorChrome
            ? inputBorderColors.warning
            : (hasFocus ? inputBorderColors.focus : inputBorderColors.base);
        textColor = inputTextColors.primary;
        placeholderTextColor = inputTextColors.tertiary;
        suffixTextColor = inputTextColors.primary;
        supportingTextColor = showErrorChrome ? inputTextColors.warning : inputTextColors.tertiary;
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

  bool get _isExternalErrorActive =>
      widget.externalError != null && !_externalDismissed;

  String? get _externalMessage {
    if (!_isExternalErrorActive) return null;
    final e = widget.externalError!;
    return e.isEmpty ? null : e;
  }

  @override
  void didUpdateWidget(covariant DSTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.externalError != oldWidget.externalError) {
      _externalDismissed = false;
    }
    _calculate();
  }

  @override
  Widget build(BuildContext context) {
    final String? inlineError = errorText?.isNotEmpty == true ? errorText : null;
    final String? lineText = inlineError ?? _externalMessage ?? widget.supportingText;
    final bool isShowSupportingText = lineText?.isNotEmpty == true;
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
              lineText!,
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

    final String? result = widget.validator?.call(text);

    if (result != null) {
      // `''`: 폼은 invalid로 두고, 메시지 줄은 숨김(보더만).
      errorText = result.isEmpty ? null : result;
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
              obscureText: widget.obscureText,
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
                  if (widget.externalError != null) {
                    _externalDismissed = true;
                  }
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
              errorBuilder: (context, error) {
                return const SizedBox.shrink();
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
            ] else if (textfieldState == DSTextFieldState.error || _isExternalErrorActive) ...[
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
