import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/domain/entities/current_location.dart';
import '../entities/forecast_weather.dart';
import '../repository/forecast_weather_repository_interface.dart';

part 'forecast_weather_service.g.dart';

@riverpod
ForecastWeatherService forecastWeatherService(ForecastWeatherServiceRef ref) {
  final repo = ref.watch(forecastWeatherRepositoryProvider);
  return ForecastWeatherService(repo);
}

class ForecastWeatherService {
  const ForecastWeatherService(this.repository);
  final ForecastWeatherRepositoryInterface repository;

  Future<ForecastWeather> getForecastWeather(CurrentLocation location, int days) async {
    return repository.getForecastWeather(location, days);
  }
}
