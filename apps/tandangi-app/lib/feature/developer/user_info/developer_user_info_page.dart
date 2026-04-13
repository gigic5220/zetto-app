import 'package:core_app/components/async_widget.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/feature/controller/common_provider.dart';

class DeveloperUserInfoPage extends StatefulWidget {
  const DeveloperUserInfoPage({super.key});

  @override
  State<DeveloperUserInfoPage> createState() => _DeveloperUserInfoPageState();
}

class _DeveloperUserInfoPageState extends State<DeveloperUserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SelectableRegion(
      selectionControls: MaterialTextSelectionControls(),
      child: Column(
        spacing: context.componentGap.medium,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Current User Info', style: context.textTheme.titleSSemiBold),
          Consumer(
            builder: (context, ref, child) {
              final userInfo = ref.watch(meProvider);

              return AsyncWidget(
                asyncValue: userInfo,
                builder: (userInfo) {
                  return Text(userInfo.toString());
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
