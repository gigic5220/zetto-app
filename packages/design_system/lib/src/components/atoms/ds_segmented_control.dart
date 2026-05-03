import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

enum DSSegmentedControlSize { large, medium, small }

class DSSegmentedControlItem {
  const DSSegmentedControlItem({required this.text, this.leadingUri});

  final String text;
  final String? leadingUri;
}

class DSSegmentedControl extends StatefulWidget {
  const DSSegmentedControl._({
    required this.size,
    required this.items,
    this.tabController,
    this.isScrollable = false,
    this.onTap,
  });

  factory DSSegmentedControl.large({
    required List<DSSegmentedControlItem> items,
    bool isScrollable = false,
    TabController? tabController,
    Function(int index)? onTap,
  }) => DSSegmentedControl._(
    size: DSSegmentedControlSize.large,
    items: items,
    tabController: tabController,
    onTap: onTap,
    isScrollable: isScrollable,
  );

  factory DSSegmentedControl.medium({
    required List<DSSegmentedControlItem> items,
    bool isScrollable = false,
    TabController? tabController,
    Function(int index)? onTap,
  }) => DSSegmentedControl._(
    size: DSSegmentedControlSize.medium,
    items: items,
    tabController: tabController,
    onTap: onTap,
    isScrollable: isScrollable,
  );

  factory DSSegmentedControl.small({
    required List<DSSegmentedControlItem> items,
    bool isScrollable = false,
    TabController? tabController,
    Function(int index)? onTap,
  }) => DSSegmentedControl._(
    size: DSSegmentedControlSize.small,
    items: items,
    tabController: tabController,
    onTap: onTap,
    isScrollable: isScrollable,
  );

  final DSSegmentedControlSize size;
  final List<DSSegmentedControlItem> items;
  final bool isScrollable;
  final TabController? tabController;
  final Function(int index)? onTap;

  @override
  State<DSSegmentedControl> createState() => _DSSegmentedControlState();
}

class _DSSegmentedControlState extends State<DSSegmentedControl> with TickerProviderStateMixin {
  late TabController tabController;
  late SegmentedControlFillColors segmentedControlFillColors;
  late SegmentedControlKnobColors segmentedControlKnobColors;
  late SegmentedControlTextColors segmentedControlTextColors;
  late Color backgroundColor;
  late Color knobColor;
  late Color textColor;
  late Color unselectedTextColor;
  late EdgeInsets padding;
  late EdgeInsets knobPadding;
  late double borderRadius;
  late double knobBorderRadius;
  late TextStyle textStyle;
  late WrapperView wrapperView;

  @override
  void initState() {
    super.initState();
    tabController = widget.tabController ?? TabController(length: widget.items.length, vsync: this);
  }

  @override
  void didUpdateWidget(covariant DSSegmentedControl oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Item list often gets a new instance each build; only recreate when length changes.
    if (oldWidget.items.length != widget.items.length) {
      final previousIndex = tabController.index;
      tabController =
          widget.tabController ??
          TabController(
            length: widget.items.length,
            vsync: this,
            initialIndex: previousIndex.clamp(0, widget.items.length - 1),
          );
    }
    _calculate();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _calculate();
  }

  void _calculate() {
    segmentedControlFillColors = context.componentColors.segmentedControlFill;
    segmentedControlKnobColors = context.componentColors.segmentedControlKnob;
    segmentedControlTextColors = context.componentColors.segmentedControlText;

    backgroundColor = segmentedControlFillColors.bg;
    knobColor = segmentedControlKnobColors.activated;
    textColor = segmentedControlTextColors.activated;
    unselectedTextColor = segmentedControlTextColors.base;

    switch (widget.size) {
      case .large:
        padding = .all(context.componentPadding.xSmall);
        knobPadding = .all(context.componentPadding.xLarge);
        borderRadius = context.componentRadius.xLarge;
        knobBorderRadius = context.componentRadius.large;
        textStyle = context.textTheme.labelLMedium;
        wrapperView = WrapperView.fix16;
        break;
      case .medium:
        padding = .all(context.componentPadding.xSmall);
        knobPadding = .symmetric(horizontal: context.componentPadding.xLarge, vertical: context.componentPadding.large);
        borderRadius = context.componentRadius.large;
        knobBorderRadius = context.componentRadius.medium;
        textStyle = context.textTheme.labelMMedium;
        wrapperView = WrapperView.fix12;
        break;
      case .small:
        padding = .all(context.componentPadding.xSmall);
        knobPadding = .symmetric(horizontal: context.componentPadding.medium, vertical: context.componentPadding.small);
        borderRadius = context.componentRadius.medium;
        knobBorderRadius = context.componentRadius.small;
        textStyle = context.textTheme.labelSMedium;
        wrapperView = WrapperView.fix12;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(color: backgroundColor, borderRadius: .circular(borderRadius)),
      child: TabBar(
        controller: tabController,
        tabs: widget.items
            .map(
              (item) => Row(
                mainAxisSize: .min,
                spacing: context.componentGap.xxSmall,
                children: [
                  if (item.leadingUri != null)
                    Builder(
                      builder: (context) {
                        final DefaultTextStyle parent = DefaultTextStyle.of(context);
                        return DSWrapper(uri: item.leadingUri!, view: wrapperView, svgColor: parent.style.color);
                      },
                    ),
                  Text(item.text),
                ],
              ),
            )
            .toList(),
        indicatorSize: TabBarIndicatorSize.tab,
        tabAlignment: widget.isScrollable ? TabAlignment.start : TabAlignment.fill,
        isScrollable: widget.isScrollable,
        indicatorWeight: 0,
        dividerHeight: 0,
        dividerColor: Colors.transparent,
        indicator: BoxDecoration(color: knobColor, borderRadius: .circular(knobBorderRadius)),
        indicatorPadding: .zero,
        padding: .zero,
        labelPadding: knobPadding,
        labelStyle: textStyle,
        unselectedLabelStyle: textStyle,
        labelColor: textColor,
        unselectedLabelColor: unselectedTextColor,
        onTap: (index) => widget.onTap?.call(index),
      ),
    );
  }
}
