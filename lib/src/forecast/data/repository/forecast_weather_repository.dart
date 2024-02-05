import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/domain/entities/current_location.dart';
import '../models/forecast_weather_dto.dart';
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

  Future<ForecastWeatherDto> getForecastWeather(CurrentLocation location, int days) async {
    final result = await api.forecast(
      q: location.cityName,
      days: days,
    );

    final dto = ForecastWeatherDto.fromJson(result);
    return dto;
  }
}
