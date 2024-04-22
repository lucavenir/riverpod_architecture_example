import 'package:flutter_animate/flutter_animate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../locations/controllers/current_location.controller.dart';
import '../../shared/logic/cache_for.dart';
import '../models/current_weather.model.dart';
import '../repository/current_weather.repository.dart';

part 'current_weather.provider.g.dart';

@riverpod
FutureOr<CurrentWeather> currentWeather(CurrentWeatherRef ref) async {
  final repository = ref.watch(currentWeatherRepositoryProvider);
  final location = await ref.watch(currentLocationControllerProvider.future);

  final currentWeather = await repository.getCurrentWeather(location);

  ref.cacheFor(60.seconds);
  return currentWeather;
}
