import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

enum DSSearchActionState { normal, disabled }

class DSSearchAction extends StatefulWidget {
  const DSSearchAction({super.key, required this.state, required this.leadingUri, this.onTap});

  final DSSearchActionState state;
  final String leadingUri;
  final VoidCallback? onTap;

  @override
  State<DSSearchAction> createState() => _DSSearchActionState();
}

class _DSSearchActionState extends State<DSSearchAction> {
  late SearchActionBorderColors searchActionBorder;
  late SearchActionFillColors searchActionFill;
  late SearchActionTextColors searchActionText;
  late EdgeInsets margin;
  late EdgeInsets padding;
  late Color? backgroundColor;
  late BoxBorder? border;
  late double borderRadius;
  late double rowSpacing;
  late TextStyle textStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSSearchAction oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    searchActionBorder = context.componentColors.searchActionBorder;
    searchActionFill = context.componentColors.searchActionFill;
    searchActionText = context.componentColors.searchActionText;
    padding = .symmetric(vertical: context.componentPadding.large, horizontal: context.componentPadding.xLarge);
    margin = .symmetric(vertical: context.componentPadding.medium);
    borderRadius = context.componentRadius.xLarge;
    rowSpacing = context.componentGap.medium;
    textStyle = context.textTheme.bodyLMedium;

    switch (widget.state) {
      case .normal:
        backgroundColor = null;
        border = Border.all(color: searchActionBorder.base, strokeAlign: BorderSide.strokeAlignOutside);
        textStyle = textStyle.copyWith(color: searchActionText.base);
        break;
      case .disabled:
        backgroundColor = searchActionFill.disabled;
        border = null;
        textStyle = textStyle.copyWith(color: searchActionText.disabled);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(border: border, borderRadius: .circular(borderRadius), color: backgroundColor),
        child: Row(
          spacing: rowSpacing,
          children: [
            DSWrapper(uri: widget.leadingUri, view: WrapperView.fix32),
            Expanded(child: Text('검색어를 입력해주세요', style: textStyle)),
            IgnorePointer(
              ignoring: true,
              child: DSIconSolidButton.small(
                variant: .tertiary,
                iconUri: Svgs.icReadingGlass,
                isEnabled: widget.state == .normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
