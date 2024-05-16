import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json.dart';
import 'current.api.model.dart';
import 'current_weather_location.api.model.dart';

part 'current_weather.api.model.freezed.dart';

@freezed
class CurrentWeatherApiModel with _$CurrentWeatherApiModel {
  const factory CurrentWeatherApiModel({
    required CurrentApiModel current,
    CurrentWeatherLocationApiModel? location,
  }) = _CurrentWeatherApiModel;
  factory CurrentWeatherApiModel.fromJson(Json json) => _$CurrentWeatherApiModelFromJson(json);
}
