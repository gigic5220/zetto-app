import 'package:design_system/components/atoms.dart';
import 'package:design_system/components/molecules.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/feature/main/report/controller/report_provider.dart';
import 'package:tandangi/feature/main/report/widgets/food_analyze_result_panel.dart';

class ReportPage extends ConsumerStatefulWidget {
  const ReportPage({super.key, required this.selectedPhoto});

  static const String routeName = 'report';

  final XFile selectedPhoto;

  @override
  ConsumerState<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends ConsumerState<ReportPage>
    with ReportStateMixin, ReportActionMixin {
  static const _emptyHint =
      '\ubd84\uc11d\ud558\uba74 \uacb0\uacfc\uac00 \uc5ec\uae30\uc5d0 \ud45c\uc2dc\ub429\ub2c8\ub2e4.';

  @override
  Widget build(BuildContext context) {
    final result = watchFoodAnalyzeResult(ref);

    return Scaffold(
      appBar: DSAppBar.logo(logoUri: 'assets/images/logo.png'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.margin.width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: context.componentGap.medium),
              DSSolidButton.large(
                variant: DSSolidButtonVariant.primary,
                text: '분석하기',
                onTap: () async {
                  //await onTapFoodAnalyze(ref);
                },
              ),
              SizedBox(height: context.componentGap.large),
              Expanded(
                child: result == null
                    ? Center(
                        child: Text(
                          _emptyHint,
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodyMMedium.copyWith(
                            color: context.semanticColors.textSecondary,
                          ),
                        ),
                      )
                    : SingleChildScrollView(
                        child: FoodAnalyzeResultPanel(result: result),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
