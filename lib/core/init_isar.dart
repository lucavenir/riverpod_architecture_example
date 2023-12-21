import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stack_trace/stack_trace.dart';

Future<Isar> initializeIsar() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [LocalCurrentWeatherDtoSchema],
    name: 'riverpod_architecture_example',
    directory: dir.path,
    maxSizeMiB: 2 * Isar.defaultMaxSizeMiB,
  );

  return isar;
}
