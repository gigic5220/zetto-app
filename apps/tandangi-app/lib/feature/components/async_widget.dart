import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:talker/talker.dart';
import 'package:tandangi/design_system/color/semantic/colors.dart';
import 'package:tandangi/design_system/theme/theme_extensions.dart';
import 'package:tandangi/design_system/typography/app_typography.dart';

class AsyncWidget<T> extends ConsumerWidget {
  const AsyncWidget({
    super.key,
    required this.asyncValue,
    required this.builder,
    this.loadingWidget,
    this.errorWidget,
    this.enableSkeletonizer = true,
  });

  final AsyncValue<T> asyncValue;
  final Widget Function(T) builder;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  final bool enableSkeletonizer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return asyncValue.when(
      data: (data) => builder.call(data),
      error: (error, stackTrace) {
        final talker = Talker();
        talker.error(error, stackTrace);
        return errorWidget ??
            Text(
              '오류가 발생했습니다. 잠시 후 다시 시도해 주세요.',
              style: AppTypography.bodyLMedium.withColor(
                SemanticColors.textPrimary,
              ),
            );
      },
      loading: () => switch (loadingWidget != null) {
        true => Skeletonizer(
          enabled: enableSkeletonizer,
          switchAnimationConfig: const SwitchAnimationConfig(),
          effect: const ShimmerEffect(
            baseColor: Color(0xFF212225),
            highlightColor: Color(0xFF37383C),
            duration: Duration(seconds: 2),
          ),
          child: loadingWidget!,
        ),
        false => const SizedBox.shrink(),
      },
    );
  }
}

class AsyncWidget2<T1, T2> extends ConsumerWidget {
  const AsyncWidget2({
    super.key,
    required this.asyncValue1,
    required this.asyncValue2,
    required this.builder,
    this.loadingWidget,
    this.errorWidget,
    this.enableSkeletonizer = true,
  });

  final AsyncValue<T1> asyncValue1;
  final AsyncValue<T2> asyncValue2;
  final Widget Function(T1, T2) builder;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  final bool enableSkeletonizer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = asyncValue1.isLoading || asyncValue2.isLoading;
    final error = asyncValue1.error ?? asyncValue2.error;
    final stackTrace = asyncValue1.stackTrace ?? asyncValue2.stackTrace;

    if (isLoading) {
      return switch (loadingWidget != null) {
        true =>
          enableSkeletonizer
              ? Skeletonizer(
                  enabled: enableSkeletonizer,
                  switchAnimationConfig: const SwitchAnimationConfig(),
                  effect: const ShimmerEffect(
                    baseColor: Color(0xFF212225),
                    highlightColor: Color(0xFF37383C),
                    duration: Duration(seconds: 2),
                  ),
                  child: loadingWidget!,
                )
              : loadingWidget!,
        false => const SizedBox.shrink(),
      };
    }

    if (error != null) {
      final talker = Talker();
      talker.error(error, stackTrace);
      return errorWidget ??
          Text(
            '오류가 발생했습니다. 잠시 후 다시 시도해 주세요.',
            style: AppTypography.bodyLMedium.withColor(
              SemanticColors.textPrimary,
            ),
          );
    }

    final data1 = asyncValue1.value;
    final data2 = asyncValue2.value;

    if (data1 != null && data2 != null) {
      return builder(data1, data2);
    }

    return const SizedBox.shrink();
  }
}
