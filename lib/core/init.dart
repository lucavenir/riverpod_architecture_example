import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stack_trace/stack_trace.dart';

import '../logs/logger_color.dart';
import '../logs/riverpod_crashlytics.dart';
import '../logs/riverpod_logger.dart';
import '../src/current_weather/data/models/local_current_weather_dto.dart';

Future<(RiverpodLogger, RiverpodCrashlytics, Isar)> init() async {
  hierarchicalLoggingEnabled = true;

  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is Trace) return stack.vmTrace;
    if (stack is Chain) return stack.toTrace().vmTrace;
    return stack;
  };

  final riverpodLogger = _initRiverpodLogger();
  final riverpodCrashlytics = _initRiverpodCrashlytics();
  final isar = await _initializeIsar();

  return (RiverpodLogger(riverpodLogger), RiverpodCrashlytics(riverpodCrashlytics), isar);
}

Logger _initRiverpodLogger() {
  final logger = Logger('Riverpod');
  const color = LoggerColor.white;
  logger.level = Level.FINEST;

  logger.onRecord.listen(
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

  return logger;
}

Logger _initRiverpodCrashlytics() {
  final logger = Logger('Riverpod Error');
  const color = LoggerColor.yellow;
  logger.level = Level.SEVERE;

  logger.onRecord.listen(
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

  return logger;
}

Future<Isar> _initializeIsar() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [LocalCurrentWeatherDtoSchema],
    name: 'riverpod_architecture_example',
    directory: dir.path,
    maxSizeMiB: 2 * Isar.defaultMaxSizeMiB,
  );

  return isar;
}
