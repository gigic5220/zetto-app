import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSListItemSize { large, medium, small }

enum DSListItemVariant { normal, warning }

class DSListItem extends StatefulWidget {
  const DSListItem._({
    required this.size,
    required this.variant,
    required this.title,
    this.leadingWidget,
    this.subTitle,
    this.titleBadge,
    this.description,
    this.trailingText,
    this.trailingBadge,
    this.isShowPushBadge = false,
  });

  factory DSListItem.large({
    required String title,
    required DSListItemVariant variant,
    Widget? leadingWidget,
    String? subTitle,
    Widget? titleBadge,
    String? description,
    String? trailingText,
    Widget? trailingBadge,
    bool isShowPushBadge = false,
  }) => DSListItem._(
    size: .large,
    title: title,
    variant: variant,
    leadingWidget: leadingWidget,
    subTitle: subTitle,
    titleBadge: titleBadge,
    description: description,
    trailingText: trailingText,
    trailingBadge: trailingBadge,
    isShowPushBadge: isShowPushBadge,
  );

  factory DSListItem.medium({
    required String title,
    required DSListItemVariant variant,
    Widget? leadingWidget,
    String? subTitle,
    Widget? titleBadge,
    String? description,
    String? trailingText,
    Widget? trailingBadge,
    bool isShowPushBadge = false,
  }) => DSListItem._(
    size: .medium,
    title: title,
    variant: variant,
    leadingWidget: leadingWidget,
    subTitle: subTitle,
    titleBadge: titleBadge,
    description: description,
    trailingText: trailingText,
    trailingBadge: trailingBadge,
    isShowPushBadge: isShowPushBadge,
  );

  factory DSListItem.small({
    required String title,
    required DSListItemVariant variant,
    Widget? leadingWidget,
    String? subTitle,
    Widget? titleBadge,
    String? description,
    String? trailingText,
    Widget? trailingBadge,
    bool isShowPushBadge = false,
  }) => DSListItem._(
    size: .small,
    title: title,
    variant: variant,
    leadingWidget: leadingWidget,
    subTitle: subTitle,
    titleBadge: titleBadge,
    description: description,
    trailingText: trailingText,
    trailingBadge: trailingBadge,
    isShowPushBadge: isShowPushBadge,
  );

  final DSListItemSize size;
  final DSListItemVariant variant;
  final String title;
  final Widget? leadingWidget;
  final String? subTitle;
  final Widget? titleBadge;
  final String? description;
  final String? trailingText;
  final Widget? trailingBadge;
  final bool isShowPushBadge;

  @override
  State<DSListItem> createState() => _DSListItemState();
}

class _DSListItemState extends State<DSListItem> {
  late DataTextColors dataTextColors;

  late TextStyle subTitleTextStyle;
  late TextStyle titleTextStyle;
  late TextStyle descriptionTextStyle;
  late TextStyle trailingTextStyle;

  late Color subTitleColor;
  late Color titleColor;
  late Color descriptionColor;
  late Color trailingColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSListItem oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    dataTextColors = context.componentColors.dataText;

    switch (widget.variant) {
      case .normal:
        subTitleColor = dataTextColors.tertiary;
        titleColor = dataTextColors.primary;
        descriptionColor = dataTextColors.tertiary;
        trailingColor = dataTextColors.tertiary;
        break;
      case .warning:
        subTitleColor = dataTextColors.warning;
        titleColor = dataTextColors.warning;
        descriptionColor = dataTextColors.warning;
        trailingColor = dataTextColors.tertiary;
        break;
    }

    switch (widget.size) {
      case .large:
        subTitleTextStyle = context.textTheme.bodyMRegular;
        titleTextStyle = context.textTheme.bodyXLMedium;
        descriptionTextStyle = context.textTheme.bodyMRegular;
        trailingTextStyle = context.textTheme.labelLMedium;
        break;
      case .medium:
        subTitleTextStyle = context.textTheme.bodyMRegular;
        titleTextStyle = context.textTheme.bodyLMedium;
        descriptionTextStyle = context.textTheme.bodyMRegular;
        trailingTextStyle = context.textTheme.labelLMedium;
        break;
      case .small:
        subTitleTextStyle = context.textTheme.bodySRegular;
        titleTextStyle = context.textTheme.bodyMMedium;
        descriptionTextStyle = context.textTheme.bodySRegular;
        trailingTextStyle = context.textTheme.labelMMedium;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DSPushBadge.position(
      isShow: widget.isShowPushBadge,
      size: .small,
      top: 8,
      right: 0,
      child: Padding(
        padding: .symmetric(vertical: context.componentPadding.large),
        child: Row(
          spacing: context.componentGap.medium,
          children: [
            ?widget.leadingWidget,
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
                      overflow: .ellipsis,
                    ),
                  Row(
                    mainAxisSize: .min,
                    spacing: context.componentGap.xxSmall,
                    children: [
                      Flexible(
                        child: Text(
                          widget.title,
                          style: titleTextStyle.copyWith(color: titleColor),
                          maxLines: 2,
                          overflow: .ellipsis,
                        ),
                      ),
                      ?widget.titleBadge,
                    ],
                  ),
                  if (widget.description?.isNotEmpty == true)
                    Text(widget.description!, style: descriptionTextStyle.copyWith(color: descriptionColor)),
                ],
              ),
            ),
            if (widget.trailingText?.isNotEmpty == true)
              Text(
                widget.trailingText!,
                style: trailingTextStyle.copyWith(color: trailingColor),
                maxLines: 1,
                overflow: .ellipsis,
              ),
            ?widget.trailingBadge,
          ],
        ),
      ),
    );
  }
}
