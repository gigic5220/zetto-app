// lib/core/ui/app_messenger.dart
import 'dart:async';

import 'package:flutter/material.dart' hide ButtonStyle;
import 'package:tandangi/design_system/color/semantic/colors.dart';
import 'package:tandangi/design_system/components/ions/ds_wrapper.dart';
import 'package:tandangi/design_system/theme/theme_extensions.dart';
import 'package:tandangi/design_system/typography/app_typography.dart';
import 'package:tandangi/router/router.dart';
import 'package:tandangi/util/extension/string_extension.dart';

class ToastMessage {
  static OverlayEntry? _entry;
  static Timer? _timer;

  static void _remove() {
    _timer?.cancel();
    _timer = null;
    _entry?.remove();
    _entry = null;
  }

  static void showOnce({
    required String title,
    String? description,
    String? svgPath,
    Duration duration = const Duration(seconds: 3),
    String? buttonTitle,
    VoidCallback? onPressedButton,
    double top = 12,
    double horizontal = 20,
  }) {
    if (_entry != null) return;

    final overlayState = rootNavigatorKey.currentState?.overlay;
    if (overlayState == null) return;

    _entry = OverlayEntry(
      builder: (overlayContext) {
        return SafeArea(
          top: true,
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: _ToastCard(
                title: title,
                description: description,
                svgPath: svgPath,
                buttonTitle: buttonTitle,
                onPressedButton: onPressedButton == null
                    ? null
                    : () {
                        onPressedButton.call();
                        _remove();
                      },
                onDismiss: _remove,
              ),
            ),
          ),
        );
      },
    );

    overlayState.insert(_entry!);

    _timer = Timer(duration, _remove);
  }

  static void showReplace({
    required String title,
    String? description,
    String? svgPath,
    Duration duration = const Duration(seconds: 2),
    String? buttonTitle,
    VoidCallback? onPressedButton,
    double top = 12,
    double horizontal = 20,
  }) {
    _remove();
    showOnce(
      title: title,
      description: description,
      svgPath: svgPath,
      duration: duration,
      buttonTitle: buttonTitle,
      onPressedButton: onPressedButton,
      top: top,
      horizontal: horizontal,
    );
  }
}

class _ToastCard extends StatelessWidget {
  const _ToastCard({
    required this.title,
    this.description,
    this.svgPath,
    this.buttonTitle,
    this.onPressedButton,
    required this.onDismiss,
  });

  final String title;
  final String? description;
  final String? svgPath;
  final String? buttonTitle;
  final VoidCallback? onPressedButton;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const ValueKey('top_toast'),
      direction: DismissDirection.up,
      onDismissed: (_) => onDismiss(),
      child: Material(
        elevation: 6,
        color: SemanticColors.fillSecondary,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  spacing: 12,
                  children: [
                    if (svgPath.isExist)
                      DSWrapper(uri: svgPath!, view: WrapperView.fix24),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: AppTypography.bodyLMedium.withColor(
                              SemanticColors.textPrimary,
                            ),
                          ),
                          if (description.isExist) ...[
                            const SizedBox(height: 2),
                            Text(
                              description!,
                              style: AppTypography.bodySRegular.withColor(
                                SemanticColors.textTertiary,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // if (buttonTitle.isExist && onPressedButton != null)
              //   Button(
              //     style: ButtonStyle.primary,
              //     size: ButtonSize.small,
              //     title: buttonTitle,
              //     onPressed: onPressedButton,
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
