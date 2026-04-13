import 'package:design_system/components/common.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../log/log.dart';
import '../../utils/device_utils.dart';
import '../dev_tools.dart';
import '../plugin/dev_tools_plugin.dart';
import 'api/api_log_page.dart';
import 'performance/performance_monitor_page.dart';
import 'plugin/plugin_page.dart';
import 'storage/storage_manage_page.dart';

class DevToolsPage extends StatefulWidget {
  const DevToolsPage({super.key, required this.devTools, this.plugins});

  final DevTools devTools;
  final List<DevToolsPlugin>? plugins;

  @override
  State<DevToolsPage> createState() => _DevToolsPageState();
}

class _DevToolsPageState extends State<DevToolsPage> {
  final deviceNameAsync = DeviceUtils.getDeviceName();
  final osVersionAsync = DeviceUtils.getOSVersion();
  final packageInfoAsync = PackageInfo.fromPlatform();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dev Tools'), centerTitle: false, scrolledUnderElevation: 0),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
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
                ListTile(
                  title: const Text('Go to Storage Manager'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StorageManagePage()));
                  },
                ),
                ...?widget.plugins?.map(
                  (plugin) => ListTile(
                    title: Text(plugin.listTitle ?? plugin.title),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PluginPage(plugin: plugin)));
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: .symmetric(horizontal: 12),
            child: FutureBuilder(
              future: Future.wait([deviceNameAsync, osVersionAsync, packageInfoAsync]),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SizedBox.shrink();
                }

                final deviceName = snapshot.data?[0] as String;
                final osVersion = snapshot.data?[1] as String;
                final packageInfo = snapshot.data?[2] as PackageInfo;

                return Column(
                  children: [
                    Text('$deviceName ($osVersion)'),
                    Text('앱버전 v${packageInfo.version}+${packageInfo.buildNumber}'),
                  ],
                );
              },
            ),
          ),
          CommonBottomPadding(),
        ],
      ),
    );
  }
}
