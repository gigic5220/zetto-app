import 'package:flutter/widgets.dart';

import 'responsive_settings.dart';
import 'responsive_type.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({super.key, required this.builder});

  final Widget Function(BuildContext context, AppResponsiveType type, Orientation orientation) builder;

  @override
  Widget build(BuildContext context) {
    final type = ResponsiveSettings.getResponsiveType(context);
    final orientation = MediaQuery.orientationOf(context);
    return builder(context, type, orientation);
  }
}
