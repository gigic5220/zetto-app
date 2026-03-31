import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UniversalImageWidget extends StatelessWidget {
  const UniversalImageWidget({
    super.key,
    required this.uri,
    this.fit,
    this.width,
    this.height,
    this.svgColor,
    this.placeholderBuilder,
    this.errorBuilder,
  });

  final String uri;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Color? svgColor;
  final Widget Function(BuildContext)? placeholderBuilder;
  final Widget Function(BuildContext)? errorBuilder;

  @override
  Widget build(BuildContext context) {
    final imageExtension = uri.split('.').last;
    final isUrl = isValidUrl;

    return switch (imageExtension) {
      'svg' when isUrl => SvgPicture.network(
        uri,
        fit: fit ?? BoxFit.contain,
        width: width,
        height: height,
        colorFilter: svgColor != null ? ColorFilter.mode(svgColor!, BlendMode.srcIn) : null,
        placeholderBuilder: placeholderBuilder,
      ),
      'svg' => SvgPicture.asset(
        uri,
        fit: fit ?? BoxFit.contain,
        width: width,
        height: height,
        colorFilter: svgColor != null ? ColorFilter.mode(svgColor!, BlendMode.srcIn) : null,
        placeholderBuilder: placeholderBuilder,
      ),
      'png' || 'jpg' when isUrl => CachedNetworkImage(
        imageUrl: uri,
        fit: fit ?? BoxFit.contain,
        width: width,
        height: height,
        placeholder: placeholderBuilder == null ? null : (context, _) => placeholderBuilder!.call(context),
        errorWidget: errorBuilder == null ? null : (context, error, stackTrace) => errorBuilder!.call(context),
      ),
      'png' || 'jpg' => Image.asset(
        uri,
        fit: fit ?? BoxFit.contain,
        width: width,
        height: height,
        errorBuilder: errorBuilder == null ? null : (context, error, stackTrace) => errorBuilder!.call(context),
      ),
      _ => const SizedBox.shrink(),
    };
  }

  bool get isValidUrl {
    try {
      final uriParsed = Uri.parse(uri);
      return uriParsed.hasScheme && uriParsed.hasAuthority;
    } catch (e) {
      return false;
    }
  }
}
