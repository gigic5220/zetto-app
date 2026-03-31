import 'package:chalkdart/chalk.dart';
import 'package:flutter/foundation.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'log_observers.dart';

final talker = TalkerFlutter.init(
  observer: CustomTalkerObserver(),
  logger: TalkerLogger(settings: TalkerLoggerSettings(enableColors: true), formatter: ExtendedLoggerFormatter()),
  settings: TalkerSettings(useConsoleLogs: kDebugMode, colors: {'riverpod-dispose': AnsiPen()..xterm(215)}),
);

class ExtendedLoggerFormatter implements LoggerFormatter {
  const ExtendedLoggerFormatter();

  @override
  String fmt(LogDetails details, TalkerLoggerSettings settings) {
    final underline = ConsoleUtils.getUnderline(
      settings.maxLineWidth,
      lineSymbol: settings.lineSymbol,
      withCorner: true,
    );
    final topline = ConsoleUtils.getTopline(settings.maxLineWidth, lineSymbol: settings.lineSymbol, withCorner: true);

    final msg = details.message?.toString() ?? '';
    final msgBorderedLines = msg.split('\n').map((e) => '| $e');
    if (!settings.enableColors) {
      return '$topline\n${msgBorderedLines.join('\n')}\n$underline';
    }

    var lines = [topline, ...msgBorderedLines, underline];
    lines = lines.map((e) => chalk.ansi(details.pen.fcolor).call(e)).toList();

    final coloredMsg = lines.join('\n');
    return coloredMsg;
  }
}
