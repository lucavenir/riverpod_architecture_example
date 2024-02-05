import 'package:flutter_animate/flutter_animate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/presentation/controllers/current_location_controller.dart';
import '../../../shared/presentation/cache_for.dart';
import '../../data/repository/current_weather_repository.dart';
import '../../domain/entities/current_weather.dart';

part 'current_weather_provider.g.dart';

@riverpod
FutureOr<CurrentWeather> currentWeather(CurrentWeatherRef ref) async {
  final service = ref.watch(currentWeatherRepositoryProvider);
  final location = await ref.watch(currentLocationControllerProvider.future);
  final currentWeather = await service.getCurrentWeather(location);

  ref.cacheFor(60.seconds);
  return CurrentWeather.fromModel(currentWeather);
}
