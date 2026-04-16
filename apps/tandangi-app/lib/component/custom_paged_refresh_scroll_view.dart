import 'package:core_app/components/paged_refresh_scroll_view.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

class CustomPagedRefreshScrollView extends StatefulWidget {
  const CustomPagedRefreshScrollView._({
    required this.onLoadMore,
    this.grid,
    this.onRefresh,
    this.list,
    this.scrollController,
    this.padding,
    this.isLoadMore = false,
  });

  factory CustomPagedRefreshScrollView.grid({
    required SliverGrid grid,
    required Future<void> Function() onLoadMore,
    Future<void> Function()? onRefresh,
    ScrollController? scrollController,
    EdgeInsets? padding,
    bool isLoadMore = false,
  }) {
    return CustomPagedRefreshScrollView._(
      grid: grid,
      onRefresh: onRefresh,
      onLoadMore: onLoadMore,
      scrollController: scrollController,
      padding: padding,
      isLoadMore: isLoadMore,
    );
  }

  factory CustomPagedRefreshScrollView.list({
    required SliverList list,
    required Future<void> Function() onLoadMore,
    Future<void> Function()? onRefresh,
    ScrollController? scrollController,
    EdgeInsets? padding,
    bool isLoadMore = false,
  }) {
    return CustomPagedRefreshScrollView._(
      list: list,
      onRefresh: onRefresh,
      onLoadMore: onLoadMore,
      scrollController: scrollController,
      padding: padding,
      isLoadMore: isLoadMore,
    );
  }

  final SliverGrid? grid;
  final SliverList? list;
  final ScrollController? scrollController;
  final EdgeInsets? padding;
  final bool isLoadMore;

  final Future<void> Function()? onRefresh;
  final Future<void> Function() onLoadMore;

  @override
  State<CustomPagedRefreshScrollView> createState() =>
      _CustomPagedRefreshScrollViewState();
}

class _CustomPagedRefreshScrollViewState
    extends State<CustomPagedRefreshScrollView> {
  final double indicatorHeight = 50;

  @override
  Widget build(BuildContext context) {
    if (widget.grid != null) {
      return PagedRefreshScrollView.grid(
        grid: widget.grid!,
        indicatorHeight: indicatorHeight,
        indicatorBuilder: _buildIndicator,
        onRefresh: widget.onRefresh,
        onLoadMore: widget.onLoadMore,
        loadMoreIndicator: _buildLoadMoreIndicator(),
        scrollController: widget.scrollController,
        padding: widget.padding,
        isLoadMore: widget.isLoadMore,
      );
    }

    return PagedRefreshScrollView.list(
      list: widget.list!,
      indicatorHeight: indicatorHeight,
      indicatorBuilder: _buildIndicator,
      onRefresh: widget.onRefresh,
      onLoadMore: widget.onLoadMore,
      loadMoreIndicator: _buildLoadMoreIndicator(),
      scrollController: widget.scrollController,
      padding: widget.padding,
      isLoadMore: widget.isLoadMore,
    );
  }

  Widget _buildIndicator(IndicatorStateChange? state) {
    if (state == null) return const SizedBox.shrink();

    if (state.newState == .dragging) {
      return Center(child: Text('Pull down to refresh'));
    } else if (state.newState == .armed) {
      return Center(child: Text('Release to refresh'));
    } else if (state.newState == .loading || state.newState == .settling) {
      return Center(child: Text('Loading...'));
    }

    return Center(child: Text('Done!'));
  }

  Widget _buildLoadMoreIndicator() {
    return Center(child: Text('Loading more...'));
  }
}
