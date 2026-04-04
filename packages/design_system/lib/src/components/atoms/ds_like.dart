import 'package:flutter/material.dart';

import '../../../components/ions.dart';
import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

class DSLike extends StatefulWidget {
  const DSLike({super.key, required this.value, this.onChanged, this.isEnabled = true});

  final bool value;
  final Function(bool value)? onChanged;
  final bool isEnabled;

  @override
  State<DSLike> createState() => _DSLikeState();
}

class _DSLikeState extends State<DSLike> {
  late LikeFillColors likeFillColors;
  late LikeTextColors likeTextColors;

  late Color fillColor;
  late Color textColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSLike oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    likeFillColors = context.componentColors.likeFill;
    likeTextColors = context.componentColors.likeText;

    switch (widget.isEnabled) {
      case true:
        fillColor = widget.value ? likeFillColors.activated : likeFillColors.base;
        textColor = widget.value ? likeTextColors.activated : likeTextColors.base;
        break;
      case false:
        fillColor = likeFillColors.disabled;
        textColor = likeTextColors.disabled;
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
      child: DSWrapper(uri: widget.value ? Svgs.icLikeFill : Svgs.icLike, view: WrapperView.fix20, svgColor: fillColor),
    );
  }
}
