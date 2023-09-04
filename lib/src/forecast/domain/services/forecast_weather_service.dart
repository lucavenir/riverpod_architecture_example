import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../current_location/domain/entities/current_location.dart';
import '../../data/repository/forecast_weather_repository.dart';
import '../entities/forecast_weather.dart';

part 'forecast_weather_service.g.dart';

@riverpod
ForecastWeatherService forecastWeatherService(ForecastWeatherServiceRef ref) {
  final repo = ref.watch(forecastWeatherRepositoryProvider);
  return ForecastWeatherService(repo);
}

class ForecastWeatherService {
  const ForecastWeatherService(this.repository);
  final ForecastWeatherRepository repository;

  Future<ForecastWeather> getForecastWeather(CurrentLocation location, int days) async {
    return repository.getForecastWeather(location, days);
  }
}
