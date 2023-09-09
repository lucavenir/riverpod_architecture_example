import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/domain/entities/current_location.dart';
import '../../data/repository/forecast_weather_repository.dart';
import '../../data/sources/forecast_weather_api.dart';
import '../entities/forecast_weather.dart';

part 'forecast_weather_repository_interface.g.dart';

@riverpod
ForecastWeatherRepository forecastWeatherRepository(ForecastWeatherRepositoryRef ref) {
  final api = ref.watch(forecastWeatherApiProvider);
  return ForecastWeatherRepository(api);
}

abstract interface class ForecastWeatherRepositoryInterface {
  Future<ForecastWeather> getForecastWeather(CurrentLocation location, int days);
}
