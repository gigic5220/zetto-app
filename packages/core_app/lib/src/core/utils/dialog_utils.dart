import 'package:design_system/components/common.dart';
import 'package:design_system/components/ions.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

enum SheetDirection { topToBottom, bottomToTop }

abstract class DialogUtils {
  DialogUtils._();

  static Future<T?> showDismissibleBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    double? minHeight,
    double? maxHeight,
    bool useBottomPadding = true,
    bool barrierDismissible = true,
    bool isDynamicScrollHeight = false,
  }) async {
    return await _showBottomSheet<T>(
      context: context,
      child: child,
      minHeight: minHeight,
      maxHeight: maxHeight,
      useBottomPadding: useBottomPadding,
      barrierDismissible: barrierDismissible,
      isDynamicScrollHeight: isDynamicScrollHeight,
    );
  }

  static Future<T?> showLockedBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    required Widget callToActionWidget,
    double? minHeight,
    double? maxHeight,
    bool useBottomPadding = true,
    bool isDynamicScrollHeight = false,
  }) async {
    return await _showBottomSheet<T>(
      context: context,
      child: child,
      minHeight: minHeight,
      maxHeight: maxHeight,
      useBottomPadding: useBottomPadding,
      barrierDismissible: false,
      swipeDismissible: false,
      isDynamicScrollHeight: isDynamicScrollHeight,
      callToActionWidget: callToActionWidget,
    );
  }

  static Future<T?> _showBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    double? minHeight,
    double? maxHeight,
    bool useBottomPadding = true,
    bool swipeDismissible = true,
    bool barrierDismissible = true,
    bool isDynamicScrollHeight = false,
    Widget? callToActionWidget,
  }) async {
    final backgroundColor = context.componentColors.modalFill.base;

    Widget bodyWidget = ConstrainedBox(
      constraints: BoxConstraints(minHeight: minHeight ?? 0, maxHeight: maxHeight ?? double.infinity),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (swipeDismissible) DSHandle(),
          Flexible(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                context.componentPadding.xxxLarge,
                swipeDismissible ? 0 : context.componentPadding.xxxLarge,
                context.componentPadding.xxxLarge,
                0,
              ),
              child: child,
            ),
          ),
          if (!swipeDismissible && callToActionWidget != null) callToActionWidget,
          if (useBottomPadding) const CommonBottomPadding(),
        ],
      ),
    );

    return await Navigator.of(context, rootNavigator: true).push<T>(
      ModalSheetRoute(
        // viewportPadding: EdgeInsets.symmetric(
        //   horizontal: context.isMobile ? 0 : ResponsiveUtil.getTabletPadding(context),
        // ),
        swipeDismissible: swipeDismissible,
        barrierDismissible: barrierDismissible,
        builder: (context) {
          return Sheet(
            controller: SheetController(),
            physics: const ClampingSheetPhysics(),
            decoration: MaterialSheetDecoration(
              size: SheetSize.fit,
              color: backgroundColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: isDynamicScrollHeight
                ? SmoothSheetScrollableWidget(
                    maxHeight: maxHeight,
                    useBottomPadding: useBottomPadding,
                    child: bodyWidget,
                  )
                : bodyWidget,
          );
        },
      ),
    );
  }
}

class SmoothSheetScrollableWidget extends StatefulWidget {
  const SmoothSheetScrollableWidget({super.key, required this.child, this.maxHeight, this.useBottomPadding = true});

  final Widget child;
  final double? maxHeight;
  final bool useBottomPadding;

  @override
  State<SmoothSheetScrollableWidget> createState() => SmoothSheetScrollableWidgetState();

  static SmoothSheetScrollableWidgetState? of(BuildContext context) {
    return context.findAncestorStateOfType<SmoothSheetScrollableWidgetState>();
  }
}

class SmoothSheetScrollableWidgetState extends State<SmoothSheetScrollableWidget> {
  double height = 0;

  bool get isNeedExpanded => widget.maxHeight != null && height >= widget.maxHeight!;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: height,
          child: OverflowBox(
            minHeight: 0,
            maxHeight: double.infinity,
            alignment: Alignment.topCenter,
            child: SizeReportingWidget(
              onSizeChange: (value) {
                if (height >= value.height) return;

                setState(() {
                  height = value.height;
                });
              },
              child: SingleChildScrollView(child: widget.child),
            ),
          ),
        ),
        if (widget.useBottomPadding) const CommonBottomPadding(),
      ],
    );
  }
}

class SmoothSheetScrollableArea extends StatefulWidget {
  const SmoothSheetScrollableArea({super.key, required this.child, this.scrollController});

  final Widget child;
  final ScrollController? scrollController;

  @override
  State<SmoothSheetScrollableArea> createState() => _SmoothSheetScrollableAreaState();
}

class _SmoothSheetScrollableAreaState extends State<SmoothSheetScrollableArea> {
  double height = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final parent = SmoothSheetScrollableWidget.of(context);
    final isNeedExpanded = parent?.isNeedExpanded ?? false;

    final scrollView = ClipRect(
      child: SingleChildScrollView(controller: widget.scrollController, child: widget.child),
    );

    final child = SizeReportingWidget(
      onSizeChange: (value) {
        if (height >= value.height) return;

        setState(() {
          height = value.height;
        });
      },
      child: scrollView,
    );

    return isNeedExpanded ? Expanded(child: child) : child;
  }
}
