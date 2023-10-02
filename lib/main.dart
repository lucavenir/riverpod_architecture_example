// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';

import 'core/app.dart';
import 'core/init.dart';

void main() {
  hierarchicalLoggingEnabled = true;
  final (logger, crashlytics, isar) = init();

  runApp(
    ProviderScope(
      observers: [logger, crashlytics, isar],
      child: const App(),
    ),
  );
}
