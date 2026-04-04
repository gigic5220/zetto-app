import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../components/atoms.dart';
import '../../../components/ions.dart';
import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../common/animated_button.dart';

enum DSAppBarType { title, logo, value, page }

class DSAppBar extends StatefulWidget implements PreferredSizeWidget {
  const DSAppBar._({
    required this.type,
    this.text,
    this.logoUri,
    this.iconSolidButton,
    this.textBadge,
    this.showBackButton = false,
    this.actionWidgetList = const [],
    this.systemNavigationBarColor,
    this.iOSStatusBarBrightness,
    this.androidStatusBarBrightness,
    this.onTapBackButton,
  });

  factory DSAppBar.title({
    required String text,
    bool showBackButton = false,
    List<Widget> actionWidgetList = const [],
    Color? systemNavigationBarColor,
    Brightness? iOSStatusBarBrightness,
    Brightness? androidStatusBarBrightness,
    VoidCallback? onTapBackButton,
  }) => DSAppBar._(
    type: .title,
    text: text,
    showBackButton: showBackButton,
    actionWidgetList: actionWidgetList,
    systemNavigationBarColor: systemNavigationBarColor,
    iOSStatusBarBrightness: iOSStatusBarBrightness,
    androidStatusBarBrightness: androidStatusBarBrightness,
    onTapBackButton: onTapBackButton,
  );

  factory DSAppBar.logo({
    required String logoUri,
    bool showBackButton = false,
    List<Widget> actionWidgetList = const [],
    Color? systemNavigationBarColor,
    Brightness? iOSStatusBarBrightness,
    Brightness? androidStatusBarBrightness,
    VoidCallback? onTapBackButton,
  }) => DSAppBar._(
    type: .logo,
    logoUri: logoUri,
    showBackButton: showBackButton,
    actionWidgetList: actionWidgetList,
    systemNavigationBarColor: systemNavigationBarColor,
    iOSStatusBarBrightness: iOSStatusBarBrightness,
    androidStatusBarBrightness: androidStatusBarBrightness,
    onTapBackButton: onTapBackButton,
  );

  factory DSAppBar.value({
    required String text,
    DSIconSolidButton? iconSolidButton,
    bool showBackButton = false,
    List<Widget> actionWidgetList = const [],
    Color? systemNavigationBarColor,
    Brightness? iOSStatusBarBrightness,
    Brightness? androidStatusBarBrightness,
    VoidCallback? onTapBackButton,
  }) => DSAppBar._(
    type: .value,
    text: text,
    iconSolidButton: iconSolidButton,
    showBackButton: showBackButton,
    actionWidgetList: actionWidgetList,
    systemNavigationBarColor: systemNavigationBarColor,
    iOSStatusBarBrightness: iOSStatusBarBrightness,
    androidStatusBarBrightness: androidStatusBarBrightness,
    onTapBackButton: onTapBackButton,
  );

  factory DSAppBar.page({
    required String text,
    DSTextBadge? textBadge,
    bool showBackButton = false,
    List<Widget> actionWidgetList = const [],
    Color? systemNavigationBarColor,
    Brightness? iOSStatusBarBrightness,
    Brightness? androidStatusBarBrightness,
    VoidCallback? onTapBackButton,
  }) => DSAppBar._(
    type: .page,
    text: text,
    textBadge: textBadge,
    showBackButton: showBackButton,
    actionWidgetList: actionWidgetList,
    systemNavigationBarColor: systemNavigationBarColor,
    iOSStatusBarBrightness: iOSStatusBarBrightness,
    androidStatusBarBrightness: androidStatusBarBrightness,
    onTapBackButton: onTapBackButton,
  );

  final DSAppBarType type;
  final String? text;
  final String? logoUri;
  final DSIconSolidButton? iconSolidButton;
  final DSTextBadge? textBadge;
  final bool? showBackButton;
  final List<Widget> actionWidgetList;
  final Color? systemNavigationBarColor;
  final Brightness? iOSStatusBarBrightness;
  final Brightness? androidStatusBarBrightness;
  final VoidCallback? onTapBackButton;

  @override
  State<DSAppBar> createState() => _DSAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _DSAppBarState extends State<DSAppBar> {
  late NavigationTextColors navigationTextColors;
  late TextStyle? textStyle;
  late Color textColor;
  late double titleAreaLeftPadding;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSAppBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    navigationTextColors = context.componentColors.navigationText;
    textColor = navigationTextColors.base;
    titleAreaLeftPadding = widget.showBackButton == true ? 0 : context.componentPadding.medium;
    textStyle = switch (widget.type) {
      .title => context.textTheme.titleMSemiBold,
      .logo => null,
      .value => context.textTheme.listTitleMSemiBold,
      .page => context.textTheme.bodyXLMedium,
    };
  }

  @override
  Widget build(BuildContext context) {
    final AppBarThemeData appBarTheme = AppBarTheme.of(context);

    final SystemUiOverlayStyle overlayStyle = SystemUiOverlayStyle(
      statusBarColor: widget.systemNavigationBarColor ?? Colors.transparent,
      statusBarIconBrightness:
          widget.androidStatusBarBrightness ?? appBarTheme.systemOverlayStyle?.statusBarIconBrightness,
      statusBarBrightness: widget.iOSStatusBarBrightness ?? appBarTheme.systemOverlayStyle?.statusBarBrightness,
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlayStyle,
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          bottom: false,
          child: Container(
            margin: .symmetric(horizontal: context.margin.navigation),
            height: 56,
            child: Row(
              mainAxisAlignment: .start,
              crossAxisAlignment: .center,
              children: [
                if (widget.showBackButton == true)
                  AnimatedButton(
                    onTap: widget.onTapBackButton ?? () => Navigator.of(context).pop(),
                    child: Padding(
                      padding: .all(context.componentPadding.large),
                      child: DSWrapper(uri: Svgs.icBack, view: WrapperView.fix20, svgColor: textColor),
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: .only(left: titleAreaLeftPadding),
                    child: Row(
                      children: switch (widget.type) {
                        .title => [_buildTitleWidget()],
                        .logo => [
                          if (widget.logoUri?.isNotEmpty == true)
                            DSWrapper(
                              uri: widget.logoUri!,
                              view: WrapperView(size: 82, ratio: 82 / 26),
                            ),
                        ],
                        .value || .page => [_buildTitleWidget()],
                      },
                    ),
                  ),
                ),
                // action area
                Row(spacing: context.componentGap.small, children: widget.actionWidgetList),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleWidget({double? textHeight}) {
    return Expanded(
      child: Row(
        children: [
          Flexible(
            child: Text(
              widget.text!,
              style: textStyle?.copyWith(color: textColor, height: textHeight),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (widget.iconSolidButton != null) ...[
            SizedBox(width: context.componentGap.xSmall),
            widget.iconSolidButton!,
          ],
          if (widget.textBadge != null) ...[SizedBox(width: context.componentGap.xxSmall), widget.textBadge!],
        ],
      ),
    );
  }
}

class DSAppBarActionWidget extends StatelessWidget {
  const DSAppBarActionWidget({
    super.key,
    required this.wrapper,
    required this.onTap,
    this.showPushBadge = false,
    this.svgColor,
  });

  final DSWrapper wrapper;
  final bool showPushBadge;
  final FutureOr<void> Function() onTap;
  final Color? svgColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onTap: onTap,
      child: Padding(
        padding: .fromLTRB(
          context.componentPadding.large,
          context.componentPadding.large,
          context.componentPadding.small,
          context.componentPadding.large,
        ),
        child: Container(
          margin: .only(right: 4),
          child: DSPushBadge.position(isShow: showPushBadge, size: .small, top: 0, right: -4, child: wrapper),
        ),
      ),
    );
  }
}
