import 'package:talker_flutter/talker_flutter.dart';

class IAPLog extends TalkerLog {
  IAPLog(String message) : super(message.replaceAll(RegExp(r'\\n'), '\n').replaceAll(RegExp(r'\\"'), '"'));

  @override
  String get title => 'IAP';

  @override
  AnsiPen get pen => AnsiPen()..xterm(230);
}
