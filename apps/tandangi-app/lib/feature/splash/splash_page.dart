import 'package:design_system/components/ions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tandangi/feature/splash/controller/splash_action_mixin.dart';
import 'package:tandangi/gen/assets.gen.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  static const routeName = 'splash';

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SplashActionMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      onInit(ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DSWrapper(
              uri: Assets.images.logo.path,
              view: WrapperView(size: 160, ratio: 160 / 52),
            ),
            const SizedBox(height: 24),
            DSWrapper(
              uri: Assets.images.logoText.path,
              view: WrapperView(size: 105, ratio: 105 / 33),
            ),
          ],
        ),
      ),
    );
  }
}
