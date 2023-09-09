import 'dart:developer' as dev;

import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'logger_color.dart';

part 'logger.g.dart';

@riverpod
Logger logger(
  LoggerRef ref,
  String label, {
  LoggerColor color = LoggerColor.green,
  Level level = Level.INFO,
}) {
  final logger = Logger(label)..level = level;

  final subscription = logger.onRecord.listen(
    (record) => dev.log(
      color.paint(record.message),
      level: record.level.value,
      error: record.error,
      stackTrace: record.stackTrace,
      sequenceNumber: record.sequenceNumber,
      name: record.loggerName,
      time: record.time,
      zone: record.zone,
    ),
  );

  ref.onDispose(subscription.cancel);
  return logger;
}
