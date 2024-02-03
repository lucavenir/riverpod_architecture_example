// import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:talker_flutter/talker_flutter.dart';

final talker = Talker(
  logger: TalkerLogger(
    output: (String message) => message.split('\n').forEach(debugPrintSynchronously),
    settings: TalkerLoggerSettings(
      colors: {
        LogLevel.verbose: AnsiPen()..cyan(),
        LogLevel.info: AnsiPen()..white(),
      },
      level: LogLevel.debug,
      maxLineWidth: 120,
    ),
  ),
);
