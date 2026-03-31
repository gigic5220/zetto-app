import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSHighLightSize { large, medium, small, xSmall }

class DSHighLight extends StatefulWidget {
  const DSHighLight._({required this.size, required this.title, this.subTitle, this.description, this.leadingWidget});

  factory DSHighLight.large({required String title, String? subTitle, String? description, Widget? leadingWidget}) =>
      DSHighLight._(
        size: .large,
        title: title,
        subTitle: subTitle,
        description: description,
        leadingWidget: leadingWidget,
      );

  factory DSHighLight.medium({required String title, String? subTitle, String? description, Widget? leadingWidget}) =>
      DSHighLight._(
        size: .medium,
        title: title,
        subTitle: subTitle,
        description: description,
        leadingWidget: leadingWidget,
      );

  factory DSHighLight.small({required String title, String? subTitle, String? description, Widget? leadingWidget}) =>
      DSHighLight._(
        size: .small,
        title: title,
        subTitle: subTitle,
        description: description,
        leadingWidget: leadingWidget,
      );

  factory DSHighLight.xSmall({required String title, String? subTitle, String? description, Widget? leadingWidget}) =>
      DSHighLight._(
        size: .xSmall,
        title: title,
        subTitle: subTitle,
        description: description,
        leadingWidget: leadingWidget,
      );

  final DSHighLightSize size;
  final String title;
  final String? subTitle;
  final String? description;
  final Widget? leadingWidget;

  @override
  State<DSHighLight> createState() => _DSHighLightState();
}

class _DSHighLightState extends State<DSHighLight> {
  late DataTextColors dataTextColors;

  late TextStyle subTitleTextStyle;
  late TextStyle titleTextStyle;
  late TextStyle descriptionTextStyle;

  late Color titleColor;
  late Color subTitleColor;
  late Color descriptionColor;

  late double gap;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSHighLight oldWidget) {
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
        gap = context.componentGap.large;
        subTitleTextStyle = context.textTheme.bodyLRegular;
        titleTextStyle = context.textTheme.titleXLSemiBold;
        descriptionTextStyle = context.textTheme.bodyLRegular;
        break;
      case .medium:
        gap = context.componentGap.large;
        subTitleTextStyle = context.textTheme.bodyLRegular;
        titleTextStyle = context.textTheme.titleLSemiBold;
        descriptionTextStyle = context.textTheme.bodyLRegular;
        break;
      case .small:
        gap = context.componentGap.medium;
        subTitleTextStyle = context.textTheme.bodyMRegular;
        titleTextStyle = context.textTheme.titleMSemiBold;
        descriptionTextStyle = context.textTheme.bodyMRegular;
        break;
      case .xSmall:
        gap = context.componentGap.medium;
        subTitleTextStyle = context.textTheme.bodySRegular;
        titleTextStyle = context.textTheme.titleSSemiBold;
        descriptionTextStyle = context.textTheme.bodySRegular;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(vertical: context.componentPadding.xLarge),
      child: Center(
        child: Column(
          spacing: gap,
          children: [
            ?widget.leadingWidget,
            Column(
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
          ],
        ),
      ),
    );
  }
}
