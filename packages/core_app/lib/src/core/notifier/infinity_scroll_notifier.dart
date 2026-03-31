import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class InfinityScrollNotifier<T> extends AsyncNotifier<List<T>> {
  @protected
  Future<List<T>> loadMoreItems();

  @protected
  Future<List<T>> refreshItems();

  List<T>? get skeletonMockItems;

  bool get isLoadMore;

  @nonVirtual
  Future<void> onLoadMore() async {
    final newData = await loadMoreItems();
    if (ref.mounted) {
      state = AsyncValue.data([...state.value ?? [], ...newData]);
    }
  }

  @nonVirtual
  Future<void> onRefresh() async {
    final newData = await refreshItems();
    if (ref.mounted) {
      state = AsyncValue.data(newData);
    }
  }
}
