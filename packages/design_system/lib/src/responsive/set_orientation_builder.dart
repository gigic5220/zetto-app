import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

enum SetOrientation { auto, portrait, landscape }

class SetOrientationBuilder extends StatefulWidget {
  const SetOrientationBuilder({required this.builder, this.setOrientation = SetOrientation.auto, super.key});

  final SetOrientation setOrientation;
  final Widget Function(BuildContext context, Orientation orientation) builder;

  @override
  State<SetOrientationBuilder> createState() => _SetOrientationBuilderState();
}

class _SetOrientationBuilderState extends State<SetOrientationBuilder> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      if (widget.setOrientation == SetOrientation.auto) ...DeviceOrientation.values,
      if (widget.setOrientation == SetOrientation.portrait) ...[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
      if (widget.setOrientation == SetOrientation.landscape) ...[
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, MediaQuery.orientationOf(context));
  }
}
