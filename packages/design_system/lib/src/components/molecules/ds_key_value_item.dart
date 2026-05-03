import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';

enum DSKeyValueItemSize { large, medium, small }

class DSKeyValueItem extends StatefulWidget {
  const DSKeyValueItem._({required this.size, required this.title, this.description});

  factory DSKeyValueItem.large({required String title, String? description}) =>
      DSKeyValueItem._(size: .large, title: title, description: description);

  factory DSKeyValueItem.medium({
    required String title,
    String? description,
    bool isEnabled = true,
    VoidCallback? onTap,
  }) => DSKeyValueItem._(size: .medium, title: title, description: description);

  factory DSKeyValueItem.small({
    required String title,
    String? description,
    bool isEnabled = true,
    VoidCallback? onTap,
  }) => DSKeyValueItem._(size: .small, title: title, description: description);

  final DSKeyValueItemSize size;
  final String title;
  final String? description;

  @override
  State<DSKeyValueItem> createState() => _DSKeyValueItemState();
}

class _DSKeyValueItemState extends State<DSKeyValueItem> {
  late EdgeInsets margin;
  late TextStyle titleStyle;
  late TextStyle descriptionTextStyle;
  late double titleGap;
  late double trailingGap;
  late Color descriptionColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSKeyValueItem oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = .symmetric(vertical: context.componentPadding.xLarge);
    titleGap = context.componentGap.small;
    trailingGap = context.componentGap.medium;
    descriptionColor = context.componentColors.dataText.secondary;

    switch (widget.size) {
      case .large:
        titleStyle = context.textTheme.bodyXLMedium;
        descriptionTextStyle = context.textTheme.labelLMedium;
        break;
      case .medium:
        titleStyle = context.textTheme.bodyLMedium;
        descriptionTextStyle = context.textTheme.labelLMedium;
        break;
      case .small:
        titleStyle = context.textTheme.bodyMMedium;
        descriptionTextStyle = context.textTheme.labelMMedium;
        break;
    }

    descriptionTextStyle = descriptionTextStyle.copyWith(color: descriptionColor);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Row(
        children: [
          SizedBox(width: 100, child: Text(widget.title, style: titleStyle, maxLines: 2)),
          if (widget.description?.isNotEmpty == true) ...[
            SizedBox(width: titleGap),
            Expanded(child: Text(widget.description!, style: descriptionTextStyle, maxLines: 2)),
          ],
        ],
      ),
    );
  }
}
