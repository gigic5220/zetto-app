import 'package:talker_flutter/talker_flutter.dart';

class EventTaxonomyLog extends TalkerLog {
  EventTaxonomyLog(String message) : super(message.replaceAll(RegExp(r'\\n'), '\n').replaceAll(RegExp(r'\\"'), '"'));

  @override
  String get title => 'EventTaxonomy';

  @override
  AnsiPen get pen => AnsiPen()..xterm(218);
}
