import 'package:design_system/components/molecules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/feature/analyze_report/controller/analyze_report_provider.dart';

class AnalyzeReportPage extends ConsumerStatefulWidget {
  const AnalyzeReportPage({super.key});

  static const routeName = 'analyze_report';

  @override
  ConsumerState<AnalyzeReportPage> createState() => _AnalyzeReportPageState();
}

class _AnalyzeReportPageState extends ConsumerState<AnalyzeReportPage>
    with AnalyzeReportStateMixin, AnalyzeReportActionMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DSAppBar.page(text: '', showBackButton: true),
      body: Column(children: [
          
        ],
      ),
    );
  }
}
