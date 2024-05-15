import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../clients/http.client.dart';
import '../../../clients/retrofit_client.dart';
import '../../locations/models/current_location.model.dart';
import '../models/forecast_weather.model.dart';

part 'forecast_weather.repository.g.dart';

@riverpod
ForecastWeatherRepository forecastWeatherRepository(ForecastWeatherRepositoryRef ref) {
  final client = ref.watch(httpClientProvider());
  return ForecastWeatherRepository(client);
}

class ForecastWeatherRepository {
  const ForecastWeatherRepository(this.client);
  final WeatherApiClient client;

  Future<ForecastWeather> getForecastWeather(CurrentLocation location, int days) async {
    final result = await client.getForecastWeather(
      location.cityName,
      days,
    );

    return result.toEntity();
  }
}
