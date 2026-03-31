import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle? {
  TextStyle? withOpacity(
    BuildContext context,
    double opacity,
  ) {
    Color? color = this?.color ?? DefaultTextStyle.of(context).style.color;
    return this?.copyWith(color: color?.withValues(alpha: opacity));
  }

  TextStyle? withColor(
    Color? color,
  ) {
    if (color == null) {
      return this;
    }
    return this?.copyWith(color: color);
  }
}
