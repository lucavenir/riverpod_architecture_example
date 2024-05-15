import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/api/forecast/forecast_weather.api.dart';
import '../../locations/models/current_location.model.dart';
import '../models/forecast_weather.model.dart';

part 'forecast_weather.repository.g.dart';

@riverpod
ForecastWeatherRepository forecastWeatherRepository(ForecastWeatherRepositoryRef ref) {
  final api = ref.watch(forecastWeatherApiProvider);
  return ForecastWeatherRepository(api);
}

class ForecastWeatherRepository {
  const ForecastWeatherRepository(this.api);
  final ForecastWeatherApi api;

  Future<ForecastWeather> getForecastWeather(CurrentLocation location, int days) async {
    final result = await api.forecast(
      q: location.cityName,
      days: days,
    );

    return result.toEntity();
  }
}
