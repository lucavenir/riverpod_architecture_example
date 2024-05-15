import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../clients/http.client.dart';
import '../../../clients/retrofit_client.dart';
import 'models/current_weather.api.model.dart';

part 'current_weather.api.g.dart';

@riverpod
CurrentWeatherApi currentWeatherApi(CurrentWeatherApiRef ref) {
  final client = ref.watch(httpClientProvider());
  return CurrentWeatherApi(client);
}

class CurrentWeatherApi {
  const CurrentWeatherApi(this.dio);
  final RetrofitClient dio;

  /// Accepts a `query` and returns the current weather
  Future<CurrentWeatherApiModel> current(String query) async {
    final result = await dio.getCurrentWeather(query);

    return result;
  }
}
