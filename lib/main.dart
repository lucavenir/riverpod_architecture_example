import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stack_trace/stack_trace.dart';

import 'clients/talker.dart';
import 'core/riverpod_weather.dart';
import 'logs/riverpod_weather_provider_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (details) => talker.handle(
        details.exception,
        switch (details.stack) {
          final value? => Trace.from(value).terse,
          _ => null,
        },
        details.exceptionAsString(),
      );

  runApp(
    ProviderScope(
      observers: [RiverpodWeatherProviderObserver(talker)],
      child: const RiverpodWeather(),
    ),
  );
}
