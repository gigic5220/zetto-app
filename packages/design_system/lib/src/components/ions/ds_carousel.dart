import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

import '../../../extenstion.dart';

enum DSCarouselSize { medium, small }

class DSCarousel extends StatefulWidget {
  const DSCarousel({
    super.key,
    required this.pageController,
    required this.itemCount,
    this.size = DSCarouselSize.medium,
  });

  final PageController pageController;
  final int itemCount;
  final DSCarouselSize size;

  @override
  State<DSCarousel> createState() => _DSCarouselState();
}

class _DSCarouselState extends State<DSCarousel> {
  late Color backgroundColor;
  late Color selectedColor;
  late double selectedWidth;
  late double defaultSize;
  late double gap;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSCarousel oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    backgroundColor = context.semanticColors.fillStrong;
    selectedColor = context.semanticColors.brandPrimary;

    switch (widget.size) {
      case DSCarouselSize.medium:
        selectedWidth = 20.0;
        defaultSize = 8.0;
        gap = context.componentGap.small;
        break;
      case DSCarouselSize.small:
        selectedWidth = 20.0;
        defaultSize = 6.0;
        gap = context.componentGap.xSmall;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.pageController,
      builder: (context, child) {
        final page = widget.pageController.page ?? 0;
        return Row(
          spacing: gap,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [for (int i = 0; i < widget.itemCount; i++) _buildCarousel(i, page)],
        );
      },
    );
  }

  Widget _buildCarousel(int index, double page) {
    final animationValue = (1 - (page - index).abs()).clamp(0.0, 1.0);

    return Container(
      width: lerpDouble(defaultSize, selectedWidth, animationValue)!,
      height: defaultSize,
      decoration: BoxDecoration(
        color: Color.lerp(backgroundColor, selectedColor, animationValue),
        borderRadius: BorderRadius.circular(defaultSize),
      ),
    );
  }
}
