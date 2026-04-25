import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

class DSCategoryItem {
  const DSCategoryItem({required this.text, this.textBadge, this.leadingUri, this.showPushBadge = false});

  final String text;
  final DSTextBadge? textBadge;
  final String? leadingUri;
  final bool showPushBadge;
}

class DSCategory extends StatefulWidget {
  const DSCategory({super.key, required this.items, required this.tabController, this.padding, this.onTap});

  final List<DSCategoryItem> items;
  final TabController? tabController;
  final EdgeInsetsGeometry? padding;
  final Function(int index)? onTap;

  @override
  State<DSCategory> createState() => _DSCategoryState();
}

class _DSCategoryState extends State<DSCategory> with TickerProviderStateMixin {
  late TabController tabController;
  late CategoryFillColors categoryFillColors;
  late CategoryTextColors categoryTextColors;

  late TextStyle textStyle;

  late double gap;

  @override
  void initState() {
    super.initState();
    tabController = widget.tabController ?? TabController(length: widget.items.length, vsync: this);
  }

  @override
  void didUpdateWidget(covariant DSCategory oldWidget) {
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
    categoryFillColors = context.componentColors.categoryFill;
    categoryTextColors = context.componentColors.categoryText;
    textStyle = context.textTheme.labelLMedium;
    gap = context.componentGap.small;
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      padding: widget.padding ?? EdgeInsets.symmetric(vertical: context.componentPadding.medium),
      tabAlignment: .start,
      isScrollable: true,
      tabs: widget.items
          .map(
            (item) => Padding(
              padding: .symmetric(vertical: context.componentPadding.small),
              child: Row(
                children: [
                  SizedBox(width: context.componentPadding.xLarge),
                  Row(
                    mainAxisSize: .min,
                    children: [
                      DSPushBadge.position(
                        isShow: item.showPushBadge,
                        right: -8,
                        top: 0,
                        size: .small,
                        child: Row(
                          mainAxisSize: .min,
                          spacing: context.componentGap.xxSmall,
                          children: [
                            if (item.leadingUri != null)
                              Builder(
                                builder: (context) {
                                  final DefaultTextStyle parent = DefaultTextStyle.of(context);
                                  return DSWrapper(
                                    uri: item.leadingUri!,
                                    view: WrapperView.fix12,
                                    svgColor: parent.style.color,
                                  );
                                },
                              ),
                            Text(item.text),
                          ],
                        ),
                      ),
                      if (item.showPushBadge) const SizedBox(width: 8),
                    ],
                  ),
                  if (item.textBadge != null) ...[
                    const SizedBox(width: 4),
                    ?item.textBadge,
                    SizedBox(width: context.componentPadding.small),
                  ] else
                    SizedBox(width: context.componentPadding.xLarge),
                ],
              ),
            ),
          )
          .toList(),
      indicatorSize: .tab,
      indicatorWeight: 0,
      dividerHeight: 0,
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        color: categoryFillColors.activated,
        borderRadius: .circular(context.componentRadius.max),
      ),
      indicatorPadding: .symmetric(horizontal: gap / 2),
      labelPadding: .symmetric(horizontal: gap / 2),
      labelStyle: textStyle,
      unselectedLabelStyle: textStyle,
      labelColor: categoryTextColors.activated,
      unselectedLabelColor: categoryTextColors.base,
      onTap: (index) => widget.onTap?.call(index),
    );
  }
}
