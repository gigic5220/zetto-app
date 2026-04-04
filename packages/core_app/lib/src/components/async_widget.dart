import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AsyncWidget<T> extends StatelessWidget {
  const AsyncWidget({
    super.key,
    required this.asyncValue,
    required this.builder,
    this.errorBuilder,
    this.skeletonMockItems,
    this.emptyWidget,
    this.loadingWidget,
  });

  final AsyncValue<T> asyncValue;
  final Widget Function(T data) builder;
  final Widget Function(Object error, StackTrace stackTrace)? errorBuilder;
  final T? skeletonMockItems;
  final Widget? emptyWidget;
  final Widget? loadingWidget;

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      data: (data) {
        if (data is List) {
          if (data.isEmpty) {
            return emptyWidget ?? builder(data);
          }
        }

        return builder(data);
      },
      error: (error, stackTrace) {
        if (errorBuilder != null) {
          return errorBuilder!(error, stackTrace);
        }

        return SizedBox.shrink();
      },
      loading: () {
        if (loadingWidget != null) {
          return loadingWidget!;
        }

        if (skeletonMockItems != null) {
          return Skeletonizer(enabled: true, child: builder(skeletonMockItems as T));
        }

        return Center(child: CircularProgressIndicator());
      },
      skipLoadingOnRefresh: true,
    );
  }
}
