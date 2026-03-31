import 'package:flutter/material.dart';

import '../../../components/atoms.dart';
import '../../extension/context_extension.dart';

enum DSChipListLayoutType { scroll, wrap }

class DSChipList extends StatefulWidget {
  const DSChipList({super.key, required this.items, this.layoutType = .scroll, this.horizontalPadding});

  final List<DSChip> items;
  final DSChipListLayoutType layoutType;
  final double? horizontalPadding;

  @override
  State<DSChipList> createState() => _DSChipListState();
}

class _DSChipListState extends State<DSChipList> {
  @override
  Widget build(BuildContext context) {
    return switch (widget.layoutType) {
      .scroll => SingleChildScrollView(
        scrollDirection: .horizontal,
        padding: .symmetric(horizontal: widget.horizontalPadding ?? 0),
        child: Row(spacing: context.componentGap.small, children: widget.items.map((item) => item).toList()),
      ),
      .wrap => Wrap(
        runSpacing: context.componentGap.small,
        spacing: context.componentGap.small,
        children: widget.items.map((item) => item).toList(),
      ),
    };
  }
}
