import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stack_trace/stack_trace.dart';

import 'clients/local_db.dart';
import 'clients/talker.dart';
import 'core/init_isar.dart';
import 'core/riverpod_weather.dart';
import 'logs/riverpod_weather_provider_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isar = await initializeIsar();

  FlutterError.onError = (details) => talker.handle(
        details.exception,
        switch (details.stack) {
          null => null,
          final value => Trace.from(value).terse,
        },
        details.exceptionAsString(),
      );

  // add more configurations here
  runApp(
    ProviderScope(
      overrides: [
        localDbProvider.overrideWithValue(isar),
      ],
      observers: [RiverpodWeatherProviderObserver(talker)],
      child: const RiverpodWeather(),
    ),
  );
}
