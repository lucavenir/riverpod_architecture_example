import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:stack_trace/stack_trace.dart';

import '../logs/logger_color.dart';
import '../logs/riverpod_crashlytics.dart';
import '../logs/riverpod_logger.dart';

(RiverpodLogger, RiverpodCrashlytics) init() {
  hierarchicalLoggingEnabled = true;

  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is Trace) return stack.vmTrace;
    if (stack is Chain) return stack.toTrace().vmTrace;
    return stack;
  };

  final riverpodLogger = _initRiverpodLogger();
  final riverpodCrashlytics = _initRiverpodCrashlytics();

  return (
    RiverpodLogger(riverpodLogger),
    RiverpodCrashlytics(riverpodCrashlytics),
  );
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
