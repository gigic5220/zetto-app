import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../atoms/ds_solid_button.dart';
import '../ions/ds_wrapper.dart';

enum DSEmptyAreaType { section, page }

class DSEmptyArea extends StatefulWidget {
  const DSEmptyArea({
    super.key,
    required this.type,
    required this.title,
    this.wrapperUri,
    this.description,
    this.button,
  });

  final DSEmptyAreaType type;
  final String title;
  final String? wrapperUri;
  final String? description;
  final DSSolidButton? button;

  @override
  State<DSEmptyArea> createState() => _DSEmptyAreaState();
}

class _DSEmptyAreaState extends State<DSEmptyArea> {
  late EdgeInsets margin;
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
  void didUpdateWidget(covariant DSEmptyArea oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    margin = EdgeInsets.symmetric(vertical: context.componentPadding.xxLarge);
    gap = context.componentGap.large;
    descriptionGap = context.componentGap.xxSmall;

    switch (widget.type) {
      case .section:
        wrapperView = WrapperView.image52(context);
        titleStyle = context.textTheme.titleSSemiBold;
        descriptionStyle = context.textTheme.bodyMRegular;
        break;
      case .page:
        wrapperView = WrapperView.image64(context);
        titleStyle = context.textTheme.titleMSemiBold;
        descriptionStyle = context.textTheme.bodyLRegular;
        break;
    }

    descriptionStyle = descriptionStyle.copyWith(color: context.componentColors.dataText.tertiary);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Center(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            if (widget.wrapperUri?.isNotEmpty == true) ...[
              DSWrapper(uri: widget.wrapperUri!, view: wrapperView),
              SizedBox(height: gap),
            ],
            Text(widget.title, style: titleStyle),
            if (widget.description?.isNotEmpty == true) ...[
              SizedBox(height: descriptionGap),
              Text(widget.description!, style: descriptionStyle),
            ],
            if (widget.button != null) ...[SizedBox(height: gap), widget.button!],
          ],
        ),
      ),
    );
  }
}
