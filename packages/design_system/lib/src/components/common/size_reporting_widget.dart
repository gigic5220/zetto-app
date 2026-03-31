import 'package:flutter/material.dart';

class SizeReportingWidget extends StatefulWidget {
  const SizeReportingWidget({super.key, required this.child, required this.onSizeChange, this.isNotifyInBuild = true});

  final Widget child;
  final ValueChanged<Size> onSizeChange;
  final bool isNotifyInBuild;

  @override
  State<SizeReportingWidget> createState() => _SizeReportingWidgetState();
}

class _SizeReportingWidgetState extends State<SizeReportingWidget> {
  Size? _oldSize;

  @override
  void initState() {
    if (!widget.isNotifyInBuild) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _notifySize());
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isNotifyInBuild) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _notifySize());
    }

    return widget.child;
  }

  void _notifySize() {
    if (!mounted) {
      return;
    }
    final size = context.size;
    if (_oldSize != size && size != null) {
      _oldSize = size;
      widget.onSizeChange(size);
    }
  }
}
