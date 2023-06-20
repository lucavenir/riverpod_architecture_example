import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/forecast_weather_dto.dart';
import '../sources/forecast_weather_api.dart';

part 'forecast_weather_repository.g.dart';

@riverpod
ForecastWeatherRepository forecastWeatherRepository(ForecastWeatherRepositoryRef ref) {
  final api = ref.watch(forecastWeatherApiProvider);
  return ForecastWeatherRepository(api);
}

class ForecastWeatherRepository {
  const ForecastWeatherRepository(this.api);
  final ForecastWeatherApi api;

  Future<ForecastWeatherDto> getForecastWeather(String city, int days) async {
    final result = await api.forecast(
      q: city,
      days: days,
    );

    return ForecastWeatherDto.fromJson(result);
  }
}
