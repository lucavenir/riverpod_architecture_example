import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/api/weather_api.dart';
import '../../locations/models/current_location.model.dart';
import '../models/forecast_weather.model.dart';

part 'forecast_weather.repository.g.dart';

@riverpod
ForecastWeatherRepository forecastWeatherRepository(ForecastWeatherRepositoryRef ref) {
  final api = ref.watch(weatherApiProvider);
  return ForecastWeatherRepository(api);
}

class ForecastWeatherRepository {
  const ForecastWeatherRepository(this.client);
  final WeatherApi client;

  Future<ForecastWeather> getForecastWeather(CurrentLocation location, int days) async {
    final result = await client.getForecastWeather(
      location.cityName,
      days,
    );

    return result.toEntity();
  }
}
