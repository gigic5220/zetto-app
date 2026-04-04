import 'package:flutter/material.dart';

class SliderToastAnimated extends StatefulWidget {
  const SliderToastAnimated({super.key, required this.child, required this.dismissDuration, required this.onDismissed});

  final Widget child;
  final Duration dismissDuration;
  final VoidCallback onDismissed;

  @override
  State<SliderToastAnimated> createState() => _SliderToastAnimatedState();
}

class _SliderToastAnimatedState extends State<SliderToastAnimated> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 200));

    _slideAnimation = Tween<Offset>(begin: Offset.zero, end: Offset.zero).animate(_animationController);
    _fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(_animationController);

    Future.delayed(widget.dismissDuration, () {
      _dismissByDrag(direction: DismissDirection.startToEnd);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity == null) return;

            if (details.primaryVelocity! > 300) {
              _dismissByDrag(direction: DismissDirection.startToEnd);
            } else if (details.primaryVelocity! < -300) {
              _dismissByDrag(direction: DismissDirection.endToStart);
            }
          },
          child: widget.child,
        ),
      ),
    );
  }

  void _dismissByDrag({required DismissDirection direction}) async {
    if (!mounted) return;
    if (isDismissed()) return;

    setState(() {
      final offset = direction == DismissDirection.startToEnd ? const Offset(0.5, 0) : const Offset(-0.5, 0);

      _slideAnimation = Tween<Offset>(begin: Offset.zero, end: offset).animate(_animationController);
      _fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(_animationController);
    });

    await _animationController.forward();
    widget.onDismissed.call();
  }

  bool isDismissed() {
    return _animationController.value != 0.0;
  }
}
