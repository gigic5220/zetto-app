import 'package:flutter/material.dart';
import 'package:tandangi/design_system/components/common/universal_image_widget.dart';

class WrapperView {
  const WrapperView({required this.size, required this.ratio, this.radius = 0});

  final double size;
  final double ratio;
  final double radius;

  static const WrapperView fix10 = WrapperView(size: 10, ratio: 1);
  static const WrapperView fix12 = WrapperView(size: 12, ratio: 1);
  static const WrapperView fix16 = WrapperView(size: 16, ratio: 1);
  static const WrapperView fix20 = WrapperView(size: 20, ratio: 1);
  static const WrapperView fix24 = WrapperView(size: 24, ratio: 1);
  static const WrapperView fix32 = WrapperView(size: 32, ratio: 1);
  static const WrapperView fix40 = WrapperView(size: 40, ratio: 1);
  static const WrapperView fix52 = WrapperView(size: 52, ratio: 1);
  static const WrapperView fix64 = WrapperView(size: 64, ratio: 1);
  static const WrapperView fix80 = WrapperView(size: 80, ratio: 1);
  static const WrapperView fixFull = WrapperView(size: 360, ratio: 1);
}

class DSWrapper extends StatelessWidget {
  const DSWrapper({
    super.key,
    required this.uri,
    required this.view,
    this.svgColor,
  });

  final String uri;
  final WrapperView view;
  final Color? svgColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: view.size,
      height: view.ratio == 0 ? view.size : view.size / view.ratio,
      child: ClipRRect(
        borderRadius: .circular(view.radius),
        child: UniversalImageWidget(
          uri: uri,
          fit: BoxFit.cover,
          svgColor: svgColor,
        ),
      ),
    );
  }
}
