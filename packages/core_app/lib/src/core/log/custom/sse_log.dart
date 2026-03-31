import 'package:talker_flutter/talker_flutter.dart';

class SseLog extends TalkerLog {
  SseLog(String message) : super(message.replaceAll(RegExp(r'\\n'), '\n').replaceAll(RegExp(r'\\"'), '"'));

  @override
  String get title => 'Sse';

  @override
  AnsiPen get pen => AnsiPen()..xterm(45);
}
