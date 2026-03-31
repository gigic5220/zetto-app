import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';

enum DSTooltipMessageArrowPosition {
  topAlignedLeft,
  topAlignedCenter,
  topAlignedRight,
  leftAlignedTop,
  leftAlignedCenter,
  leftAlignedBottom,
  rightAlignedTop,
  rightAlignedCenter,
  rightAlignedBottom,
  bottomAlignedLeft,
  bottomAlignedCenter,
  bottomAlignedRight,
}

class DSTooltipMessage extends StatefulWidget {
  const DSTooltipMessage({
    super.key,
    required this.message,
    this.arrowPosition = DSTooltipMessageArrowPosition.topAlignedLeft,
  });

  final String message;
  final DSTooltipMessageArrowPosition arrowPosition;

  @override
  State<DSTooltipMessage> createState() => _DSTooltipMessageState();
}

class _DSTooltipMessageState extends State<DSTooltipMessage> {
  late Color color;
  late double borderRadius;
  late TextStyle textStyle;
  late EdgeInsets padding;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSTooltipMessage oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    color = context.componentColors.tooltipFill.base;
    borderRadius = context.componentPadding.medium;
    textStyle = context.textTheme.labelSMedium.copyWith(color: context.componentColors.tooltipText.base);
    padding = EdgeInsets.symmetric(
      horizontal: context.componentPadding.medium,
      vertical: context.componentPadding.xSmall,
    );
    final arrowPadding = _DSTooltipMessagePainter.arrowHeight;

    padding += switch (widget.arrowPosition) {
      .topAlignedLeft || .topAlignedCenter || .topAlignedRight => EdgeInsets.only(top: arrowPadding),
      .bottomAlignedLeft || .bottomAlignedCenter || .bottomAlignedRight => EdgeInsets.only(bottom: arrowPadding),
      .leftAlignedTop || .leftAlignedCenter || .leftAlignedBottom => EdgeInsets.only(left: arrowPadding),
      .rightAlignedTop || .rightAlignedCenter || .rightAlignedBottom => EdgeInsets.only(right: arrowPadding),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      type: MaterialType.transparency,
      child: CustomPaint(
        painter: _DSTooltipMessagePainter(
          arrowPosition: widget.arrowPosition,
          color: color,
          borderRadius: borderRadius,
        ),
        child: Padding(
          padding: padding,
          child: Text(widget.message, style: textStyle),
        ),
      ),
    );
  }
}

class _DSTooltipMessagePainter extends CustomPainter {
  const _DSTooltipMessagePainter({required this.arrowPosition, required this.color, required this.borderRadius});

  static const double _arrowBase = 8;
  static const double arrowHeight = 4;
  static const double _halfBase = _arrowBase / 2;

  /// 꼭짓점을 살짝 뭉툭하게 (quadratic 제어점 오프셋)
  static const double _tipRound = 1.25;

  final DSTooltipMessageArrowPosition arrowPosition;
  final Color color;
  final double borderRadius;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final bodyRect = _bodyRect(size);
    canvas.drawRRect(RRect.fromRectAndRadius(bodyRect, Radius.circular(borderRadius)), paint);
    _drawArrow(canvas, paint, size);
  }

  Rect _bodyRect(Size size) {
    const h = arrowHeight;
    switch (arrowPosition) {
      case DSTooltipMessageArrowPosition.topAlignedLeft:
      case DSTooltipMessageArrowPosition.topAlignedCenter:
      case DSTooltipMessageArrowPosition.topAlignedRight:
        return Rect.fromLTWH(0, h, size.width, (size.height - h).clamp(0.0, double.infinity));
      case DSTooltipMessageArrowPosition.bottomAlignedLeft:
      case DSTooltipMessageArrowPosition.bottomAlignedCenter:
      case DSTooltipMessageArrowPosition.bottomAlignedRight:
        return Rect.fromLTWH(0, 0, size.width, (size.height - h).clamp(0.0, double.infinity));
      case DSTooltipMessageArrowPosition.leftAlignedTop:
      case DSTooltipMessageArrowPosition.leftAlignedCenter:
      case DSTooltipMessageArrowPosition.leftAlignedBottom:
        return Rect.fromLTWH(h, 0, (size.width - h).clamp(0.0, double.infinity), size.height);
      case DSTooltipMessageArrowPosition.rightAlignedTop:
      case DSTooltipMessageArrowPosition.rightAlignedCenter:
      case DSTooltipMessageArrowPosition.rightAlignedBottom:
        return Rect.fromLTWH(0, 0, (size.width - h).clamp(0.0, double.infinity), size.height);
    }
  }

  double _edgeInset() => borderRadius + _halfBase;

  void _drawArrow(Canvas canvas, Paint paint, Size size) {
    final inset = _edgeInset();
    final path = switch (arrowPosition) {
      DSTooltipMessageArrowPosition.topAlignedLeft => _arrowUp(
        Offset(inset.clamp(_halfBase, size.width - _halfBase), arrowHeight),
      ),
      DSTooltipMessageArrowPosition.topAlignedCenter => _arrowUp(Offset(size.width / 2, arrowHeight)),
      DSTooltipMessageArrowPosition.topAlignedRight => _arrowUp(
        Offset((size.width - inset).clamp(_halfBase, size.width - _halfBase), arrowHeight),
      ),
      DSTooltipMessageArrowPosition.bottomAlignedLeft => _arrowDown(
        Offset(inset.clamp(_halfBase, size.width - _halfBase), size.height - arrowHeight),
      ),
      DSTooltipMessageArrowPosition.bottomAlignedCenter => _arrowDown(
        Offset(size.width / 2, size.height - arrowHeight),
      ),
      DSTooltipMessageArrowPosition.bottomAlignedRight => _arrowDown(
        Offset((size.width - inset).clamp(_halfBase, size.width - _halfBase), size.height - arrowHeight),
      ),
      DSTooltipMessageArrowPosition.leftAlignedTop => _arrowLeft(
        Offset(arrowHeight, inset.clamp(_halfBase, size.height - _halfBase)),
      ),
      DSTooltipMessageArrowPosition.leftAlignedCenter => _arrowLeft(Offset(arrowHeight, size.height / 2)),
      DSTooltipMessageArrowPosition.leftAlignedBottom => _arrowLeft(
        Offset(arrowHeight, (size.height - inset).clamp(_halfBase, size.height - _halfBase)),
      ),
      DSTooltipMessageArrowPosition.rightAlignedTop => _arrowRight(
        Offset(size.width - arrowHeight, inset.clamp(_halfBase, size.height - _halfBase)),
      ),
      DSTooltipMessageArrowPosition.rightAlignedCenter => _arrowRight(
        Offset(size.width - arrowHeight, size.height / 2),
      ),
      DSTooltipMessageArrowPosition.rightAlignedBottom => _arrowRight(
        Offset(size.width - arrowHeight, (size.height - inset).clamp(_halfBase, size.height - _halfBase)),
      ),
    };
    canvas.drawPath(path, paint);
  }

  /// 위를 향함. base 중심 (cx, yBase), 밑변 y = yBase, 꼭짓점은 yBase - _arrowHeight
  Path _arrowUp(Offset baseCenter) {
    final cx = baseCenter.dx;
    final yb = baseCenter.dy;
    final path = Path()
      ..moveTo(cx - _halfBase, yb)
      ..lineTo(cx - _tipRound, yb - arrowHeight + _tipRound * 1.1)
      ..quadraticBezierTo(cx, yb - arrowHeight, cx + _tipRound, yb - arrowHeight + _tipRound * 1.1)
      ..lineTo(cx + _halfBase, yb)
      ..close();
    return path;
  }

  Path _arrowDown(Offset baseCenter) {
    final cx = baseCenter.dx;
    final yb = baseCenter.dy;
    final path = Path()
      ..moveTo(cx - _halfBase, yb)
      ..lineTo(cx - _tipRound, yb + arrowHeight - _tipRound * 1.1)
      ..quadraticBezierTo(cx, yb + arrowHeight, cx + _tipRound, yb + arrowHeight - _tipRound * 1.1)
      ..lineTo(cx + _halfBase, yb)
      ..close();
    return path;
  }

  /// 왼쪽을 향함. base 중심 (xBase, cy), 밑변 x = xBase, 세로 길이 _arrowBase
  Path _arrowLeft(Offset baseCenter) {
    final xb = baseCenter.dx;
    final cy = baseCenter.dy;
    final path = Path()
      ..moveTo(xb, cy - _halfBase)
      ..lineTo(xb - arrowHeight + _tipRound * 1.1, cy - _tipRound)
      ..quadraticBezierTo(xb - arrowHeight, cy, xb - arrowHeight + _tipRound * 1.1, cy + _tipRound)
      ..lineTo(xb, cy + _halfBase)
      ..close();
    return path;
  }

  Path _arrowRight(Offset baseCenter) {
    final xb = baseCenter.dx;
    final cy = baseCenter.dy;
    final path = Path()
      ..moveTo(xb, cy - _halfBase)
      ..lineTo(xb + arrowHeight - _tipRound * 1.1, cy - _tipRound)
      ..quadraticBezierTo(xb + arrowHeight, cy, xb + arrowHeight - _tipRound * 1.1, cy + _tipRound)
      ..lineTo(xb, cy + _halfBase)
      ..close();
    return path;
  }

  @override
  bool shouldRepaint(covariant _DSTooltipMessagePainter oldDelegate) {
    return oldDelegate.arrowPosition != arrowPosition ||
        oldDelegate.color != color ||
        oldDelegate.borderRadius != borderRadius;
  }
}
