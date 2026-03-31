import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../ions/ds_wrapper.dart';

enum DSKeyValueActionSize { large, medium, small }

class DSKeyValueAction extends StatefulWidget {
  const DSKeyValueAction._({
    required this.size,
    required this.title,
    required this.trailingText,
    required this.isEnabled,
    required this.onTap,
  });

  factory DSKeyValueAction.large({
    required String title,
    required String trailingText,
    bool isEnabled = true,
    VoidCallback? onTap,
  }) => DSKeyValueAction._(size: .large, title: title, trailingText: trailingText, isEnabled: isEnabled, onTap: onTap);

  factory DSKeyValueAction.medium({
    required String title,
    required String trailingText,
    bool isEnabled = true,
    VoidCallback? onTap,
  }) => DSKeyValueAction._(size: .medium, title: title, trailingText: trailingText, isEnabled: isEnabled, onTap: onTap);

  factory DSKeyValueAction.small({
    required String title,
    required String trailingText,
    bool isEnabled = true,
    VoidCallback? onTap,
  }) => DSKeyValueAction._(size: .small, title: title, trailingText: trailingText, isEnabled: isEnabled, onTap: onTap);

  final DSKeyValueActionSize size;
  final String title;
  final String trailingText;
  final bool isEnabled;
  final VoidCallback? onTap;

  @override
  State<DSKeyValueAction> createState() => _DSKeyValueActionState();
}

class _DSKeyValueActionState extends State<DSKeyValueAction> {
  late EdgeInsets margin;
  late TextStyle titleStyle;
  late TextStyle trailingTextStyle;
  late double titleGap;
  late double trailingGap;
  late Color disabledColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSKeyValueAction oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = .symmetric(vertical: context.componentPadding.xLarge);
    titleGap = context.componentGap.small;
    trailingGap = context.componentGap.medium;
    disabledColor = context.componentColors.dataText.tertiary;

    switch (widget.size) {
      case .large:
        titleStyle = context.textTheme.bodyXLMedium;
        trailingTextStyle = context.textTheme.labelLMedium;
        break;
      case .medium:
        titleStyle = context.textTheme.bodyLMedium;
        trailingTextStyle = context.textTheme.labelLMedium;
        break;
      case .small:
        titleStyle = context.textTheme.bodyMMedium;
        trailingTextStyle = context.textTheme.labelMMedium;
        break;
    }

    if (!widget.isEnabled) {
      trailingTextStyle = trailingTextStyle.copyWith(color: disabledColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isEnabled ? widget.onTap : null,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: margin,
        child: Row(
          children: [
            SizedBox(width: 100, child: Text(widget.title, style: titleStyle, maxLines: 2)),
            SizedBox(width: titleGap),
            Expanded(
              child: Row(
                mainAxisAlignment: .end,
                children: [
                  Text(widget.trailingText, style: trailingTextStyle, maxLines: 2),
                  SizedBox(width: trailingGap),
                  DSWrapper(uri: Svgs.icChevronRight, view: WrapperView.fix12, svgColor: disabledColor),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
