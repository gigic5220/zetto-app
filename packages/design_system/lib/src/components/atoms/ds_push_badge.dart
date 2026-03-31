import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSPushBadgeSize { small, medium }

class DSPushBadge extends StatefulWidget {
  const DSPushBadge._({
    required this.size,
    required this.child,
    this.alignment,
    this.left,
    this.right,
    this.top,
    this.bottom,
    this.isShow = true,
  });

  factory DSPushBadge.alignment({
    required Widget child,
    required Alignment alignment,
    required DSPushBadgeSize size,
    bool isShow = true,
  }) => DSPushBadge._(alignment: alignment, size: size, isShow: isShow, child: child);

  factory DSPushBadge.position({
    required Widget child,
    required DSPushBadgeSize size,
    double? left,
    double? right,
    double? top,
    double? bottom,
    bool isShow = true,
  }) => DSPushBadge._(left: left, right: right, top: top, bottom: bottom, size: size, isShow: isShow, child: child);

  final Widget child;
  final DSPushBadgeSize size;
  final bool isShow;
  final Alignment? alignment;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;

  @override
  State<DSPushBadge> createState() => _DSPushBadgeState();
}

class _DSPushBadgeState extends State<DSPushBadge> {
  late BadgeFillColors badgeFillColors;
  late double badgeSize;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSPushBadge oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    badgeFillColors = context.componentColors.badgeFill;
    badgeSize = switch (widget.size) {
      DSPushBadgeSize.small => 4,
      DSPushBadgeSize.medium => 8,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        widget.child,
        if (widget.alignment != null)
          Positioned.fill(
            child: Align(alignment: widget.alignment!, child: _buildBadge()),
          ),
        if (widget.left != null || widget.right != null || widget.top != null || widget.bottom != null)
          Positioned(
            left: widget.left,
            right: widget.right,
            top: widget.top,
            bottom: widget.bottom,
            child: _buildBadge(),
          ),
      ],
    );
  }

  Widget _buildBadge() {
    if (widget.isShow == false) return const SizedBox.shrink();

    return IgnorePointer(
      ignoring: true,
      child: Center(
        widthFactor: 1,
        heightFactor: 1,
        child: AnimatedContainer(
          width: badgeSize,
          height: badgeSize,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(color: badgeFillColors.accent, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
