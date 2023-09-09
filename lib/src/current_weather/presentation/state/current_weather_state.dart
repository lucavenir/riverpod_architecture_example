import 'package:flutter_animate/flutter_animate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/presentation/state/current_weather_location.dart';
import '../../../shared/presentation/cache_for.dart';
import '../../domain/entities/current_weather.dart';
import '../../domain/services/current_weather_service.dart';

part 'current_weather_state.g.dart';

@riverpod
FutureOr<CurrentWeather> currentWeather(CurrentWeatherRef ref) async {
  final service = ref.watch(currentWeatherServiceProvider);
  final location = await ref.watch(currentLocationControllerProvider.future);
  final currentWeather = await service.getCurrentWeather(location);

  ref.cacheFor(60.seconds);
  return currentWeather;
}
