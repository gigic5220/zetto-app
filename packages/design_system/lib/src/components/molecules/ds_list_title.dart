import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../../components/ions.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSListTitleSize { large, medium, small }

enum DSListTitleType { normal, value }

class DSListTitle extends StatefulWidget {
  const DSListTitle._({
    required this.size,
    required this.title,
    this.onTapLeading,
    this.type = .normal,
    this.textBadge,
    this.iconSolidButton,
    this.wrapper,
    this.description,
    this.trailingWidget,
  });

  factory DSListTitle.largeNormal({
    required String title,
    DSTextBadge? textBadge,
    String? description,
    Widget? trailingWidget,
  }) => DSListTitle._(
    size: .large,
    type: .normal,
    title: title,
    textBadge: textBadge,
    description: description,
    trailingWidget: trailingWidget,
  );

  factory DSListTitle.largeValue({
    required String title,
    VoidCallback? onTapLeading,
    DSIconSolidButton? iconSolidButton,
    Widget? trailingWidget,
  }) => DSListTitle._(
    size: .large,
    type: .value,
    title: title,
    onTapLeading: onTapLeading,
    iconSolidButton: iconSolidButton,
    trailingWidget: trailingWidget,
  );

  factory DSListTitle.mediumNormal({
    required String title,
    DSTextBadge? textBadge,
    String? description,
    Widget? trailingWidget,
  }) => DSListTitle._(
    size: .medium,
    type: .normal,
    title: title,
    textBadge: textBadge,
    description: description,
    trailingWidget: trailingWidget,
  );

  factory DSListTitle.mediumValue({
    required String title,
    VoidCallback? onTapLeading,
    DSIconSolidButton? iconSolidButton,
    Widget? trailingWidget,
  }) => DSListTitle._(
    size: .medium,
    type: .value,
    title: title,
    onTapLeading: onTapLeading,
    iconSolidButton: iconSolidButton,
    trailingWidget: trailingWidget,
  );

  factory DSListTitle.smallNormal({required String title, Widget? trailingWidget}) =>
      DSListTitle._(size: .small, type: .normal, title: title, trailingWidget: trailingWidget);

  factory DSListTitle.smallValue({
    required String title,
    VoidCallback? onTapLeading,
    Widget? wrapper,
    Widget? trailingWidget,
  }) => DSListTitle._(
    size: .small,
    type: .value,
    title: title,
    onTapLeading: onTapLeading,
    wrapper: wrapper,
    trailingWidget: trailingWidget,
  );

  final DSListTitleSize size;
  final DSListTitleType type;
  final String title;
  final DSTextBadge? textBadge;
  final DSIconSolidButton? iconSolidButton;
  final Widget? wrapper;
  final String? description;
  final Widget? trailingWidget;
  final VoidCallback? onTapLeading;

  @override
  State<DSListTitle> createState() => _DSListTitleState();
}

class _DSListTitleState extends State<DSListTitle> {
  late DataTextColors dataTextColors;

  late TextStyle titleTextStyle;
  late TextStyle descriptionTextStyle;

  late Color titleColor;
  late Color descriptionColor;

  late EdgeInsets padding;
  late double minHeight;
  late double titleGap;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSListTitle oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    dataTextColors = context.componentColors.dataText;

    titleColor = dataTextColors.primary;
    descriptionColor = dataTextColors.tertiary;

    switch (widget.size) {
      case .large:
        minHeight = 56;
        padding = .symmetric(vertical: context.componentPadding.large);
        titleGap = context.componentGap.xxxSmall;
        titleTextStyle = context.textTheme.listTitleLSemiBold;
        descriptionTextStyle = context.textTheme.bodyXLRegular;
        break;
      case .medium:
        minHeight = 50;
        padding = .symmetric(vertical: context.componentPadding.medium);
        titleGap = context.componentGap.xxSmall;
        titleTextStyle = context.textTheme.listTitleMSemiBold;
        descriptionTextStyle = context.textTheme.bodyLRegular;
        break;
      case .small:
        minHeight = 50;
        padding = .symmetric(vertical: context.componentPadding.medium);
        titleGap = context.componentGap.xxSmall;
        titleTextStyle = context.textTheme.listTitleSMedium;
        descriptionTextStyle = context.textTheme.bodyMRegular;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: minHeight),
      padding: padding,
      child: Row(
        spacing: context.componentGap.medium,
        children: [
          Flexible(
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: widget.onTapLeading,
              child: switch (widget.type) {
                .normal => Column(
                  crossAxisAlignment: .start,
                  spacing: titleGap,
                  children: [
                    Row(
                      spacing: context.componentGap.xxSmall,
                      children: [
                        Flexible(
                          child: Text(
                            widget.title,
                            style: titleTextStyle.copyWith(color: titleColor),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (widget.size != .small && widget.textBadge != null) widget.textBadge!,
                      ],
                    ),
                    if (widget.size != .small && widget.description?.isNotEmpty == true)
                      Text(widget.description!, style: descriptionTextStyle.copyWith(color: descriptionColor)),
                  ],
                ),
                .value => Row(
                  spacing: context.componentGap.xxSmall,
                  children: [
                    Flexible(
                      child: Text(
                        widget.title,
                        style: titleTextStyle.copyWith(color: titleColor),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (widget.size == .small) ...[
                      ?widget.wrapper,
                    ] else if (widget.iconSolidButton != null) ...[
                      IgnorePointer(child: widget.iconSolidButton),
                    ],
                  ],
                ),
              },
            ),
          ),
          ?widget.trailingWidget,
        ],
      ),
    );
  }
}
