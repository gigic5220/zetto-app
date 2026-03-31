import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({
    super.key,
    required this.widgetList,
    required this.itemRowCount,
    required this.itemRowSpacing,
    required this.itemColumnSpacing,
    this.itemWidth,
    this.isSquare = false,
  });

  final List<Widget> widgetList;
  final int itemRowCount;
  final double itemRowSpacing;
  final double itemColumnSpacing;
  final double? itemWidth;
  final bool isSquare;

  @override
  Widget build(BuildContext context) {
    if (widgetList.isEmpty) return const SizedBox.shrink();

    final List<List<Widget>> rows = [];
    List<Widget> currentRow = [];

    for (int i = 0; i < widgetList.length; i++) {
      currentRow.add(widgetList[i]);

      if (currentRow.length == itemRowCount) {
        rows.add(currentRow);
        currentRow = [];
      } else if (i == widgetList.length - 1) {
        while (currentRow.length < itemRowCount) {
          currentRow.add(const SizedBox.shrink());
        }
        rows.add(currentRow);
      }
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final double maxWidth = constraints.maxWidth;
        final double totalRowSpacing = itemRowSpacing * (itemRowCount - 1);
        final double itemWidth =
            this.itemWidth ?? (maxWidth - totalRowSpacing) / itemRowCount;

        return Column(
          spacing: itemColumnSpacing,
          children: rows.map((row) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: itemRowSpacing,
              children: [
                ...row.map(
                  (itemWidget) => SizedBox(
                    width: itemWidth,
                    height: isSquare ? itemWidth : null,
                    child: itemWidget,
                  ),
                ),
              ],
            );
          }).toList(),
        );
      },
    );
  }
}
