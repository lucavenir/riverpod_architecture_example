import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_architecture_example/base/json.dart';
import 'package:riverpod_architecture_example/client/dio.dart';

part 'current_weather_api.g.dart';

@riverpod
CurrentWeatherApi currentWeatherApi(CurrentWeatherApiRef ref) {
  final client = ref.watch(httpClientProvider(loggerLabel: 'CurrentWeatherApi'));

  return CurrentWeatherApi(client);
}

class CurrentWeatherApi {
  const CurrentWeatherApi(this.dio);
  final Dio dio;

  /// Accepts a query q and returns the current weather
  Future<Json> current(String q) async {
    final result = await dio.get<Json>(
      '/current.json',
      queryParameters: {'q': q},
    );

    final data = result.data!;

    return data;
  }
}
