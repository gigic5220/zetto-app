import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CommonBottomPadding extends StatelessWidget {
  const CommonBottomPadding({
    super.key,
    this.useKeyBoardHeight = true,
    this.useBottomNavigationHeight = true,
    this.backgroundColor,
    this.iOSNumberKeyboardConfirmHeight = 0,
    this.duration = const Duration(milliseconds: 100),
    this.curve = Curves.easeOut,
  });

  final bool useKeyBoardHeight;
  final bool useBottomNavigationHeight;
  final Color? backgroundColor;

  /// MediaQuery로 직접 구할 수 없는 iOS 숫자 키보드 확인 버튼 높이 보정값
  final double iOSNumberKeyboardConfirmHeight;

  final Duration duration;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final double bottomInset = MediaQuery.paddingOf(context).bottom;
    final double keyboardInset = MediaQuery.viewInsetsOf(context).bottom;

    double bottomPadding = 0.0;
    if (useBottomNavigationHeight) {
      bottomPadding = bottomInset;

      // 안드로이드의 경우 네비게이션바가 있는 경우 기본 하단패딩이 필요함
      if (_isAndroidNavigationBarVisible(bottomNavigationHeight: bottomInset)) {
        bottomPadding += 16;
      }

      if (bottomPadding == 0) {
        bottomPadding = 16;
      }
    }

    double keyboardHeight = 0.0;
    if (useKeyBoardHeight) {
      keyboardHeight = keyboardInset + iOSNumberKeyboardConfirmHeight;
    }

    return DecoratedBox(
      decoration: BoxDecoration(color: backgroundColor),
      child: AnimatedContainer(duration: duration, curve: curve, height: bottomPadding + keyboardHeight),
    );
  }

  bool _isAndroidNavigationBarVisible({required double bottomNavigationHeight}) {
    return _isAndroid && bottomNavigationHeight >= 46;
  }

  bool get _isAndroid {
    if (kIsWeb) return false;
    return Platform.isAndroid;
  }

  static double getScrollViewBottomPadding(BuildContext context) {
    final double bottomPadding = MediaQuery.paddingOf(context).bottom;
    return bottomPadding > 36 ? bottomPadding : 0;
  }
}
