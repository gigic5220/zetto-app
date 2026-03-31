import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import '../../dev_tools.dart';

class PerformanceMonitorPage extends StatefulWidget {
  const PerformanceMonitorPage({super.key, required this.devTools});

  final DevTools devTools;

  @override
  State<PerformanceMonitorPage> createState() => _PerformanceMonitorPageState();
}

class _PerformanceMonitorPageState extends State<PerformanceMonitorPage> {
  // Memory metrics
  int _currentRss = 0;
  int _maxRss = 0;
  double _memoryUsageMB = 0;

  Timer? _memoryTimer;

  @override
  void initState() {
    super.initState();
    _updateMemory(isUpdate: false);
    _memoryTimer = Timer.periodic(const Duration(seconds: 2), (_) => _updateMemory());
  }

  @override
  void dispose() {
    _memoryTimer?.cancel();
    super.dispose();
  }

  void _updateMemory({bool isUpdate = true}) {
    try {
      final info = ProcessInfo.currentRss;
      final maxInfo = ProcessInfo.maxRss;

      _currentRss = info;
      _maxRss = maxInfo;
      // Convert to MB
      _memoryUsageMB = info / (1024 * 1024);

      if (isUpdate) {
        setState(() {});
      }
    } catch (e) {
      debugPrint('Error reading memory: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Performance Monitor'), centerTitle: false, scrolledUnderElevation: 0),
      body: ListView(
        children: [
          ListTile(
            title: Text('Memory Usage: ${_memoryUsageMB.toStringAsFixed(2)} MB'),
            subtitle: Row(
              spacing: 12,
              children: [
                Expanded(child: LinearProgressIndicator(value: _currentRss / _maxRss)),
                Text('${(_currentRss / _maxRss * 100).toStringAsFixed(2)}%'),
              ],
            ),
          ),
          ListenableBuilder(
            listenable: widget.devTools,
            builder: (context, child) {
              return SwitchListTile(
                value: widget.devTools.isShowPerformanceOverlay,
                title: const Text('Show Performance Overlay'),
                onChanged: (value) {
                  widget.devTools.setShowPerformanceOverlay(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
