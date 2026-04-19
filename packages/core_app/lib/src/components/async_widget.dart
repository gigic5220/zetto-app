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

  const AsyncWidget.single({
    Key? key,
    required AsyncValue<T> asyncValue,
    required Widget Function(T data) builder,
    Widget Function(Object error, StackTrace stackTrace)? errorBuilder,
    T? skeletonMockItems,
    Widget? emptyWidget,
    Widget? loadingWidget,
  }) : this(
         key: key,
         asyncValue: asyncValue,
         builder: builder,
         errorBuilder: errorBuilder,
         skeletonMockItems: skeletonMockItems,
         emptyWidget: emptyWidget,
         loadingWidget: loadingWidget,
       );

  static AsyncWidget<(A, B)> combine2<A, B>({
    Key? key,
    required AsyncValue<A> first,
    required AsyncValue<B> second,
    required Widget Function(A first, B second) builder,
    Widget Function(Object error, StackTrace stackTrace)? errorBuilder,
    (A, B)? skeletonMockItems,
    Widget? emptyWidget,
    Widget? loadingWidget,
  }) {
    return AsyncWidget<(A, B)>(
      key: key,
      asyncValue: _combine2(first, second),
      builder: (data) => builder(data.$1, data.$2),
      errorBuilder: errorBuilder,
      skeletonMockItems: skeletonMockItems,
      emptyWidget: emptyWidget,
      loadingWidget: loadingWidget,
    );
  }

  static AsyncWidget<(A, B, C)> combine3<A, B, C>({
    Key? key,
    required AsyncValue<A> first,
    required AsyncValue<B> second,
    required AsyncValue<C> third,
    required Widget Function(A first, B second, C third) builder,
    Widget Function(Object error, StackTrace stackTrace)? errorBuilder,
    (A, B, C)? skeletonMockItems,
    Widget? emptyWidget,
    Widget? loadingWidget,
  }) {
    return AsyncWidget<(A, B, C)>(
      key: key,
      asyncValue: _combine3(first, second, third),
      builder: (data) => builder(data.$1, data.$2, data.$3),
      errorBuilder: errorBuilder,
      skeletonMockItems: skeletonMockItems,
      emptyWidget: emptyWidget,
      loadingWidget: loadingWidget,
    );
  }

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
        if (data is List && data.isEmpty) {
          return emptyWidget ?? builder(data);
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

  static AsyncValue<(A, B)> _combine2<A, B>(
    AsyncValue<A> first,
    AsyncValue<B> second,
  ) {
    final errorState = _findError([
      first as AsyncValue<Object?>,
      second as AsyncValue<Object?>,
    ]);
    if (errorState != null) {
      return AsyncValue.error(errorState.error, errorState.stackTrace);
    }

    if (_hasPendingValue([
      first as AsyncValue<Object?>,
      second as AsyncValue<Object?>,
    ])) {
      return const AsyncValue.loading();
    }

    return AsyncValue.data((_requireValue(first), _requireValue(second)));
  }

  static AsyncValue<(A, B, C)> _combine3<A, B, C>(
    AsyncValue<A> first,
    AsyncValue<B> second,
    AsyncValue<C> third,
  ) {
    final errorState = _findError([
      first as AsyncValue<Object?>,
      second as AsyncValue<Object?>,
      third as AsyncValue<Object?>,
    ]);
    if (errorState != null) {
      return AsyncValue.error(errorState.error, errorState.stackTrace);
    }

    if (_hasPendingValue([
      first as AsyncValue<Object?>,
      second as AsyncValue<Object?>,
      third as AsyncValue<Object?>,
    ])) {
      return const AsyncValue.loading();
    }

    return AsyncValue.data((
      _requireValue(first),
      _requireValue(second),
      _requireValue(third),
    ));
  }

  static _AsyncErrorState? _findError(List<AsyncValue<Object?>> asyncValues) {
    for (final value in asyncValues) {
      if (value.hasError) {
        return _AsyncErrorState(value.error!, value.stackTrace!);
      }
    }

    return null;
  }

  static bool _hasPendingValue(List<AsyncValue<Object?>> asyncValues) {
    return asyncValues.any((value) => value.isLoading && !value.hasValue);
  }

  static T _requireValue<T>(AsyncValue<T> asyncValue) {
    final data = asyncValue.asData;
    if (data != null) {
      return data.value;
    }

    throw StateError('AsyncValue does not contain data.');
  }
}

class _AsyncErrorState {
  const _AsyncErrorState(this.error, this.stackTrace);

  final Object error;
  final StackTrace stackTrace;
}
