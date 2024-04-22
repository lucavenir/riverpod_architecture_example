import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../clients/http.client.dart';
import '../../../../data/json.dart';

part 'forecast_weather_api.source.g.dart';

@riverpod
ForecastWeatherApi forecastWeatherApi(ForecastWeatherApiRef ref) {
  final client = ref.watch(httpClientProvider(enableLogging: false));
  return ForecastWeatherApi(client);
}

class ForecastWeatherApi {
  const ForecastWeatherApi(this.dio);
  final Dio dio;

  /// Accepts a query q, a number of days d from 1 to 14, and returns the forecasted weather for that day
  Future<Json> forecast({required String q, required int days}) async {
    final result = await dio.get<Json>(
      '/forecast.json',
      queryParameters: {'q': q, 'days': days},
    );

    final data = result.data!;

    return data;
  }
}
