import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/domain/entities/current_location.dart';
import '../entities/current_weather.dart';
import '../repository/current_weather_repository_interface.dart';

part 'current_weather_service.g.dart';

@riverpod
CurrentWeatherService currentWeatherService(CurrentWeatherServiceRef ref) {
  final repo = ref.watch(currentWeatherRepositoryProvider);
  return CurrentWeatherService(repo);
}

class CurrentWeatherService {
  const CurrentWeatherService(this.repository);
  final CurrentWeatherRepositoryInterface repository;

  Future<CurrentWeather> getCurrentWeather(CurrentLocation location) {
    return repository.getCurrentWeather(location);
  }
}
