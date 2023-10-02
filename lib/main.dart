// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';

import 'clients/local_db.dart';
import 'core/app.dart';
import 'core/init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  hierarchicalLoggingEnabled = true;
  final (logger, crashlytics, isar) = await init();

  runApp(
    ProviderScope(
      observers: [logger, crashlytics],
      overrides: [
        localDbProvider.overrideWith((ref) {
          ref.keepAlive();
          return isar;
        }),
      ],
      child: const App(),
    ),
  );
}
