import 'package:flutter/material.dart';

import '../../../components/ions.dart';
import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

class DSBookMark extends StatefulWidget {
  const DSBookMark({super.key, required this.value, this.onChanged, this.isEnabled = true});

  final bool value;
  final Function(bool value)? onChanged;
  final bool isEnabled;

  @override
  State<DSBookMark> createState() => _DSBookMarkState();
}

class _DSBookMarkState extends State<DSBookMark> {
  late BookMarkFillColors bookMarkFillColors;
  late BookMarkTextColors bookMarkTextColors;

  late Color fillColor;
  late Color textColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSBookMark oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    bookMarkFillColors = context.componentColors.bookMarkFill;
    bookMarkTextColors = context.componentColors.bookMarkText;

    switch (widget.isEnabled) {
      case true:
        fillColor = widget.value ? bookMarkFillColors.activated : bookMarkFillColors.base;
        textColor = widget.value ? bookMarkTextColors.activated : bookMarkTextColors.base;
        break;
      case false:
        fillColor = bookMarkFillColors.disabled;
        textColor = bookMarkTextColors.disabled;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.isEnabled) {
          widget.onChanged?.call(!widget.value);
        }
      },
      behavior: HitTestBehavior.translucent,
      child: DSWrapper(
        uri: widget.value ? Svgs.icBookmarkFill : Svgs.icBookmark,
        view: WrapperView.fix20,
        svgColor: fillColor,
      ),
    );
  }
}
