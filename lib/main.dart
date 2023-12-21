import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'clients/local_db.dart';
import 'clients/talker.dart';
import 'core/init_isar.dart';
import 'core/init_talker.dart';
import 'core/riverpod_weather.dart';
import 'logs/riverpod_weather_provider_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final talker = initTalker();
  final isar = await initializeIsar();

  // add more configurations here
  runApp(
    ProviderScope(
      overrides: [
        talkerProvider.overrideWith((ref) {
          ref.keepAlive();
          return talker;
        }),
        localDbProvider.overrideWithValue(isar),
      ],
      observers: [RiverpodWeatherProviderObserver(talker)],
      child: const RiverpodWeather(),
    ),
  );
}
