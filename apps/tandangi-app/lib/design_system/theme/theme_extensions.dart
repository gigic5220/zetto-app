import 'package:flutter/material.dart';
import 'package:tandangi/design_system/color/semantic/colors.dart';

extension DesingSystemBuildContext on BuildContext {
  SemanticColors get colorTheme => Theme.of(this).extension<SemanticColors>()!;
}

extension DesingSystemTextStyle on TextStyle {
  TextStyle withColor(Color? color) => copyWith(color: color);
  TextStyle withUnderline() => copyWith(decoration: TextDecoration.underline);
}
