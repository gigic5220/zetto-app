import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';

/// [FoodAnalyzeResultEntity]: per-dish nutrients, vision, final totals.
class FoodAnalyzeResultPanel extends StatelessWidget {
  const FoodAnalyzeResultPanel({super.key, required this.result});

  final FoodAnalyzeResultEntity result;

  static const Map<String, String> _nutrientLabels = {
    'kcal': '\uce74\ub85c\ub9ac',
    'carb_g': '\ud0c4\uc218\ud654\ubb3c',
    'protein_g': '\ub2e8\ubc31\uc9c8',
    'fat_g': '\uc9c0\ubc29',
    'sugar_g': '\ub2f9\ub958',
    'sodium_mg': '\ub098\ud2b8\ub968',
  };

  static String _formatNum(dynamic n) {
    if (n is num) {
      final d = n.toDouble();
      if (d == d.roundToDouble()) return d.toInt().toString();
      return d.toString();
    }
    return '$n';
  }

  static String _formatNutrientCell(dynamic raw) {
    if (raw == null) return '—';
    if (raw is Map) {
      final v = raw['value'];
      final u = raw['unit'];
      final range = raw['range'];
      final buf = StringBuffer();
      if (v != null && u != null) {
        buf.write('${_formatNum(v)} $u');
      } else if (v != null) {
        buf.write(_formatNum(v));
      } else {
        return raw.toString();
      }
      if (range is List && range.length >= 2) {
        buf.write(' (${_formatNum(range[0])} ~ ${_formatNum(range[1])})');
      }
      return buf.toString();
    }
    return raw.toString();
  }

  static String _nutrientTitle(String key) =>
      _nutrientLabels[key] ?? key.replaceAll('_', ' ');

  List<Widget> _visionBlocks(BuildContext context, FoodVisionEntity v) {
    final gap = SizedBox(height: context.componentGap.large);
    return [
      gap,
      _Section(
        title: '\uc2dc\uc5ed \uc7ac\ub8cc (visible)',
        child: _ChipList(items: v.visibleIngredients),
      ),
      gap,
      _Section(
        title: '\uac00\uc815 \uc7ac\ub8cc (assumed)',
        child: _ChipList(items: v.assumedIngredients),
      ),
      gap,
      _Section(
        title: '\ube44\uc804 \ucd94\uc815 \ud569\uc0b0 (estimated_total)',
        child: _NutrientsTable(
          nutrients: v.estimatedTotalNutrients,
          titleForKey: _nutrientTitle,
          formatValue: _formatNutrientCell,
        ),
      ),
      gap,
      _Section(
        title: '\ube44\uc804 \uac00\uc815 (assumptions)',
        child: _BulletList(items: v.assumptions),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final radius = context.componentRadius.medium;
    final gap = context.componentGap.large;
    final vision = result.vision;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.semanticColors.fillSubtle,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: context.semanticColors.borderSubtle),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.componentPadding.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Section(
              title: '\uba54\uc778',
              child: _FoodItemsList(
                items: result.main,
                nutrientTitle: _nutrientTitle,
                formatNutrient: _formatNutrientCell,
              ),
            ),
            SizedBox(height: gap),
            _Section(
              title: '\ubc18\ucc2c \xb7 \uc0ac\uc774\ub4dc',
              child: _FoodItemsList(
                items: result.sides,
                nutrientTitle: _nutrientTitle,
                formatNutrient: _formatNutrientCell,
              ),
            ),
            SizedBox(height: gap),
            _Section(
              title: '\uae30\ud0c0 (\uadf8\uc678)',
              child: _FoodItemsList(
                items: result.others,
                nutrientTitle: _nutrientTitle,
                formatNutrient: _formatNutrientCell,
              ),
            ),
            if (vision != null) ..._visionBlocks(context, vision),
            SizedBox(height: gap),
            _Section(
              title: '\ucd5c\uc885 \uc601\uc591 (final)',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (result.finalSource != null &&
                      result.finalSource!.isNotEmpty) ...[
                    Text(
                      'source: ${result.finalSource}',
                      style: context.textTheme.bodyMMedium.copyWith(
                        color: context.semanticColors.textSecondary,
                      ),
                    ),
                    SizedBox(height: context.componentGap.small),
                  ],
                  _NutrientsTable(
                    nutrients: result.finalNutrients,
                    titleForKey: _nutrientTitle,
                    formatValue: _formatNutrientCell,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FoodItemsList extends StatelessWidget {
  const _FoodItemsList({
    required this.items,
    required this.nutrientTitle,
    required this.formatNutrient,
  });

  final List<AnalyzedFoodItemEntity> items;
  final String Function(String key) nutrientTitle;
  final String Function(dynamic raw) formatNutrient;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Text(
        '\ub0b4\uc6a9 \uc5c6\uc74c',
        style: context.textTheme.bodyMMedium.copyWith(
          color: context.semanticColors.textTertiary,
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < items.length; i++) ...[
          if (i > 0) SizedBox(height: context.componentGap.medium),
          Text(
            items[i].name.isEmpty
                ? '(\uc774\ub984 \uc5c6\uc74c)'
                : items[i].name,
            style: context.textTheme.titleSSemiBold.copyWith(
              color: context.semanticColors.textPrimary,
            ),
          ),
          SizedBox(height: context.componentGap.small),
          _NutrientsTable(
            nutrients: items[i].nutrients,
            titleForKey: nutrientTitle,
            formatValue: formatNutrient,
          ),
        ],
      ],
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: context.textTheme.titleMSemiBold.copyWith(
            color: context.semanticColors.textPrimary,
          ),
        ),
        SizedBox(height: context.componentGap.small),
        child,
      ],
    );
  }
}

class _ChipList extends StatelessWidget {
  const _ChipList({required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Text(
        '\ub0b4\uc6a9 \uc5c6\uc74c',
        style: context.textTheme.bodyMMedium.copyWith(
          color: context.semanticColors.textTertiary,
        ),
      );
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: items
          .map(
            (e) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: context.semanticColors.fillDefault,
                borderRadius: BorderRadius.circular(
                  context.componentRadius.small,
                ),
                border: Border.all(color: context.semanticColors.borderSubtle),
              ),
              child: Text(
                e,
                style: context.textTheme.bodyMMedium.copyWith(
                  color: context.semanticColors.textPrimary,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _BulletList extends StatelessWidget {
  const _BulletList({required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Text(
        '\ub0b4\uc6a9 \uc5c6\uc74c',
        style: context.textTheme.bodyMMedium.copyWith(
          color: context.semanticColors.textTertiary,
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (line) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\u2022 ',
                    style: context.textTheme.bodyMMedium.copyWith(
                      color: context.semanticColors.textSecondary,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      line,
                      style: context.textTheme.bodyMMedium.copyWith(
                        color: context.semanticColors.textPrimary,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}

class _NutrientsTable extends StatelessWidget {
  const _NutrientsTable({
    required this.nutrients,
    required this.titleForKey,
    required this.formatValue,
  });

  final Map<String, dynamic> nutrients;
  final String Function(String key) titleForKey;
  final String Function(dynamic raw) formatValue;

  @override
  Widget build(BuildContext context) {
    if (nutrients.isEmpty) {
      return Text(
        '\ub0b4\uc6a9 \uc5c6\uc74c',
        style: context.textTheme.bodyMMedium.copyWith(
          color: context.semanticColors.textTertiary,
        ),
      );
    }
    final keys = nutrients.keys.toList()..sort();
    final borderColor = context.semanticColors.borderSubtle;
    return Table(
      columnWidths: const {0: FlexColumnWidth(2), 1: FlexColumnWidth(3)},
      border: TableBorder(
        horizontalInside: BorderSide(color: borderColor),
        top: BorderSide(color: borderColor),
        bottom: BorderSide(color: borderColor),
        left: BorderSide(color: borderColor),
        right: BorderSide(color: borderColor),
      ),
      children: [
        TableRow(
          decoration: BoxDecoration(color: context.semanticColors.fillDefault),
          children: [
            _TableHeaderCell(text: '\ud56d\ubaa9'),
            _TableHeaderCell(
              text: '\uac12 (\uad6c\uac04 \uc788\uc73c\uba74 \ud45c\uc2dc)',
            ),
          ],
        ),
        ...keys.map((key) {
          return TableRow(
            children: [
              _TableBodyCell(text: titleForKey(key), secondary: false),
              _TableBodyCell(
                text: formatValue(nutrients[key]),
                secondary: false,
                emphasize: true,
              ),
            ],
          );
        }),
      ],
    );
  }
}

class _TableHeaderCell extends StatelessWidget {
  const _TableHeaderCell({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Text(
        text,
        style: context.textTheme.titleSSemiBold.copyWith(
          color: context.semanticColors.textSecondary,
        ),
      ),
    );
  }
}

class _TableBodyCell extends StatelessWidget {
  const _TableBodyCell({
    required this.text,
    required this.secondary,
    this.emphasize = false,
  });

  final String text;
  final bool secondary;
  final bool emphasize;

  @override
  Widget build(BuildContext context) {
    final style = emphasize
        ? context.textTheme.bodyMMedium.copyWith(
            color: context.semanticColors.textPrimary,
            fontWeight: FontWeight.w600,
          )
        : context.textTheme.bodyMMedium.copyWith(
            color: secondary
                ? context.semanticColors.textSecondary
                : context.semanticColors.textPrimary,
          );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Text(text, style: style),
    );
  }
}
