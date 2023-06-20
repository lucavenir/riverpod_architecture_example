// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_architecture_example/core/app.dart';
import 'package:riverpod_architecture_example/core/init.dart';

Future<void> main() async {
  final (logger, crashlytics) = init();
  runApp(
    ProviderScope(
      observers: [logger, crashlytics],
      child: const App(),
    ),
  );
}
