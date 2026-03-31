import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../atoms/ds_icon_badge.dart';
import '../atoms/ds_text_badge.dart';

enum DSBadgeListType { text, icon }

class DSBadgeList extends StatefulWidget {
  const DSBadgeList._({required this.type, this.badges, this.iconBadges});

  factory DSBadgeList.text({required List<DSTextBadge> badges}) =>
      DSBadgeList._(type: DSBadgeListType.text, badges: badges);
  factory DSBadgeList.icon({required List<DSIconBadge> iconBadges}) =>
      DSBadgeList._(type: DSBadgeListType.icon, iconBadges: iconBadges);

  final DSBadgeListType type;
  final List<DSTextBadge>? badges;
  final List<DSIconBadge>? iconBadges;

  @override
  State<DSBadgeList> createState() => _DSBadgeListState();
}

class _DSBadgeListState extends State<DSBadgeList> {
  late double spacing;
  late double wrapSpacing;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSBadgeList oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    spacing = context.componentGap.small;
    wrapSpacing = context.componentGap.small;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: wrapSpacing,
      runSpacing: wrapSpacing,
      children: switch (widget.type) {
        .text => widget.badges!,
        .icon => widget.iconBadges!,
      },
    );
  }
}
