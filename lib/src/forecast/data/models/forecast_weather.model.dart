import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';
import 'current.model.dart';
import 'forecast.model.dart';
import 'forecast_location.model.dart';

part 'forecast_weather.model.freezed.dart';
part 'forecast_weather.model.g.dart';

@freezed
class ForecastWeatherModel with _$ForecastWeatherModel {
  const factory ForecastWeatherModel({
    required CurrentModel current,
    required ForecastModel forecast,
    ForecastLocationModel? location,
  }) = _ForecastWeatherModel;

  factory ForecastWeatherModel.fromJson(Json json) => _$ForecastWeatherModelFromJson(json);
}
