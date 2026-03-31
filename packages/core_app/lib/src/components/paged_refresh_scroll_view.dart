import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

import '../../components/refresh_scroll_view.dart';

class PagedRefreshScrollView extends StatefulWidget {
  const PagedRefreshScrollView._({
    required this.indicatorHeight,
    required this.indicatorBuilder,
    required this.loadMoreIndicator,
    required this.onRefresh,
    required this.onLoadMore,
    this.grid,
    this.list,
    this.scrollController,
    this.padding,
    this.isLoadMore = false,
  });

  factory PagedRefreshScrollView.grid({
    required SliverGrid grid,
    required double indicatorHeight,
    required Widget Function(IndicatorStateChange? state) indicatorBuilder,
    required Widget loadMoreIndicator,
    required Future<void> Function() onRefresh,
    required Future<void> Function() onLoadMore,
    ScrollController? scrollController,
    EdgeInsets? padding,
    bool isLoadMore = false,
  }) {
    return PagedRefreshScrollView._(
      grid: grid,
      indicatorHeight: indicatorHeight,
      indicatorBuilder: indicatorBuilder,
      loadMoreIndicator: loadMoreIndicator,
      onRefresh: onRefresh,
      onLoadMore: onLoadMore,
      scrollController: scrollController,
      padding: padding,
      isLoadMore: isLoadMore,
    );
  }

  factory PagedRefreshScrollView.list({
    required SliverList list,
    required double indicatorHeight,
    required Widget Function(IndicatorStateChange? state) indicatorBuilder,
    required Widget loadMoreIndicator,
    required Future<void> Function() onRefresh,
    required Future<void> Function() onLoadMore,
    ScrollController? scrollController,
    EdgeInsets? padding,
    bool isLoadMore = false,
  }) {
    return PagedRefreshScrollView._(
      list: list,
      indicatorHeight: indicatorHeight,
      indicatorBuilder: indicatorBuilder,
      loadMoreIndicator: loadMoreIndicator,
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

  final double indicatorHeight;
  final Widget Function(IndicatorStateChange? state) indicatorBuilder;
  final Widget loadMoreIndicator;
  final Future<void> Function() onRefresh;
  final Future<void> Function() onLoadMore;

  @override
  State<PagedRefreshScrollView> createState() => _PagedRefreshScrollViewState();
}

class _PagedRefreshScrollViewState extends State<PagedRefreshScrollView> {
  late ScrollController _scrollController;

  bool showLoadMoreIndicator = false;

  @override
  void initState() {
    super.initState();
    _scrollController = widget.scrollController ?? ScrollController();
    _scrollController.addListener(_scrollControllerListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollControllerListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _safeSetState(void Function() callback) {
    if (mounted) {
      setState(callback);
    }
  }

  void _scrollControllerListener() async {
    if (showLoadMoreIndicator || !widget.isLoadMore) return;

    final position = _scrollController.position;
    final nearBottom = position.pixels >= (position.maxScrollExtent - 100);
    if (nearBottom) {
      _safeSetState(() {
        showLoadMoreIndicator = true;
      });

      await widget.onLoadMore();

      _safeSetState(() {
        showLoadMoreIndicator = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshScrollView(
      indicatorHeight: widget.indicatorHeight,
      indicatorBuilder: widget.indicatorBuilder,
      onRefresh: widget.onRefresh,
      child: _buildScrollWidget(),
    );
  }

  Widget _buildScrollWidget() {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        if (widget.grid != null) SliverPadding(padding: widget.padding ?? EdgeInsets.zero, sliver: widget.grid!),
        if (widget.list != null) SliverPadding(padding: widget.padding ?? EdgeInsets.zero, sliver: widget.list!),
        if (showLoadMoreIndicator) SliverToBoxAdapter(child: widget.loadMoreIndicator),
      ],
    );
  }
}
