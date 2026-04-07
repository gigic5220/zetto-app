// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/circle_check_green.png
  AssetGenImage get circleCheckGreen =>
      const AssetGenImage('assets/images/circle_check_green.png');

  /// File path: assets/images/circle_x.png
  AssetGenImage get circleX =>
      const AssetGenImage('assets/images/circle_x.png');

  /// File path: assets/images/exclamation.png
  AssetGenImage get exclamation =>
      const AssetGenImage('assets/images/exclamation.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo_sub_text.png
  AssetGenImage get logoSubText =>
      const AssetGenImage('assets/images/logo_sub_text.png');

  /// File path: assets/images/logo_text.png
  AssetGenImage get logoText =>
      const AssetGenImage('assets/images/logo_text.png');

  /// File path: assets/images/test_character_1.png
  AssetGenImage get testCharacter1 =>
      const AssetGenImage('assets/images/test_character_1.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    circleCheckGreen,
    circleX,
    exclamation,
    logo,
    logoSubText,
    logoText,
    testCharacter1,
  ];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/back.svg
  String get back => 'assets/svgs/back.svg';

  /// File path: assets/svgs/chevron_left.svg
  String get chevronLeft => 'assets/svgs/chevron_left.svg';

  /// File path: assets/svgs/chevron_right.svg
  String get chevronRight => 'assets/svgs/chevron_right.svg';

  /// File path: assets/svgs/circle_question_mark_bubble.svg
  String get circleQuestionMarkBubble =>
      'assets/svgs/circle_question_mark_bubble.svg';

  /// File path: assets/svgs/ic_arrow_left.svg
  String get icArrowLeft => 'assets/svgs/ic_arrow_left.svg';

  /// File path: assets/svgs/ic_arrow_right.svg
  String get icArrowRight => 'assets/svgs/ic_arrow_right.svg';

  /// File path: assets/svgs/ic_back.svg
  String get icBack => 'assets/svgs/ic_back.svg';

  /// File path: assets/svgs/ic_bang_fill.svg
  String get icBangFill => 'assets/svgs/ic_bang_fill.svg';

  /// File path: assets/svgs/ic_checkmark.svg
  String get icCheckmark => 'assets/svgs/ic_checkmark.svg';

  /// File path: assets/svgs/ic_chevron_right.svg
  String get icChevronRight => 'assets/svgs/ic_chevron_right.svg';

  /// File path: assets/svgs/ic_circle_x_fill.svg
  String get icCircleXFill => 'assets/svgs/ic_circle_x_fill.svg';

  /// File path: assets/svgs/ic_dot_fill.svg
  String get icDotFill => 'assets/svgs/ic_dot_fill.svg';

  /// File path: assets/svgs/ic_dropdown_down_fill.svg
  String get icDropdownDownFill => 'assets/svgs/ic_dropdown_down_fill.svg';

  /// File path: assets/svgs/ic_dropdown_up_fill.svg
  String get icDropdownUpFill => 'assets/svgs/ic_dropdown_up_fill.svg';

  /// File path: assets/svgs/ic_minus.svg
  String get icMinus => 'assets/svgs/ic_minus.svg';

  /// File path: assets/svgs/ic_reading_glass.svg
  String get icReadingGlass => 'assets/svgs/ic_reading_glass.svg';

  /// File path: assets/svgs/ic_x.svg
  String get icX => 'assets/svgs/ic_x.svg';

  /// File path: assets/svgs/logo_apple.svg
  String get logoApple => 'assets/svgs/logo_apple.svg';

  /// File path: assets/svgs/logo_google.svg
  String get logoGoogle => 'assets/svgs/logo_google.svg';

  /// File path: assets/svgs/logo_kakao.svg
  String get logoKakao => 'assets/svgs/logo_kakao.svg';

  /// File path: assets/svgs/setting.svg
  String get setting => 'assets/svgs/setting.svg';

  /// List of all assets
  List<String> get values => [
    back,
    chevronLeft,
    chevronRight,
    circleQuestionMarkBubble,
    icArrowLeft,
    icArrowRight,
    icBack,
    icBangFill,
    icCheckmark,
    icChevronRight,
    icCircleXFill,
    icDotFill,
    icDropdownDownFill,
    icDropdownUpFill,
    icMinus,
    icReadingGlass,
    icX,
    logoApple,
    logoGoogle,
    logoKakao,
    setting,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
