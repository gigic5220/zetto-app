import 'package:flutter/material.dart';
import 'package:tandangi/design_system/color/semantic/colors.dart';
import 'package:tandangi/design_system/typography/app_typography.dart';

enum DSTextBadgeVariant { success, successStrong, warning, warningStrong }

class DSTextBadge extends StatefulWidget {
  const DSTextBadge._({required this.variant, required this.text});

  factory DSTextBadge.success({required String text}) =>
      DSTextBadge._(variant: .success, text: text);

  factory DSTextBadge.successStrong({required String text}) =>
      DSTextBadge._(variant: .successStrong, text: text);

  factory DSTextBadge.warning({required String text}) =>
      DSTextBadge._(variant: .warning, text: text);

  factory DSTextBadge.warningStrong({required String text}) =>
      DSTextBadge._(variant: .warningStrong, text: text);

  final DSTextBadgeVariant variant;
  final String text;

  @override
  State<DSTextBadge> createState() => _DSTextBadgeState();
}

class _DSTextBadgeState extends State<DSTextBadge> {
  late Color backgroundColor;
  late Color textColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSTextBadge oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    switch (widget.variant) {
      case .success:
        backgroundColor = SemanticColors.fillSuccess;
        textColor = SemanticColors.textSuccess;
        break;
      case .successStrong:
        backgroundColor = SemanticColors.fillSuccessStrong;
        textColor = SemanticColors.textInverse;
        break;
      case .warning:
        backgroundColor = SemanticColors.fillWarning;
        textColor = SemanticColors.textWarning;
        break;
      case .warningStrong:
        backgroundColor = SemanticColors.fillWarningStrong;
        textColor = SemanticColors.textInverse;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: .circular(999),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(
        widget.text,
        style: AppTypography.labelS.copyWith(color: textColor),
      ),
    );
  }
}
