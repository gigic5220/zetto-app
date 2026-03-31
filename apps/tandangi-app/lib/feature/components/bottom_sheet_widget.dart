import 'package:flutter/material.dart';
import 'package:tandangi/design_system/color/semantic/colors.dart';
import 'package:tandangi/feature/components/common_bottom_padding.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key, required this.child, this.height});

  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets;

    return Padding(
      padding: EdgeInsets.only(bottom: viewInsets.bottom),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        constraints: BoxConstraints(
          maxHeight: height ?? MediaQuery.of(context).size.height * 0.7,
        ),
        decoration: BoxDecoration(
          color: SemanticColors.fillSecondary,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 4,
                child: Container(
                  width: 48,
                  height: 4,
                  decoration: BoxDecoration(
                    color: SemanticColors.fillSecondary,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
            child,
            const CommonBottomPadding(),
          ],
        ),
      ),
    );
  }
}
