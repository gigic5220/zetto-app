import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../../components/ions.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSListActionSize { large, medium, small }

enum DSListActionVariant { normal, warning }

class DSListAction extends StatefulWidget {
  const DSListAction._({
    required this.size,
    required this.variant,
    required this.title,
    required this.onTapLeading,
    this.leadingWidget,
    this.subTitle,
    this.titleBadge,
    this.description,
    this.trailingText,
    this.trailingUri,
    this.overrideTrailingWidget,
    this.isShowPushBadge = false,
    this.onTapTrailing,
  });

  factory DSListAction.large({
    required String title,
    required DSListActionVariant variant,
    required VoidCallback onTapLeading,
    VoidCallback? onTapTrailing,
    Widget? leadingWidget,
    String? subTitle,
    Widget? titleBadge,
    String? description,
    String? trailingText,
    String? trailingUri,
    Widget? overrideTrailingWidget,
    bool isShowPushBadge = false,
  }) => DSListAction._(
    size: .large,
    variant: variant,
    title: title,
    titleBadge: titleBadge,
    subTitle: subTitle,
    description: description,
    onTapLeading: onTapLeading,
    onTapTrailing: onTapTrailing,
    leadingWidget: leadingWidget,
    trailingUri: trailingUri,
    overrideTrailingWidget: overrideTrailingWidget,
    trailingText: trailingText,
    isShowPushBadge: isShowPushBadge,
  );

  factory DSListAction.medium({
    required String title,
    required DSListActionVariant variant,
    required VoidCallback onTapLeading,
    VoidCallback? onTapTrailing,
    Widget? leadingWidget,
    String? subTitle,
    Widget? titleBadge,
    String? description,
    String? trailingText,
    String? trailingUri,
    Widget? overrideTrailingWidget,
    bool isShowPushBadge = false,
  }) => DSListAction._(
    size: .medium,
    variant: variant,
    title: title,
    titleBadge: titleBadge,
    subTitle: subTitle,
    description: description,
    onTapLeading: onTapLeading,
    onTapTrailing: onTapTrailing,
    leadingWidget: leadingWidget,
    trailingUri: trailingUri,
    overrideTrailingWidget: overrideTrailingWidget,
    trailingText: trailingText,
    isShowPushBadge: isShowPushBadge,
  );

  factory DSListAction.small({
    required String title,
    required DSListActionVariant variant,
    required VoidCallback onTapLeading,
    VoidCallback? onTapTrailing,
    Widget? leadingWidget,
    String? subTitle,
    Widget? titleBadge,
    String? description,
    String? trailingText,
    String? trailingUri,
    Widget? overrideTrailingWidget,
    bool isShowPushBadge = false,
  }) => DSListAction._(
    size: .small,
    variant: variant,
    title: title,
    titleBadge: titleBadge,
    subTitle: subTitle,
    description: description,
    onTapLeading: onTapLeading,
    onTapTrailing: onTapTrailing,
    leadingWidget: leadingWidget,
    trailingUri: trailingUri,
    overrideTrailingWidget: overrideTrailingWidget,
    trailingText: trailingText,
    isShowPushBadge: isShowPushBadge,
  );

  final DSListActionSize size;
  final DSListActionVariant variant;
  final Widget? leadingWidget;
  final String title;
  final String? subTitle;
  final Widget? titleBadge;
  final String? description;
  final String? trailingText;
  final String? trailingUri;
  final Widget? overrideTrailingWidget;
  final bool isShowPushBadge;
  final VoidCallback onTapLeading;
  final VoidCallback? onTapTrailing;

  @override
  State<DSListAction> createState() => _DSListActionState();
}

class _DSListActionState extends State<DSListAction> {
  late DataTextColors dataTextColors;

  late TextStyle subTitleTextStyle;
  late TextStyle titleTextStyle;
  late TextStyle descriptionTextStyle;
  late TextStyle trailingTextStyle;

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
  void didUpdateWidget(covariant DSListAction oldWidget) {
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
        trailingTextColor = dataTextColors.tertiary;
        break;
      case .warning:
        subTitleColor = dataTextColors.warning;
        titleColor = dataTextColors.warning;
        descriptionColor = dataTextColors.warning;
        trailingTextColor = dataTextColors.warning;
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
        padding: .symmetric(vertical: context.componentPadding.xLarge),
        child: Row(
          spacing: context.componentGap.medium,
          children: [
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: widget.onTapLeading,
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
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: widget.onTapTrailing,
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
                  if (widget.overrideTrailingWidget != null) ...[
                    IgnorePointer(child: widget.overrideTrailingWidget!),
                  ] else if (widget.trailingUri != null) ...[
                    DSWrapper(uri: widget.trailingUri!, view: WrapperView.fix12, svgColor: trailingTextColor),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
