import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../log/log.dart';
import '../dev_tools.dart';
import 'api/api_log_page.dart';
import 'performance/performance_monitor_page.dart';

class DevToolsPage extends StatefulWidget {
  const DevToolsPage({super.key, required this.devTools});

  final DevTools devTools;

  @override
  State<DevToolsPage> createState() => _DevToolsPageState();
}

class _DevToolsPageState extends State<DevToolsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dev Tools'), centerTitle: false, scrolledUnderElevation: 0),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Go to API logs'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ApiLogPage()));
            },
          ),
          ListTile(
            title: const Text('Go to App debug logs'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TalkerScreen(talker: talker, theme: TalkerScreenTheme.fromTheme(Theme.of(context))),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Go to Performance Monitor'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PerformanceMonitorPage(devTools: widget.devTools)),
              );
            },
          ),
          ListenableBuilder(
            listenable: widget.devTools,
            builder: (context, child) {
              return SwitchListTile(
                value: widget.devTools.isShowInspector,
                title: const Text('Show Inspector'),
                onChanged: (value) {
                  widget.devTools.setShowInspector(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
