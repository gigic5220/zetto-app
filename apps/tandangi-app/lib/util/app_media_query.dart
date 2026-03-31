import 'dart:ui';

import 'package:flutter/widgets.dart';

class AppMediaQuery with WidgetsBindingObserver {
  factory AppMediaQuery() {
    return _singleton;
  }

  AppMediaQuery._internal();
  static final AppMediaQuery _singleton = AppMediaQuery._internal();

  /// `init` is a method that is called when the app is first initialized.
  void init(FlutterView view) {
    data = MediaQueryData.fromView(
      view,
    ).copyWith(boldText: false, textScaler: TextScaler.noScaling);

    sizeAndPaddingNotifier = SizeAndPaddingNotifier(data);
    bottomNavigationHeight.onChange(data.padding.bottom);
  }

  /// `data` is a `MediaQueryData` object that is used to get the size of the
  /// screen, the status bar height, the navigation bar height, and the view insets.
  late MediaQueryData data;

  /// `statusBarHeight` is a getter that returns the height of the status bar.
  double get statusBarHeight => data.padding.top;

  /// `navigationBarHeight` is a getter that returns the height of the navigation
  /// bar.
  double get navigationBarHeight => bottomNavigationHeight.height;

  /// `size` is a getter that returns the size of the screen.
  Size get size => data.size;

  /// `viewInsets` is a property of `MediaQueryData` that returns the view insets.
  EdgeInsets get viewInsets => data.viewInsets;

  /// `viewPadding` is a property of returns the current view padding.
  EdgeInsets viewPadding = EdgeInsets.zero;

  /// `isKeyboardVisible` is a getter that returns a boolean value that
  /// indicates whether the keyboard is visible or not.
  bool get isKeyboardVisible => keyboardHeight.height > 0;

  ///Apply for Android Only
  /// `displayType` is a property of `MediaQueryData` that returns the type of
  /// display feature.
  DisplayFeatureType get displayType => data.displayFeatures.first.type;

  /// This notifier is called when changed metetrics of size or padding.
  late final SizeAndPaddingNotifier sizeAndPaddingNotifier;

  final iOSNumberKeyboardConfirmHeight =
      IOSNumberKeyboardConfirmHeightNotifier();

  /// `keyboardHeight` is a `KeyBoardHeightNotifier` object that is used to
  /// get the height of the keyboard.
  final KeyBoardHeightNotifier keyboardHeight = KeyBoardHeightNotifier();

  /// `bottomNavigationHeight` is a `NavigationBarHeightNotifier` object that is
  /// used to get the height of the navigation bar.
  final NavigationBarHeightNotifier bottomNavigationHeight =
      NavigationBarHeightNotifier();

  @override
  /// > When the metrics of the device change, update the keyboard height and bottom
  /// navigation height, and if the size of the device has changed, update the size
  /// and padding of the device
  void didChangeMetrics() {
    final mediaQuery = MediaQueryData.fromView(
      WidgetsBinding.instance.platformDispatcher.views.single,
    );

    if (keyboardHeight.height != mediaQuery.viewInsets.bottom) {
      keyboardHeight.onChange(mediaQuery.viewInsets.bottom);
    }

    bottomNavigationHeight.onChange(mediaQuery.padding.bottom);
    viewPadding = mediaQuery.viewPadding;

    if (data.size != mediaQuery.size || data.padding != mediaQuery.padding) {
      data = data.copyWith(size: mediaQuery.size, padding: mediaQuery.padding);
      sizeAndPaddingNotifier.onChange(data);
    }
  }
}

class SizeAndPaddingNotifier extends ChangeNotifier {
  SizeAndPaddingNotifier(this.data);

  MediaQueryData data;

  void onChange(MediaQueryData data) {
    this.data = data;
    notifyListeners();
  }
}

class KeyBoardHeightNotifier extends ChangeNotifier {
  double height = 0;

  void onChange(double height) {
    this.height = height;
    notifyListeners();
  }
}

class NavigationBarHeightNotifier extends ChangeNotifier {
  double height = 0;

  void onChange(double height) {
    this.height = height;
    notifyListeners();
  }
}

class IOSNumberKeyboardConfirmHeightNotifier extends ChangeNotifier {
  double height = 0;

  void onChange(double height) {
    this.height = height;
    notifyListeners();
  }
}
