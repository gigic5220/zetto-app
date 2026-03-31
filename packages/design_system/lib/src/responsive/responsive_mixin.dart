import 'package:flutter/widgets.dart';

import 'responsive_builder.dart';
import 'responsive_settings.dart';
import 'responsive_type.dart';

mixin ResponsiveMixin on StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: buildByType);
  }

  Widget buildByType(BuildContext context, AppResponsiveType type, Orientation orientation);
}

mixin ResponsiveStateMixin<T extends StatefulWidget, R extends Enum> on State<T> {
  AppResponsiveType get responsiveType => ResponsiveSettings.getResponsiveType(context);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: buildByType);
  }

  Widget buildByType(BuildContext context, AppResponsiveType type, Orientation orientation);
}
