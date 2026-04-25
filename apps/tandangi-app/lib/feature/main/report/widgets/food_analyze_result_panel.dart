import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:tandangi/domain/entity/food_analyze_result_entity.dart';

/// [FoodAnalyzeResultEntity]: per-dish nutrients and nutrition comparison.
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
    if (raw == null || raw is! NutrientValueEntity) return '—';
    final v = raw.value;
    final u = raw.unit;
    final range = raw.range;
    final buf = StringBuffer();
    if (v != null && u != null) {
      buf.write('${_formatNum(v)} $u');
    } else if (v != null) {
      buf.write(_formatNum(v));
    } else {
      return '—';
    }
    if (range.length >= 2) {
      buf.write(' (${_formatNum(range[0])} ~ ${_formatNum(range[1])})');
    }
    return buf.toString();
  }

  static String _nutrientTitle(String key) =>
      _nutrientLabels[key] ?? key.replaceAll('_', ' ');

  static String _formatDateTime(DateTime dateTime) {
    final y = dateTime.year.toString().padLeft(4, '0');
    final m = dateTime.month.toString().padLeft(2, '0');
    final d = dateTime.day.toString().padLeft(2, '0');
    final hh = dateTime.hour.toString().padLeft(2, '0');
    final mm = dateTime.minute.toString().padLeft(2, '0');
    return '$y.$m.$d $hh:$mm';
  }

  static String _formatPercent(double? percent) {
    if (percent == null) return '—';
    return '${percent.toStringAsFixed(percent % 1 == 0 ? 0 : 1)}%';
  }

  static String _formatGram(num? value) {
    if (value == null) return '—';
    return '${_formatNum(value)}g';
  }

  static String _formatMilligram(num? value) {
    if (value == null) return '—';
    return '${_formatNum(value)}mg';
  }

  static Map<String, NutrientValueEntity> _nutrientsToMap(
    AnalyzedFoodItemEntity item,
  ) {
    return {
      if (item.kcal != null) 'kcal': item.kcal!,
      if (item.carbohydrate != null) 'carb_g': item.carbohydrate!,
      if (item.protein != null) 'protein_g': item.protein!,
      if (item.fat != null) 'fat_g': item.fat!,
      if (item.sugar != null) 'sugar_g': item.sugar!,
      if (item.sodium != null) 'sodium_mg': item.sodium!,
    };
  }

  List<Widget> _nutritionComparisonBlocks(
    BuildContext context,
    AnalysisNutritionInfoEntity comparison,
  ) {
    return [
      SizedBox(height: context.componentGap.large),
      _Section(
        title: '영양 비교',
        child: _NutritionComparisonSummary(comparison: comparison),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final radius = context.componentRadius.medium;
    final gap = context.componentGap.large;
    final analysisNutritionInfo = result.analysisNutritionInfo;

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
            if (result.createdAt != null) ...[
              Text(
                '분석 시각 ${_formatDateTime(result.createdAt!)}',
                style: context.textTheme.bodyMMedium.copyWith(
                  color: context.semanticColors.textSecondary,
                ),
              ),
              SizedBox(height: gap),
            ],
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
            if (analysisNutritionInfo != null)
              ..._nutritionComparisonBlocks(context, analysisNutritionInfo),
          ],
        ),
      ),
    );
  }
}

class _NutritionComparisonSummary extends StatelessWidget {
  const _NutritionComparisonSummary({required this.comparison});

  final AnalysisNutritionInfoEntity comparison;

  @override
  Widget build(BuildContext context) {
    final items = <_ComparisonSummaryItem>[
      if (comparison.kcal != null)
        _ComparisonSummaryItem(
          title: '칼로리',
          detail:
              '${FoodAnalyzeResultPanel._formatNum(comparison.kcal!.intake)}kcal / '
              '${FoodAnalyzeResultPanel._formatNum(comparison.kcal!.target)}kcal '
              '(${FoodAnalyzeResultPanel._formatPercent(comparison.kcal!.percent)})',
        ),
      if (comparison.carbohydrate != null)
        _ComparisonSummaryItem(
          title: '탄수화물',
          detail:
              '${FoodAnalyzeResultPanel._formatGram(comparison.carbohydrate!.intake)} / '
              '${FoodAnalyzeResultPanel._formatGram(comparison.carbohydrate!.target)} '
              '(${FoodAnalyzeResultPanel._formatPercent(comparison.carbohydrate!.percent)})',
        ),
      if (comparison.protein != null)
        _ComparisonSummaryItem(
          title: '단백질',
          detail:
              '${FoodAnalyzeResultPanel._formatGram(comparison.protein!.intake)} / '
              '${FoodAnalyzeResultPanel._formatGram(comparison.protein!.target)} '
              '(${FoodAnalyzeResultPanel._formatPercent(comparison.protein!.percent)})',
        ),
      if (comparison.fat != null)
        _ComparisonSummaryItem(
          title: '지방',
          detail:
              '${FoodAnalyzeResultPanel._formatGram(comparison.fat!.intake)} / '
              '${FoodAnalyzeResultPanel._formatGram(comparison.fat!.target)} '
              '(${FoodAnalyzeResultPanel._formatPercent(comparison.fat!.percent)})',
        ),
      if (comparison.sugar != null)
        _ComparisonSummaryItem(
          title: '당',
          detail:
              '${FoodAnalyzeResultPanel._formatGram(comparison.sugar!.intake)} / '
              '최대 ${FoodAnalyzeResultPanel._formatGram(comparison.sugar!.max)}',
          statusLabel: comparison.sugar!.status?.value,
        ),
      if (comparison.sodium != null)
        _ComparisonSummaryItem(
          title: '나트륨',
          detail:
              '${FoodAnalyzeResultPanel._formatMilligram(comparison.sodium!.intake)} / '
              '충분 ${FoodAnalyzeResultPanel._formatMilligram(comparison.sodium!.adequate)}, '
              '감축 ${FoodAnalyzeResultPanel._formatMilligram(comparison.sodium!.riskReduction)}',
          statusLabel: comparison.sodium!.status?.value,
        ),
    ];

    if (items.isEmpty) {
      return Text(
        '내용 없음',
        style: context.textTheme.bodyMMedium.copyWith(
          color: context.semanticColors.textTertiary,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < items.length; i++) ...[
          if (i > 0) SizedBox(height: context.componentGap.small),
          _ComparisonSummaryRow(item: items[i]),
        ],
      ],
    );
  }
}

class _ComparisonSummaryItem {
  const _ComparisonSummaryItem({
    required this.title,
    required this.detail,
    this.statusLabel,
  });

  final String title;
  final String detail;
  final String? statusLabel;
}

class _ComparisonSummaryRow extends StatelessWidget {
  const _ComparisonSummaryRow({required this.item});

  final _ComparisonSummaryItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: context.semanticColors.fillDefault,
        borderRadius: BorderRadius.circular(context.componentRadius.small),
        border: Border.all(color: context.semanticColors.borderSubtle),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: context.textTheme.titleSSemiBold.copyWith(
                    color: context.semanticColors.textPrimary,
                  ),
                ),
                SizedBox(height: context.componentGap.xSmall),
                Text(
                  item.detail,
                  style: context.textTheme.bodyMMedium.copyWith(
                    color: context.semanticColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          if (item.statusLabel != null && item.statusLabel!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                item.statusLabel!,
                style: context.textTheme.bodyMMedium.copyWith(
                  color: context.semanticColors.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
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
            nutrients: FoodAnalyzeResultPanel._nutrientsToMap(items[i]),
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

class _NutrientsTable extends StatelessWidget {
  const _NutrientsTable({
    required this.nutrients,
    required this.titleForKey,
    required this.formatValue,
  });

  final Map<String, NutrientValueEntity> nutrients;
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
