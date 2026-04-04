import 'package:flutter/material.dart';

import '../../../components/ions.dart';
import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

class DSDropDown extends StatefulWidget {
  const DSDropDown({super.key, required this.value, this.onChanged, this.isEnabled = true});

  final bool value;
  final Function(bool value)? onChanged;
  final bool isEnabled;

  @override
  State<DSDropDown> createState() => _DSDropDownState();
}

class _DSDropDownState extends State<DSDropDown> {
  late DropDownFillColors dropDownFillColors;

  late Color fillColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSDropDown oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    dropDownFillColors = context.componentColors.dropDownFill;

    switch (widget.isEnabled) {
      case true:
        fillColor = dropDownFillColors.base;
        break;
      case false:
        fillColor = dropDownFillColors.disabled;
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
        uri: widget.value ? Svgs.icDropDownDownFill : Svgs.icDropDownUpFill,
        view: WrapperView.fix20,
        svgColor: fillColor,
      ),
    );
  }
}
