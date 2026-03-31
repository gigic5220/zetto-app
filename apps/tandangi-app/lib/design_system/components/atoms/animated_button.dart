import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({super.key, required this.child, this.onTap});

  final Widget child;
  final FutureOr<void> Function()? onTap;

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _colorAnimation;
  TickerFuture? downAnimation;

  Completer<void>? _completer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.96).animate(
      CurvedAnimation(curve: Easing.standard, parent: _animationController),
    );

    _colorAnimation = Tween<double>(begin: 0.0, end: 0.08).animate(
      CurvedAnimation(curve: Easing.standard, parent: _animationController),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTapDown: (details) {
        if (widget.onTap == null) return;
        if (_completer?.isCompleted == false) return;

        downAnimation = _animationController.forward();
      },
      onTapUp: (details) async {
        if (_completer?.isCompleted == false) return;

        _completer = Completer();

        await widget.onTap?.call();
        await downAnimation;
        if (context.mounted) {
          await _animationController.reverse();
        }

        _completer?.complete();
      },
      onTapCancel: () async {
        if (_completer?.isCompleted == false) return;

        await _animationController.reverse();

        if (_completer?.isCompleted == false) {
          _completer?.complete();
        }
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Color(0xFF9E9E9E).withValues(alpha: _colorAnimation.value),
                BlendMode.srcATop,
              ),
              child: child,
            ),
          );
        },
        child: widget.child,
      ),
    );
  }
}
