import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSViewTitleSize { large, medium, small, xSmall }

class DSViewTitle extends StatefulWidget {
  const DSViewTitle._({required this.size, required this.title, this.subTitle, this.description, this.trailingWidget});

  factory DSViewTitle.large({required String title, String? subTitle, String? description, Widget? trailingWidget}) =>
      DSViewTitle._(
        size: .large,
        title: title,
        subTitle: subTitle,
        description: description,
        trailingWidget: trailingWidget,
      );

  factory DSViewTitle.medium({required String title, String? subTitle, String? description, Widget? trailingWidget}) =>
      DSViewTitle._(
        size: .medium,
        title: title,
        subTitle: subTitle,
        description: description,
        trailingWidget: trailingWidget,
      );

  factory DSViewTitle.small({required String title, String? subTitle, String? description, Widget? trailingWidget}) =>
      DSViewTitle._(
        size: .small,
        title: title,
        subTitle: subTitle,
        description: description,
        trailingWidget: trailingWidget,
      );

  factory DSViewTitle.xSmall({required String title, String? subTitle, String? description, Widget? trailingWidget}) =>
      DSViewTitle._(
        size: .xSmall,
        title: title,
        subTitle: subTitle,
        description: description,
        trailingWidget: trailingWidget,
      );

  final DSViewTitleSize size;
  final String title;
  final String? subTitle;
  final String? description;
  final Widget? trailingWidget;

  @override
  State<DSViewTitle> createState() => _DSViewTitleState();
}

class _DSViewTitleState extends State<DSViewTitle> {
  late DataTextColors dataTextColors;

  late TextStyle subTitleTextStyle;
  late TextStyle titleTextStyle;
  late TextStyle descriptionTextStyle;

  late Color titleColor;
  late Color subTitleColor;
  late Color descriptionColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSViewTitle oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    dataTextColors = context.componentColors.dataText;

    titleColor = dataTextColors.primary;
    subTitleColor = dataTextColors.tertiary;
    descriptionColor = dataTextColors.tertiary;

    switch (widget.size) {
      case .large:
        subTitleTextStyle = context.textTheme.bodyLRegular;
        titleTextStyle = context.textTheme.titleXLSemiBold;
        descriptionTextStyle = context.textTheme.bodyLRegular;
        break;
      case .medium:
        subTitleTextStyle = context.textTheme.bodyLRegular;
        titleTextStyle = context.textTheme.titleLSemiBold;
        descriptionTextStyle = context.textTheme.bodyLRegular;
        break;
      case .small:
        subTitleTextStyle = context.textTheme.bodyMRegular;
        titleTextStyle = context.textTheme.titleMSemiBold;
        descriptionTextStyle = context.textTheme.bodyMRegular;
        break;
      case .xSmall:
        subTitleTextStyle = context.textTheme.bodyMRegular;
        titleTextStyle = context.textTheme.titleSSemiBold;
        descriptionTextStyle = context.textTheme.bodyMRegular;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(vertical: context.componentPadding.xLarge),
      child: Row(
        spacing: context.componentGap.medium,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              spacing: context.componentGap.xxSmall,
              children: [
                if (widget.subTitle?.isNotEmpty == true)
                  Text(
                    widget.subTitle!,
                    style: subTitleTextStyle.copyWith(color: subTitleColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                Text(
                  widget.title,
                  style: titleTextStyle.copyWith(color: titleColor),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                if (widget.description?.isNotEmpty == true)
                  Text(widget.description!, style: descriptionTextStyle.copyWith(color: descriptionColor)),
              ],
            ),
          ),
          ?widget.trailingWidget,
        ],
      ),
    );
  }
}
