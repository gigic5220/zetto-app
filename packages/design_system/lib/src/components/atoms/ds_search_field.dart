import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../ions/ds_wrapper.dart';

enum DSSearchFieldState { normal, error }

class DSSearchField extends StatefulWidget {
  const DSSearchField({
    super.key,
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
    this.textInputAction,
    this.textAlign = TextAlign.start,
  });

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
  final TextInputAction? textInputAction;
  final TextAlign textAlign;
  final void Function({required String text})? onSubmitCallback;
  final void Function({required String text})? onChangeCallback;
  final String? Function(String? text)? validator;
  final void Function()? onTapClear;

  @override
  State<DSSearchField> createState() => _DSSearchFieldState();
}

class _DSSearchFieldState extends State<DSSearchField> {
  DSSearchFieldState textfieldState = DSSearchFieldState.normal;
  late TextEditingController textEditingController;
  late FocusNode focusNode;
  int textCount = 0;
  String? errorText;
  bool hasFocus = false;

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
      _calculate();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSSearchField oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    final searchFieldFill = context.componentColors.inputFill;
    final searchFieldBorder = context.componentColors.inputBorder;
    final searchFieldText = context.componentColors.inputText;

    switch (widget.isEnabled) {
      case true:
        backgroundColor = switch (textfieldState) {
          DSSearchFieldState.normal => hasFocus ? Colors.transparent : searchFieldFill.base,
          DSSearchFieldState.error => Colors.transparent,
        };
        borderColor = switch (textfieldState) {
          DSSearchFieldState.normal => hasFocus ? searchFieldBorder.focus : searchFieldBorder.base,
          DSSearchFieldState.error => searchFieldBorder.warning,
        };
        textColor = searchFieldText.primary;
        placeholderTextColor = searchFieldText.tertiary;
        suffixTextColor = searchFieldText.primary;
        supportingTextColor = switch (textfieldState) {
          DSSearchFieldState.normal => searchFieldText.tertiary,
          DSSearchFieldState.error => searchFieldText.warning,
        };
        break;
      case false:
        backgroundColor = searchFieldFill.disabled;
        borderColor = searchFieldBorder.disabled;
        textColor = searchFieldText.disabled;
        placeholderTextColor = searchFieldText.disabled;
        suffixTextColor = searchFieldText.disabled;
        supportingTextColor = searchFieldText.disabled;
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
  Widget build(BuildContext context) {
    final bool isShowClearButton = hasFocus && textEditingController.text.isNotEmpty;
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor, strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: .circular(context.componentRadius.large),
      ),
      padding: .symmetric(vertical: context.componentPadding.xLarge, horizontal: context.componentPadding.xxLarge),
      child: Row(
        children: [
          DSWrapper(uri: Svgs.icReadingGlass, view: WrapperView.fix16, svgColor: placeholderTextColor),
          SizedBox(width: context.componentGap.small),
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
                  textfieldState = DSSearchFieldState.normal;
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
            ] else if (textfieldState == DSSearchFieldState.error) ...[
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
        ],
      ),
    );
  }

  String? validator(String? text) {
    if (widget.validator == null) return null;

    errorText = widget.validator?.call(text);

    if (errorText != null) {
      setState(() {
        textfieldState = DSSearchFieldState.error;
        _calculate();
      });
      return '';
    } else {
      setState(() {
        textfieldState = DSSearchFieldState.normal;
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
}
