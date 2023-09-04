import 'package:riverpod_architecture_example/src/current_location/domain/entities/current_location.dart';
import 'package:riverpod_architecture_example/src/forecast/data/sources/forecast_weather_api.dart';

import '../entities/forecast_weather.dart';

abstract interface class ForecastWeatherRepositoryInterface {
  const ForecastWeatherRepositoryInterface(this.api);
  final ForecastWeatherApi api;

  Future<ForecastWeather> getForecastWeather(CurrentLocation location, int days);
}
