import 'package:flutter/material.dart';

abstract class DevToolsPlugin {
  String get title;
  String? get listTitle;

  Widget build(BuildContext context);
}
