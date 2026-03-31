import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

class DSTabListItem {
  const DSTabListItem({required this.text, this.textBadge, this.iconUri, this.showPushBadge = false});

  final String text;
  final DSTextBadge? textBadge;
  final String? iconUri;
  final bool showPushBadge;
}

class DSTabList extends StatefulWidget {
  const DSTabList({
    super.key,
    required this.items,
    required this.tabController,
    this.onTap,
    this.isScrollable = false,
    this.horizontalPadding,
  });

  final List<DSTabListItem> items;
  final TabController? tabController;
  final Function(int index)? onTap;
  final bool isScrollable;
  final double? horizontalPadding;

  @override
  State<DSTabList> createState() => _DSTabListState();
}

class _DSTabListState extends State<DSTabList> with TickerProviderStateMixin {
  late TabController tabController;
  late TabBorderColors tabBorderColors;
  late TabTextColors tabTextColors;

  late TextStyle textStyle;
  late double bottomPadding;

  @override
  void initState() {
    super.initState();
    tabController = widget.tabController ?? TabController(length: widget.items.length, vsync: this);
  }

  @override
  void didUpdateWidget(covariant DSTabList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.items != widget.items) {
      tabController = widget.tabController ?? TabController(length: widget.items.length, vsync: this);
    }
    _calculate();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _calculate();
  }

  void _calculate() {
    tabBorderColors = context.componentColors.tabBorder;
    tabTextColors = context.componentColors.tabText;

    textStyle = context.textTheme.labelLMedium;
    widget.isScrollable ? 20 : 0;
    bottomPadding = context.componentPadding.xLarge;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .only(bottom: bottomPadding),
      child: TabBar(
        padding: .symmetric(horizontal: widget.horizontalPadding ?? 0),
        controller: tabController,
        tabAlignment: widget.isScrollable ? .start : .fill,
        isScrollable: widget.isScrollable,
        tabs: widget.items
            .map(
              (item) => Padding(
                padding: .all(context.componentPadding.xLarge),
                child: DSPushBadge.position(
                  isShow: item.showPushBadge,
                  right: -8,
                  top: 0,
                  size: .small,
                  child: Row(
                    mainAxisSize: .min,
                    spacing: context.componentGap.xxSmall,
                    children: [
                      if (item.iconUri != null)
                        Builder(
                          builder: (context) {
                            final DefaultTextStyle parent = DefaultTextStyle.of(context);
                            return DSWrapper(uri: item.iconUri!, view: WrapperView.fix12, svgColor: parent.style.color);
                          },
                        ),
                      Text(item.text),
                      ?item.textBadge,
                    ],
                  ),
                ),
              ),
            )
            .toList(),
        indicatorSize: .tab,
        indicatorWeight: 0,
        dividerHeight: 0,
        dividerColor: Colors.transparent,
        indicator: BoxDecoration(
          border: Border(bottom: BorderSide(color: tabBorderColors.activated, width: 2)),
        ),
        indicatorPadding: .zero,
        labelPadding: .zero,
        labelStyle: textStyle,
        unselectedLabelStyle: textStyle,
        labelColor: tabTextColors.activated,
        unselectedLabelColor: tabTextColors.base,
        onTap: (index) => widget.onTap?.call(index),
      ),
    );
  }
}
