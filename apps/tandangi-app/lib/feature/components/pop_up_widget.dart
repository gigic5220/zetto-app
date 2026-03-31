import 'package:flutter/material.dart';
import 'package:tandangi/design_system/color/semantic/colors.dart';
import 'package:tandangi/design_system/components/molecule/ds_call_to_action.dart';
//import 'package:tandangi/design_system/components/molecule/data/notice.dart';

class ConfirmModalWidget extends StatelessWidget {
  const ConfirmModalWidget({
    super.key,
    this.image,
    required this.title,
    this.description,
    required this.callToActionWidget,
  });

  final String title;
  final Widget? image;
  final String? description;
  final DSCallToAction callToActionWidget;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: SemanticColors.fillPrimary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Notice(image: image, title: title, description: description),
            callToActionWidget,
          ],
        ),
      ),
    );
  }
}
