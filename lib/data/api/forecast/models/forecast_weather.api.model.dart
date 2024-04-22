import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/json.dart';
import 'current.api.model.dart';
import 'forecast.api.model.dart';
import 'forecast_location.api.model.dart';

part 'forecast_weather.api.model.freezed.dart';
part 'forecast_weather.api.model.g.dart';

@freezed
class ForecastWeatherApiModel with _$ForecastWeatherApiModel {
  const factory ForecastWeatherApiModel({
    required CurrentForecastApiModel current,
    required ForecastApiModel forecast,
    ForecastLocationApiModel? location,
  }) = _ForecastWeatherApiModel;

  factory ForecastWeatherApiModel.fromJson(Json json) => _$ForecastWeatherApiModelFromJson(json);
}
