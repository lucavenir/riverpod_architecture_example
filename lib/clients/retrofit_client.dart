import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data/api/astronomy/models/astronomy.api.model.dart';
import '../data/api/current_weather/models/current_weather.api.model.dart';
import '../data/api/forecast/models/forecast_weather.api.model.dart';
import '../data/api/search/models/location.model.dart';
import 'http.client.dart';

part 'retrofit_client.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class WeatherApiClient {
  factory WeatherApiClient(Dio dio, {String baseUrl}) = _WeatherApiClient;

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
