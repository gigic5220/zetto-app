import 'package:flutter/material.dart';

import 'ignore_padding.dart';

class PaddingSetter extends StatelessWidget {
  const PaddingSetter({
    super.key,
    required this.padding,
    required this.child,
  }) : assert(child is Column || child is Row || child is CustomScrollView, 'child type not supported');

  final EdgeInsets padding;

  /// The child type to must be [Column, Row, CustomScrollView]
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (child is Column) {
      final column = child as Column;

      return column.copyWith(
        children: column.children.map(setPadding).toList(),
      );
    }

    if (child is Row) {
      final row = child as Row;

      return row.copyWith(
        children: row.children.map(setPadding).toList(),
      );
    }

    if (child is CustomScrollView) {
      final scrollView = child as CustomScrollView;

      return scrollView.copyWith(
        slivers: scrollView.slivers.map(setSliverPadding).toList(),
      );
    }

    return Padding(
      padding: padding,
      child: child,
    );
  }

  Widget setPadding(Widget child) {
    if (child is IgnorePadding) return child;

    return Padding(
      padding: padding,
      child: child,
    );
  }

  Widget setSliverPadding(Widget sliver) {
    if (sliver is IgnoreSliverPadding) return sliver;

    return SliverPadding(
      padding: padding,
      sliver: sliver,
    );
  }
}

extension ColumnCopy on Column {
  Column copyWith({
    List<Widget>? children,
  }) {
    return Column(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: children ?? this.children,
    );
  }
}

extension RowCopy on Row {
  Row copyWith({
    List<Widget>? children,
  }) {
    return Row(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: children ?? this.children,
    );
  }
}

extension CustomScrollViewCopy on CustomScrollView {
  CustomScrollView copyWith({
    List<Widget>? slivers,
  }) {
    return CustomScrollView(
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      center: center,
      anchor: anchor,
      cacheExtent: cacheExtent,
      clipBehavior: clipBehavior,
      dragStartBehavior: dragStartBehavior,
      hitTestBehavior: hitTestBehavior,
      keyboardDismissBehavior: keyboardDismissBehavior,
      restorationId: restorationId,
      scrollBehavior: scrollBehavior,
      semanticChildCount: semanticChildCount,
      slivers: slivers ?? this.slivers,
    );
  }
}
