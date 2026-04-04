import 'dart:async';
import 'package:design_system/components/molecules.dart';
import 'package:flutter/material.dart';

import '../../components/toast/slider_toast_animated.dart';

abstract class ToastUtils {
  ToastUtils._();

  static const double _toastSpacing = 8.0;
  static const Duration _duration = Duration(milliseconds: 2000);
  static const Duration _animationDuration = Duration(milliseconds: 300);

  static final ValueNotifier<List<GlobalKey>> _activeToastKeys = ValueNotifier<List<GlobalKey>>([]);
  static final List<Completer<bool>> _completers = [];

  static void hideAllToasts() {
    _activeToastKeys.value = [];
    for (final completer in _completers) {
      completer.complete(true);
    }
    _completers.clear();
  }

  static Future<void> showToast(
    BuildContext context,
    DSToast Function(Completer<bool> completer) toastBuilder, {
    double baseBottomPadding = 12.0,
    VoidCallback? onDismissed,
  }) async {
    Completer<bool> completer = Completer<bool>();

    // 현재 토스트에 고유 ID 부여
    final currentToastKey = GlobalKey();

    OverlayEntry? overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) {
        return ValueListenableBuilder<List<GlobalKey>>(
          valueListenable: _activeToastKeys,
          builder: (context, activeKeys, child) {
            // 토스트를 보여줄 bottom padding 계산
            double bottomPadding = baseBottomPadding + MediaQuery.paddingOf(context).bottom;

            // 현재 토스트의 위치를 리스트에서 찾기 (0부터 시작)
            final currentKeyIndex = activeKeys.indexOf(currentToastKey);

            // 리스트에 없으면 표시하지 않음 (제거 중)
            if (currentKeyIndex == -1) {
              return const SizedBox.shrink();
            } else if (currentKeyIndex > 0) {
              for (int i = 0; i < currentKeyIndex; i++) {
                final toastRenderBox = activeKeys[i].currentContext?.findRenderObject() as RenderBox?;
                if (toastRenderBox != null) {
                  bottomPadding += toastRenderBox.size.height + _toastSpacing;
                }
              }
            }

            return Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedPadding(
                duration: _animationDuration,
                curve: Curves.easeInOut,
                padding: EdgeInsets.only(bottom: bottomPadding),
                child: child,
              ),
            );
          },
          child: KeyedSubtree(
            key: currentToastKey,
            child: Material(
              color: Colors.transparent,
              child: SliderToastAnimated(
                onDismissed: () {
                  completer.complete(true);
                },
                dismissDuration: _duration,
                child: toastBuilder(completer),
              ),
            ),
          ),
        );
      },
    );

    // 토스트를 오버레이에 추가하고 활성 리스트에 ID 추가
    _activeToastKeys.value = [..._activeToastKeys.value, currentToastKey];
    _completers.add(completer);
    Overlay.of(context).insert(overlayEntry);

    await completer.future;
    onDismissed?.call();

    // 토스트 제거 전 리스트에서 ID 제거 (애니메이션 트리거)
    final currentList = List<GlobalKey>.from(_activeToastKeys.value);
    currentList.remove(currentToastKey);
    _completers.remove(completer);
    _activeToastKeys.value = currentList;

    overlayEntry.remove();
  }
}
