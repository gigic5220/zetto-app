import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class IgnorePadding extends StatelessWidget {
  const IgnorePadding({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

class IgnoreSliverPadding extends SingleChildRenderObjectWidget {
  const IgnoreSliverPadding({
    super.key,
    super.child,
  });

  @override
  RenderSliverToBoxAdapter createRenderObject(BuildContext context) => RenderSliverToBoxAdapter();
}
