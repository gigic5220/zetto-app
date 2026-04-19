import 'package:core_app/components/async_widget.dart';
import 'package:design_system/components/molecules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/feature/main/my/controller/my_provider.dart';

class MyPage extends ConsumerStatefulWidget {
  const MyPage({super.key});

  static const String routeName = 'my';

  @override
  ConsumerState<MyPage> createState() => _MyPageState();
}

class _MyPageState extends ConsumerState<MyPage>
    with MyStateMixin, MyActionMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DSAppBar.logo(logoUri: 'assets/images/logo.png'),
      body: Consumer(
        builder: (context, ref, child) {
          final userPushTimes = watchUserPushTimes(ref);
          return AsyncWidget(
            asyncValue: userPushTimes,
            builder: (userPushTimes) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  //return Text(userPushTimes[index].toString());
                },
              );
            },
          );
        },
      ),
    );
  }
}
