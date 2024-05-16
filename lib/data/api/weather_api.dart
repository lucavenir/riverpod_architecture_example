import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../clients/http.client.dart';
import '../models/astronomy_models/astronomy.api.model.dart';
import '../models/current_weather_models/current_weather.api.model.dart';
import '../models/forecast_models/forecast_weather.api.model.dart';
import '../models/search_models/location.model.dart';

part 'weather_api.g.dart';

@riverpod
WeatherApi weatherApi(WeatherApiRef ref) {
  final dio = ref.watch(httpClientProvider());
  return WeatherApi(dio, baseUrl: baseUrl);
}

@RestApi(baseUrl: baseUrl)
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  @GET('/astronomy.json')
  Future<AstronomyApiModel> getAstronomy(
    @Query('q') String q,
    @Query('dt') String dt,
  );

  @GET('/current.json')
  Future<CurrentWeatherApiModel> getCurrentWeather(@Query('q') String q);

  @GET('/forecast.json')
  Future<ForecastWeatherApiModel> getForecastWeather(
    @Query('q') String q,
    @Query('days') int days,
  );

  @GET('/search.json')
  Future<List<LocationApiModel>> search(@Query('q') String q);
}
