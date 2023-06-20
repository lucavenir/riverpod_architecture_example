import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../current_location/domain/entities/current_location.dart';
import '../../data/repository/current_weather_repository.dart';
import '../adapters/current_weather_from_dto.dart';
import '../entities/current_weather.dart';

part 'current_weather_service.g.dart';

@riverpod
CurrentWeatherService currentWeatherService(CurrentWeatherServiceRef ref) {
  final repo = ref.watch(currentWeatherRepositoryProvider);

  return CurrentWeatherService(repo);
}

class CurrentWeatherService {
  const CurrentWeatherService(this.repository);

  final CurrentWeatherRepository repository;

  Future<CurrentWeather> getCurrentWeather(CurrentLocation location) async {
    final result = await repository.getCurrentWeather(location.cityName);

    return result.toDomain();
  }
}
