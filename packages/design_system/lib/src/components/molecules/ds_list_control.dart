import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSListControlSize { large, medium, small }

class DSListControl extends StatefulWidget {
  const DSListControl._({
    required this.size,
    required this.title,
    required this.toggleValue,
    required this.onChanged,
    this.subTitle,
    this.titleBadge,
    this.description,
    this.leadingWidget,
    this.trailingText,
    this.trailingWidget,
    this.onTapTrailing,
    this.isShowPushBadge = false,
  });

  factory DSListControl.large({
    required String title,
    required bool toggleValue,
    required Function(bool value) onChanged,
    VoidCallback? onTapTrailing,
    Widget? leadingWidget,
    String? subTitle,
    Widget? titleBadge,
    String? description,
    String? trailingText,
    Widget? trailingWidget,
    bool isShowPushBadge = false,
  }) => DSListControl._(
    size: .large,
    title: title,
    toggleValue: toggleValue,
    onChanged: onChanged,
    titleBadge: titleBadge,
    subTitle: subTitle,
    description: description,
    onTapTrailing: onTapTrailing,
    leadingWidget: leadingWidget,
    trailingWidget: trailingWidget,
    trailingText: trailingText,
    isShowPushBadge: isShowPushBadge,
  );

  factory DSListControl.medium({
    required String title,
    required bool toggleValue,
    required Function(bool value) onChanged,
    VoidCallback? onTapTrailing,
    Widget? leadingWidget,
    String? subTitle,
    Widget? titleBadge,
    String? description,
    String? trailingText,
    Widget? trailingWidget,
    bool isShowPushBadge = false,
  }) => DSListControl._(
    size: .medium,
    title: title,
    toggleValue: toggleValue,
    onChanged: onChanged,
    titleBadge: titleBadge,
    subTitle: subTitle,
    description: description,
    onTapTrailing: onTapTrailing,
    leadingWidget: leadingWidget,
    trailingWidget: trailingWidget,
    trailingText: trailingText,
    isShowPushBadge: isShowPushBadge,
  );

  factory DSListControl.small({
    required String title,
    required bool toggleValue,
    required Function(bool value) onChanged,
    VoidCallback? onTapTrailing,
    Widget? leadingWidget,
    String? subTitle,
    Widget? titleBadge,
    String? description,
    String? trailingText,
    Widget? trailingWidget,
    bool isShowPushBadge = false,
  }) => DSListControl._(
    size: .small,
    title: title,
    toggleValue: toggleValue,
    onChanged: onChanged,
    titleBadge: titleBadge,
    subTitle: subTitle,
    description: description,
    onTapTrailing: onTapTrailing,
    leadingWidget: leadingWidget,
    trailingWidget: trailingWidget,
    trailingText: trailingText,
    isShowPushBadge: isShowPushBadge,
  );

  final DSListControlSize size;
  final String title;
  final bool toggleValue;
  final Function(bool value) onChanged;
  final String? subTitle;
  final Widget? titleBadge;
  final String? description;
  final Widget? leadingWidget;
  final String? trailingText;
  final Widget? trailingWidget;
  final bool isShowPushBadge;
  final VoidCallback? onTapTrailing;

  @override
  State<DSListControl> createState() => _DSListControlState();
}

class _DSListControlState extends State<DSListControl> {
  late DataTextColors dataTextColors;

  late TextStyle subTitleTextStyle;
  late TextStyle titleTextStyle;
  late TextStyle descriptionTextStyle;
  late TextStyle trailingTextStyle;
  late double verticalPadding;

  late Color subTitleColor;
  late Color titleColor;
  late Color descriptionColor;
  late Color trailingTextColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSListControl oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    dataTextColors = context.componentColors.dataText;

    subTitleColor = dataTextColors.tertiary;
    titleColor = dataTextColors.primary;
    descriptionColor = dataTextColors.tertiary;
    trailingTextColor = dataTextColors.tertiary;

    switch (widget.size) {
      case .large:
        subTitleTextStyle = context.textTheme.bodyMRegular;
        titleTextStyle = context.textTheme.bodyXLMedium;
        descriptionTextStyle = context.textTheme.bodyMRegular;
        trailingTextStyle = context.textTheme.labelLMedium;
        verticalPadding = context.componentPadding.xLarge;
        break;
      case .medium:
        subTitleTextStyle = context.textTheme.bodyMRegular;
        titleTextStyle = context.textTheme.bodyLMedium;
        descriptionTextStyle = context.textTheme.bodyMRegular;
        trailingTextStyle = context.textTheme.labelLMedium;
        verticalPadding = context.componentPadding.xLarge;
        break;
      case .small:
        subTitleTextStyle = context.textTheme.bodySRegular;
        titleTextStyle = context.textTheme.bodyMMedium;
        descriptionTextStyle = context.textTheme.bodySRegular;
        trailingTextStyle = context.textTheme.labelMMedium;
        verticalPadding = context.componentPadding.xSmall;
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
      child: GestureDetector(
        onTap: () {
          widget.onChanged(!widget.toggleValue);
        },
        behavior: HitTestBehavior.translucent,
        child: Padding(
          padding: .symmetric(vertical: verticalPadding),
          child: Row(
            spacing: context.componentGap.medium,
            children: [
              Expanded(
                child: Row(
                  spacing: context.componentGap.medium,
                  children: [
                    if (widget.leadingWidget != null) ...[IgnorePointer(child: widget.leadingWidget!)],
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
                  ],
                ),
              ),
              if (widget.trailingWidget != null || widget.trailingText?.isNotEmpty == true)
                IgnorePointer(
                  ignoring: widget.onTapTrailing == null,
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      widget.onTapTrailing?.call();
                    },
                    child: Row(
                      spacing: context.componentGap.medium,
                      children: [
                        if (widget.trailingText?.isNotEmpty == true)
                          Text(
                            widget.trailingText!,
                            style: trailingTextStyle.copyWith(color: trailingTextColor),
                            maxLines: 1,
                            overflow: .ellipsis,
                          ),
                        ?widget.trailingWidget,
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
