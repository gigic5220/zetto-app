import 'package:core_app/route/route.dart';
import 'package:design_system/components/molecules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/feature/main/history/controller/history_provider.dart';

class HistoryPage extends ConsumerStatefulWidget {
  const HistoryPage({super.key});

  static const String routeName = 'history';

  @override
  ConsumerState<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<HistoryPage>
    with HistoryStateMixin, HistoryActionMixin, GoRouterWatcherPage {
  @override
  void onFocused(bool isFirstTime) {
    super.onFocused(isFirstTime);
    onPageFocused(ref);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Scaffold(
          appBar: DSAppBar.value(text: ''),
          body: Container(),
        );
      },
    );
  }
}
