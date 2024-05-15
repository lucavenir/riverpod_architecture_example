import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../clients/http.client.dart';
import '../../../clients/retrofit_client.dart';
import 'models/forecast_weather.api.model.dart';

part 'forecast_weather.api.g.dart';

@riverpod
ForecastWeatherApi forecastWeatherApi(ForecastWeatherApiRef ref) {
  final client = ref.watch(httpClientProvider(enableLogging: false));
  return ForecastWeatherApi(client);
}

class ForecastWeatherApi {
  const ForecastWeatherApi(this.dio);
  final RetrofitClient dio;

  /// Accepts a query q, a number of days d from 1 to 14, and returns the forecasted weather for that day
  Future<ForecastWeatherApiModel> forecast({required String q, required int days}) async {
    final result = await dio.getForecastWeather(q, days);

    return result;
  }
}
