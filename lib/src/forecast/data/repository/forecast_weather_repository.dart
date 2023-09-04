import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_architecture_example/src/current_location/domain/entities/current_location.dart';
import 'package:riverpod_architecture_example/src/forecast/domain/adapters/forecast_weather_from_dto.dart';
import 'package:riverpod_architecture_example/src/forecast/domain/entities/forecast_weather.dart';
import 'package:riverpod_architecture_example/src/forecast/domain/repository/forecast_weather_repository_interface.dart';

import '../models/forecast_weather_dto.dart';
import '../sources/forecast_weather_api.dart';

part 'forecast_weather_repository.g.dart';

@riverpod
ForecastWeatherRepository forecastWeatherRepository(ForecastWeatherRepositoryRef ref) {
  final api = ref.watch(forecastWeatherApiProvider);
  return ForecastWeatherRepository(api);
}

class ForecastWeatherRepository implements ForecastWeatherRepositoryInterface {
  const ForecastWeatherRepository(this.api);
  @override
  final ForecastWeatherApi api;

  @override
  Future<ForecastWeather> getForecastWeather(CurrentLocation location, int days) async {
    final result = await api.forecast(
      q: location.cityName,
      days: days,
    );

    final dto = ForecastWeatherDto.fromJson(result);
    return dto.toDomain();
  }
}
