import 'package:talker_flutter/talker_flutter.dart';

class WebsocketLog extends TalkerLog {
  WebsocketLog(String message) : super(message.replaceAll(RegExp(r'\\n'), '\n').replaceAll(RegExp(r'\\"'), '"'));

  @override
  String get title => 'Websocket';

  @override
  AnsiPen get pen => AnsiPen()..xterm(132);
}
