import 'package:flutter/widgets.dart';

import 'responsive_type.dart';

class ResponsiveSettings extends InheritedWidget {
  const ResponsiveSettings({super.key, required super.child});

  static ResponsiveSettings of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<ResponsiveSettings>();
    assert(result != null, 'No ResponsiveSettings found in context');
    return result!;
  }

  static AppResponsiveType getResponsiveType(BuildContext context) {
    return of(context).type(context);
  }

  AppResponsiveType type(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width >= AppResponsiveType.desktop.breakpoint) return AppResponsiveType.desktop;
    if (width >= AppResponsiveType.tablet.breakpoint) return AppResponsiveType.tablet;
    return AppResponsiveType.mobile;
  }

  @override
  bool updateShouldNotify(ResponsiveSettings oldWidget) {
    return false;
  }
}
