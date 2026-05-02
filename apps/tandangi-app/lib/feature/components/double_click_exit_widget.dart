import 'package:flutter/material.dart' hide SnackBar;
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DoubleClickExitWidget extends ConsumerStatefulWidget {
  const DoubleClickExitWidget({
    super.key,
    required this.child,
    this.handleBackPress,
  });

  final Widget child;
  final Function? handleBackPress;

  @override
  ConsumerState<DoubleClickExitWidget> createState() =>
      _DoubleClickExitWidgetState();
}

class _DoubleClickExitWidgetState extends ConsumerState<DoubleClickExitWidget> {
  DateTime? _lastPressedTime;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        if (widget.handleBackPress?.call() == true) {
          return;
        }
        bool isFirstClick = false;
        if (_lastPressedTime == null) {
          isFirstClick = true;
        } else {
          final timeDiff = DateTime.now().difference(_lastPressedTime!);
          isFirstClick = timeDiff >= const Duration(seconds: 2);
        }
        _lastPressedTime = DateTime.now();
        if (isFirstClick) {
          return;
        } else {
          SystemNavigator.pop();
          return;
        }
      },
      child: widget.child,
    );
  }
}
