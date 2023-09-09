// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/app.dart';
import 'core/init.dart';

Future<void> main() async {
  final (logger, crashlytics) = init();
  await dotenv.load();

  runApp(
    ProviderScope(
      observers: [logger, crashlytics],
      child: const App(),
    ),
  );
}
