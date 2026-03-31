import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import 'ds_tooltip_message.dart';

enum DSTooltipPosition {
  topAlignedLeft,
  topAlignedCenter,
  topAlignedRight,
  leftAlignedTop,
  leftAlignedCenter,
  leftAlignedBottom,
  rightAlignedTop,
  rightAlignedCenter,
  rightAlignedBottom,
  bottomAlignedLeft,
  bottomAlignedCenter,
  bottomAlignedRight,
}

class DSTooltip extends StatefulWidget {
  const DSTooltip({
    super.key,
    required this.child,
    required this.tooltipMessage,
    this.position = DSTooltipPosition.bottomAlignedCenter,
  });

  final Widget child;
  final String tooltipMessage;
  final DSTooltipPosition position;

  @override
  State<DSTooltip> createState() => _DSTooltipState();
}

class _DSTooltipState extends State<DSTooltip> with SingleTickerProviderStateMixin {
  final Duration animationDuration = const Duration(milliseconds: 800);
  final Duration reverseAnimationDuration = const Duration(milliseconds: 200);

  late AnimationController _animationController;
  late Animation<double> _animation;
  late double gap;

  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSTooltip oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    gap = context.componentPadding.xSmall;
  }

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: animationDuration);
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _animationController, curve: Curves.elasticOut, reverseCurve: Curves.easeInOut));
  }

  void _showTooltip() {
    if (_animationController.isAnimating) return;

    final (
      DSTooltipMessageArrowPosition arrowPosition,
      Alignment targetAnchor,
      Alignment followerAnchor,
      Offset offset,
    ) = _getAlignmentAndOffset(
      widget.position,
    );

    _overlayEntry = OverlayEntry(
      builder: (context) => TapRegion(
        onTapInside: (event) => _hideTooltip(),
        onTapOutside: (event) => _hideTooltip(),
        child: Stack(
          children: [
            CompositedTransformFollower(
              link: _layerLink,
              targetAnchor: targetAnchor,
              followerAnchor: followerAnchor,
              offset: offset,
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return FadeTransition(
                    opacity: _animation,
                    child: ScaleTransition(
                      scale: _animation,
                      alignment: followerAnchor,
                      child: DSTooltipMessage(message: widget.tooltipMessage, arrowPosition: arrowPosition),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
    Overlay.of(context).insert(_overlayEntry!);

    _animationController.duration = animationDuration;
    _animationController.forward();
  }

  Future<void> _hideTooltip() async {
    if (_animationController.isAnimating) return;

    _animationController.duration = reverseAnimationDuration;
    await _animationController.reverse();
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  (DSTooltipMessageArrowPosition, Alignment, Alignment, Offset) _getAlignmentAndOffset(DSTooltipPosition position) {
    return switch (position) {
      DSTooltipPosition.topAlignedLeft => (
        DSTooltipMessageArrowPosition.bottomAlignedLeft,
        Alignment.topLeft,
        Alignment.bottomLeft,
        Offset(0, -gap),
      ),
      DSTooltipPosition.topAlignedCenter => (
        DSTooltipMessageArrowPosition.bottomAlignedCenter,
        Alignment.topCenter,
        Alignment.bottomCenter,
        Offset(0, -gap),
      ),
      DSTooltipPosition.topAlignedRight => (
        DSTooltipMessageArrowPosition.bottomAlignedRight,
        Alignment.topRight,
        Alignment.bottomRight,
        Offset(0, -gap),
      ),
      DSTooltipPosition.leftAlignedTop => (
        DSTooltipMessageArrowPosition.rightAlignedTop,
        Alignment.topLeft,
        Alignment.topRight,
        Offset(-gap, 0),
      ),
      DSTooltipPosition.leftAlignedCenter => (
        DSTooltipMessageArrowPosition.rightAlignedCenter,
        Alignment.centerLeft,
        Alignment.centerRight,
        Offset(-gap, 0),
      ),
      DSTooltipPosition.leftAlignedBottom => (
        DSTooltipMessageArrowPosition.rightAlignedBottom,
        Alignment.bottomLeft,
        Alignment.bottomRight,
        Offset(-gap, 0),
      ),
      DSTooltipPosition.rightAlignedTop => (
        DSTooltipMessageArrowPosition.leftAlignedTop,
        Alignment.topRight,
        Alignment.topLeft,
        Offset(gap, 0),
      ),
      DSTooltipPosition.rightAlignedCenter => (
        DSTooltipMessageArrowPosition.leftAlignedCenter,
        Alignment.centerRight,
        Alignment.centerLeft,
        Offset(gap, 0),
      ),
      DSTooltipPosition.rightAlignedBottom => (
        DSTooltipMessageArrowPosition.leftAlignedBottom,
        Alignment.bottomRight,
        Alignment.bottomLeft,
        Offset(gap, 0),
      ),
      DSTooltipPosition.bottomAlignedLeft => (
        DSTooltipMessageArrowPosition.topAlignedLeft,
        Alignment.bottomLeft,
        Alignment.topLeft,
        Offset(0, gap),
      ),
      DSTooltipPosition.bottomAlignedCenter => (
        DSTooltipMessageArrowPosition.topAlignedCenter,
        Alignment.bottomCenter,
        Alignment.topCenter,
        Offset(0, gap),
      ),
      DSTooltipPosition.bottomAlignedRight => (
        DSTooltipMessageArrowPosition.topAlignedRight,
        Alignment.bottomRight,
        Alignment.topRight,
        Offset(0, gap),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(onTap: _showTooltip, behavior: HitTestBehavior.opaque, child: widget.child),
    );
  }
}
