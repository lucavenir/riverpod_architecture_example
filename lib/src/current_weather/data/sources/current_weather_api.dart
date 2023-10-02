import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../base/json.dart';
import '../../../../clients/dio.dart';

part 'current_weather_api.g.dart';

@riverpod
CurrentWeatherApi currentWeatherApi(CurrentWeatherApiRef ref) {
  final client = ref.watch(httpClientProvider(loggerLabel: 'CurrentWeatherApi'));
  return CurrentWeatherApi(client);
}

class CurrentWeatherApi {
  const CurrentWeatherApi(this.dio);
  final Dio dio;

  /// Accepts a `query` and returns the current weather
  Future<Json> current(String query) async {
    final result = await dio.get<Json>(
      '/current.json',
      queryParameters: {'q': query},
    );

    final data = result.data!;
    return data;
  }
}
