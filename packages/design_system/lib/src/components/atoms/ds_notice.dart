import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';
import '../ions/ds_wrapper.dart';

enum DSNoticeSize { medium, small }

enum DSNoticeState { normal, success, warning, info }

class DSNotice extends StatefulWidget {
  const DSNotice._({required this.size, required this.state, required this.title, this.description, this.wrapperUri});

  factory DSNotice.normal({
    required String title,
    required DSNoticeSize size,
    String? description,
    String? wrapperUri,
  }) => DSNotice._(size: size, state: .normal, title: title, description: description, wrapperUri: wrapperUri);

  factory DSNotice.success({required String title, required DSNoticeSize size, String? description}) =>
      DSNotice._(size: size, state: .success, title: title, description: description);

  factory DSNotice.warning({required String title, required DSNoticeSize size, String? description}) =>
      DSNotice._(size: size, state: .warning, title: title, description: description);

  factory DSNotice.info({required String title, required DSNoticeSize size, String? description}) =>
      DSNotice._(size: size, state: .info, title: title, description: description);

  final DSNoticeSize size;
  final DSNoticeState state;
  final String title;
  final String? description;
  final String? wrapperUri;

  @override
  State<DSNotice> createState() => _DSNoticeState();
}

class _DSNoticeState extends State<DSNotice> {
  late DataTextColors dataTextColors;
  late EdgeInsets margin;
  late String? wrapperUri;
  late WrapperView wrapperView;
  late double gap;
  late double descriptionGap;
  late TextStyle titleStyle;
  late TextStyle descriptionStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSNotice oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    dataTextColors = context.componentColors.dataText;

    margin = EdgeInsets.symmetric(vertical: context.componentPadding.xxLarge);
    gap = context.componentGap.large;
    descriptionGap = 4;

    switch (widget.size) {
      case .medium:
        titleStyle = context.textTheme.titleXLSemiBold.copyWith(color: dataTextColors.primary);
        descriptionStyle = context.textTheme.bodyXLRegular.copyWith(color: dataTextColors.tertiary);
        wrapperView = WrapperView.fix64;
        break;
      case .small:
        titleStyle = context.textTheme.titleSSemiBold.copyWith(color: dataTextColors.primary);
        descriptionStyle = context.textTheme.bodyMRegular.copyWith(color: dataTextColors.tertiary);
        wrapperView = WrapperView.fix52;
        break;
    }
    wrapperUri = switch (widget.state) {
      .normal => widget.wrapperUri,
      .success => Images.circleCheckGreen,
      .warning => Images.circleX,
      .info => Images.exclamation,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: margin,
        child: Column(
          children: [
            if (wrapperUri != null) ...[DSWrapper(uri: wrapperUri!, view: wrapperView), SizedBox(height: gap)],
            Text(widget.title, style: titleStyle),
            if (widget.description?.isNotEmpty == true) ...[
              SizedBox(height: descriptionGap),
              Text(widget.description!, style: descriptionStyle),
            ],
          ],
        ),
      ),
    );
  }
}
