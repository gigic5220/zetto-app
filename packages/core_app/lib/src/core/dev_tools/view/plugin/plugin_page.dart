import 'package:flutter/material.dart';

import '../../plugin/dev_tools_plugin.dart';

class PluginPage extends StatefulWidget {
  const PluginPage({super.key, required this.plugin});

  final DevToolsPlugin plugin;

  @override
  State<PluginPage> createState() => _PluginPageState();
}

class _PluginPageState extends State<PluginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.plugin.title), centerTitle: false, scrolledUnderElevation: 0),
      body: widget.plugin.build(context),
    );
  }
}
