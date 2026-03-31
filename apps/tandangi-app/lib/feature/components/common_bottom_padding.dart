import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tandangi/util/app_media_query.dart';

class CommonBottomPadding extends StatelessWidget {
  const CommonBottomPadding({
    super.key,
    this.useKeyBoardHeight = false,
    this.useBottomNavigationHeight = true,
    this.backgroundColor,
  });

  final bool useKeyBoardHeight;
  final bool useBottomNavigationHeight;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([
        AppMediaQuery().keyboardHeight,
        AppMediaQuery().bottomNavigationHeight,
        AppMediaQuery().iOSNumberKeyboardConfirmHeight,
      ]),
      builder: (_, child) {
        return DecoratedBox(
          decoration: BoxDecoration(color: backgroundColor),
          child: SizedBox(
            height: bottomPadding,
            // height: 0,
          ),
        );
      },
    );
  }

  double get bottomPadding {
    var bottomPadding = 0.0;
    if (useBottomNavigationHeight) {
      bottomPadding = AppMediaQuery().bottomNavigationHeight.height;
      // 안드로이드의 경우 네비게이션바가 있는 경우 기본 하단패딩이 필요함
      if (isAndroidNavigationBarVisible()) bottomPadding += 16;
      if (bottomPadding == 0) bottomPadding = 16;
    }

    var keyboardHeight = 0.0;
    if (useKeyBoardHeight) {
      keyboardHeight =
          AppMediaQuery().keyboardHeight.height +
          AppMediaQuery().iOSNumberKeyboardConfirmHeight.height;
    }

    return bottomPadding + keyboardHeight;
  }

  double get scrollViewBottomPadding {
    final bottomPadding = AppMediaQuery().bottomNavigationHeight.height;
    return bottomPadding > 36 ? bottomPadding : 0;
  }

  bool isAndroidNavigationBarVisible() {
    final bottomNavigationHeight =
        AppMediaQuery().bottomNavigationHeight.height;
    return _isAndroid && bottomNavigationHeight >= 46;
  }

  bool get _isAndroid {
    if (kIsWeb) return false;

    return Platform.isAndroid;
  }
}
