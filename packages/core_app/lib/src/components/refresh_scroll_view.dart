import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

class RefreshScrollView extends StatefulWidget {
  const RefreshScrollView({
    super.key,
    required this.child,
    required this.indicatorHeight,
    required this.indicatorBuilder,
    required this.onRefresh,
  });

  final Widget child;
  final double indicatorHeight;
  final Widget Function(IndicatorStateChange? state) indicatorBuilder;
  final Future<void> Function() onRefresh;

  @override
  State<RefreshScrollView> createState() => _RefreshScrollViewState();
}

class _RefreshScrollViewState extends State<RefreshScrollView> {
  IndicatorStateChange? indicatorState;

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      offsetToArmed: widget.indicatorHeight,
      autoRebuild: false,
      onRefresh: widget.onRefresh,
      durations: RefreshIndicatorDurations(finalizeDuration: const Duration(milliseconds: 200)),
      onStateChanged: (change) {
        setState(() {
          indicatorState = change;
        });
      },
      builder: (context, child, controller) {
        return Stack(
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, _) {
                return SizedBox(
                  height: widget.indicatorHeight * controller.value,
                  child: widget.indicatorBuilder(indicatorState),
                );
              },
            ),
            AnimatedBuilder(
              builder: (context, _) {
                return Transform.translate(
                  offset: Offset(0.0, controller.value * widget.indicatorHeight),
                  child: child,
                );
              },
              animation: controller,
            ),
          ],
        );
      },
      child: widget.child,
    );
  }
}
