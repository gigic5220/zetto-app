import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../foundations/dimensions/ds_component_gap.dart';
import '../foundations/dimensions/ds_component_padding.dart';
import '../foundations/dimensions/ds_component_radius.dart';
import '../foundations/dimensions/ds_margin.dart';
import '../foundations/semantic/app_semantic_texts.dart';
import '../responsive/responsive_settings.dart';
import '../responsive/responsive_type.dart';

extension BuildContextExtension on BuildContext {
  AppSemanticColors get semanticColors => Theme.of(this).extension<AppSemanticColors>() ?? AppSemanticColors.light;

  AppComponentColors get componentColors => Theme.of(this).extension<AppComponentColors>() ?? AppComponentColors.light;

  AppSemanticTexts get textTheme => Theme.of(this).extension<AppSemanticTexts>() ?? AppSemanticTexts.textTheme;

  ThemeData get theme => Theme.of(this);

  AppResponsiveType get responsiveType => ResponsiveSettings.getResponsiveType(this);

  DsMargin get margin => DsMargin.of(this);

  DsComponentGap get componentGap => DsComponentGap.of(this);

  DsComponentPadding get componentPadding => DsComponentPadding.of(this);

  DsComponentRadius get componentRadius => DsComponentRadius.of(this);
}
