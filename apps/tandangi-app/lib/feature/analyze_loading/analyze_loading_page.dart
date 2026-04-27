import 'dart:io';

import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/common.dart';
import 'package:design_system/components/molecules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/feature/analyze_loading/controller/analyze_loading_provider.dart';
import 'package:tandangi/gen/assets.gen.dart';

class AnalyzeLoadingPage extends ConsumerStatefulWidget {
  const AnalyzeLoadingPage({
    super.key,
    required this.file,
    required this.includeWatermark,
  });

  static const String routeName = 'analyze_loading';

  final File file;
  final bool includeWatermark;
  @override
  ConsumerState<AnalyzeLoadingPage> createState() => _AnalyzeLoadingPageState();
}

class _AnalyzeLoadingPageState extends ConsumerState<AnalyzeLoadingPage>
    with
        AnalyzeLoadingStateMixin,
        AnalyzeLoadingActionMixin,
        SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    onInit(
      context,
      file: widget.file,
      includeWatermark: widget.includeWatermark,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DSAppBar.page(text: '', showBackButton: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DSNotice.normal(
            wrapperUri: Assets.svgs.icBangFill,
            size: .medium,
            title: '먹은 음식을 분석하고 있어요',
            description: '조금만 기다려주세요!',
          ),
          const CommonBottomPadding(),
        ],
      ),
    );
  }
}
