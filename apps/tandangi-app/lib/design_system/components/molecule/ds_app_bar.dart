import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tandangi/design_system/color/semantic/colors.dart';
import 'package:tandangi/design_system/components/atoms/animated_button.dart';
import 'package:tandangi/design_system/components/atoms/ds_solid_button.dart';
import 'package:tandangi/design_system/components/atoms/ds_text_badge.dart';
import 'package:tandangi/design_system/components/ions/ds_wrapper.dart';
import 'package:tandangi/design_system/typography/app_typography.dart';
import 'package:tandangi/gen/assets.gen.dart';
import 'package:tandangi/util/extension/string_extension.dart';

enum DSAppBarType { title, logo, value, page }

class DSAppBar extends StatefulWidget implements PreferredSizeWidget {
  const DSAppBar._({
    required this.type,
    this.text,
    this.logoUri,
    this.solidButton,
    this.textBadge,
    this.showBackButton = false,
    this.actionWidgets = const [],
    this.systemNavigationBarColor,
    this.iOSStatusBarBrightness,
    this.androidStatusBarBrightness,
    this.onTapBackButton,
  });

  factory DSAppBar.title({
    required String text,
    bool showBackButton = false,
    List<Widget> actionWidgets = const [],
    Color? systemNavigationBarColor,
    Brightness? iOSStatusBarBrightness,
    Brightness? androidStatusBarBrightness,
    VoidCallback? onTapBackButton,
  }) => DSAppBar._(
    type: .title,
    text: text,
    showBackButton: showBackButton,
    actionWidgets: actionWidgets,
    systemNavigationBarColor: systemNavigationBarColor,
    iOSStatusBarBrightness: iOSStatusBarBrightness,
    androidStatusBarBrightness: androidStatusBarBrightness,
    onTapBackButton: onTapBackButton,
  );

  factory DSAppBar.logo({
    required String logoUri,
    bool showBackButton = false,
    List<Widget> actionWidgets = const [],
    Color? systemNavigationBarColor,
    Brightness? iOSStatusBarBrightness,
    Brightness? androidStatusBarBrightness,
    VoidCallback? onTapBackButton,
  }) => DSAppBar._(
    type: .logo,
    logoUri: logoUri,
    showBackButton: showBackButton,
    actionWidgets: actionWidgets,
    systemNavigationBarColor: systemNavigationBarColor,
    iOSStatusBarBrightness: iOSStatusBarBrightness,
    androidStatusBarBrightness: androidStatusBarBrightness,
    onTapBackButton: onTapBackButton,
  );

  factory DSAppBar.value({
    required String text,
    DSSolidButton? solidButton,
    bool showBackButton = false,
    List<Widget> actionWidgets = const [],
    Color? systemNavigationBarColor,
    Brightness? iOSStatusBarBrightness,
    Brightness? androidStatusBarBrightness,
    VoidCallback? onTapBackButton,
  }) => DSAppBar._(
    type: .value,
    text: text,
    solidButton: solidButton,
    showBackButton: showBackButton,
    actionWidgets: actionWidgets,
    systemNavigationBarColor: systemNavigationBarColor,
    iOSStatusBarBrightness: iOSStatusBarBrightness,
    androidStatusBarBrightness: androidStatusBarBrightness,
    onTapBackButton: onTapBackButton,
  );

  factory DSAppBar.page({
    String? text,
    DSTextBadge? textBadge,
    bool showBackButton = false,
    List<Widget> actionWidgets = const [],
    Color? systemNavigationBarColor,
    Brightness? iOSStatusBarBrightness,
    Brightness? androidStatusBarBrightness,
    VoidCallback? onTapBackButton,
  }) => DSAppBar._(
    type: .page,
    text: text,
    textBadge: textBadge,
    showBackButton: showBackButton,
    actionWidgets: actionWidgets,
    systemNavigationBarColor: systemNavigationBarColor,
    iOSStatusBarBrightness: iOSStatusBarBrightness,
    androidStatusBarBrightness: androidStatusBarBrightness,
    onTapBackButton: onTapBackButton,
  );

  final DSAppBarType type;
  final String? text;
  final String? logoUri;
  final DSSolidButton? solidButton;
  final DSTextBadge? textBadge;
  final bool? showBackButton;
  final List<Widget> actionWidgets;
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
    textColor = SemanticColors.textPrimary;
    titleAreaLeftPadding = widget.showBackButton == true ? 0 : 8;
    textStyle = switch (widget.type) {
      .title => AppTypography.titleM,
      .logo => null,
      .value => AppTypography.titleM,
      .page => AppTypography.titleM,
    };
  }

  @override
  Widget build(BuildContext context) {
    final AppBarThemeData appBarTheme = AppBarTheme.of(context);

    final SystemUiOverlayStyle overlayStyle = SystemUiOverlayStyle(
      statusBarColor: widget.systemNavigationBarColor ?? Colors.transparent,
      statusBarIconBrightness:
          widget.androidStatusBarBrightness ??
          appBarTheme.systemOverlayStyle?.statusBarIconBrightness,
      statusBarBrightness:
          widget.iOSStatusBarBrightness ??
          appBarTheme.systemOverlayStyle?.statusBarBrightness,
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlayStyle,
      child: Material(
        color: SemanticColors.bgPage,
        child: SafeArea(
          bottom: false,
          child: Container(
            margin: .symmetric(horizontal: 12),
            height: 56,
            child: Row(
              mainAxisAlignment: .start,
              crossAxisAlignment: .center,
              children: [
                if (widget.showBackButton == true)
                  AnimatedButton(
                    onTap:
                        widget.onTapBackButton ??
                        () => Navigator.of(context).pop(),
                    child: Padding(
                      padding: .all(12),
                      child: DSWrapper(
                        uri: Assets.svgs.icBack,
                        view: WrapperView.fix24,
                        svgColor: textColor,
                      ),
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
                              view: WrapperView(size: 107, ratio: 106 / 24),
                            ),
                        ],
                        .value => [
                          _buildTitleWidget(),
                          if (widget.solidButton != null) ...[
                            SizedBox(width: 4),
                            widget.solidButton!,
                          ],
                        ],
                        .page => [
                          if (widget.text?.isExist == true) ...[
                            _buildTitleWidget(textHeight: 1.2),
                          ],
                          if (widget.textBadge != null) ...[
                            SizedBox(width: 2),
                            widget.textBadge!,
                          ],
                        ],
                      },
                    ),
                  ),
                ),
                // action area
                Row(spacing: 8, children: widget.actionWidgets),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleWidget({double? textHeight}) {
    return Expanded(
      child: Text(
        widget.text!,
        style: textStyle?.copyWith(color: textColor, height: textHeight),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
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
        padding: .fromLTRB(12, 12, 12, 12),
        child: Container(margin: .only(right: 4), child: wrapper),
      ),
    );
  }
}
