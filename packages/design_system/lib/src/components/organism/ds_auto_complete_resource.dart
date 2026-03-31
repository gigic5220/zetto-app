import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../atoms/ds_push_badge.dart';
import '../ions/ds_wrapper.dart';
import 'ds_auto_complete.dart';

enum DSAutoCompleteResourceSize { medium, small }

class DSAutoCompleteResource extends StatefulWidget {
  const DSAutoCompleteResource._({
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

  factory DSAutoCompleteResource({
    required String title,
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
  }) => DSAutoCompleteResource._(
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
  State<DSAutoCompleteResource> createState() => _DSAutoCompleteResourceState();
}

class _DSAutoCompleteResourceState extends State<DSAutoCompleteResource> {
  late DataTextColors dataTextColors;

  late TextStyle subTitleTextStyle;
  late TextStyle titleTextStyle;
  late TextStyle descriptionTextStyle;
  late TextStyle trailingTextStyle;

  late Color subTitleColor;
  late Color titleColor;
  late Color descriptionColor;
  late Color trailingTextColor;
  late Color highlightColor;

  late DSAutoCompleteResourceSize size;
  String? searchText;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSAutoCompleteResource oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    dataTextColors = context.componentColors.dataText;

    subTitleColor = dataTextColors.tertiary;
    titleColor = dataTextColors.primary;
    descriptionColor = dataTextColors.tertiary;
    trailingTextColor = dataTextColors.tertiary;
    highlightColor = context.componentColors.autoCompleteText.keyword;

    final parentSize = DSAutoComplete.of(context)?.size;
    searchText = DSAutoComplete.of(context)?.searchText;
    size = switch (parentSize) {
      .medium => .medium,
      .small => .small,
      _ => .medium,
    };

    switch (size) {
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
                              Flexible(child: _buildSearchText(widget.title, titleTextStyle)),
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

  Widget _buildSearchText(String originText, TextStyle style) {
    final query = searchText;

    if (query == null || query.isEmpty) {
      return Text(originText, style: style, maxLines: 2, overflow: .ellipsis);
    }

    final lowerOrigin = originText.toLowerCase();
    final lowerQuery = query.toLowerCase();
    final first = lowerOrigin.indexOf(lowerQuery);
    if (first == -1) {
      return Text(originText, style: style, maxLines: 2, overflow: .ellipsis);
    }

    final highlightStyle = style.copyWith(color: highlightColor);

    final spans = <InlineSpan>[];
    var start = 0;
    var index = lowerOrigin.indexOf(lowerQuery, start);
    while (index != -1) {
      if (index > start) {
        spans.add(TextSpan(text: originText.substring(start, index), style: style));
      }
      final end = index + query.length;
      spans.add(TextSpan(text: originText.substring(index, end), style: highlightStyle));
      start = end;
      index = lowerOrigin.indexOf(lowerQuery, start);
    }
    if (start < originText.length) {
      spans.add(TextSpan(text: originText.substring(start), style: style));
    }

    return Text.rich(TextSpan(children: spans), maxLines: 2, overflow: .ellipsis);
  }
}
