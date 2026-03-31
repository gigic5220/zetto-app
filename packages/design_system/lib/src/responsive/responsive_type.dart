enum AppResponsiveType {
  mobile(0),
  tablet(744),
  desktop(1280);

  const AppResponsiveType(this.breakpoint);

  final double breakpoint;
}
