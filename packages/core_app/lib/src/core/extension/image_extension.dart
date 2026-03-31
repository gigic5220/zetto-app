import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

extension ImageExtension on String {
  Widget toSvgWidget({
    double? width,
    double? height,
    Color? color,
    BoxFit? fit,
  }) {
    return SvgPicture.asset(
      this,
      width: width,
      height: height,
      colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      fit: fit ?? BoxFit.contain,
    );
  }

  Widget toImageWidget({
    double? width,
    double? height,
    Color? color,
    BoxFit? fit,
  }) {
    return Image.asset(
      this,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
    );
  }
}
