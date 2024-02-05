import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';
import 'current.model.dart';
import 'current_weather_location.model.dart';

part 'current_weather.model.freezed.dart';
part 'current_weather.model.g.dart';

@freezed
class CurrentWeatherModel with _$CurrentWeatherModel {
  const factory CurrentWeatherModel({
    required CurrentModel current,
    CurrentWeatherLocationModel? location,
  }) = _CurrentWeatherModel;
  factory CurrentWeatherModel.fromJson(Json json) => _$CurrentWeatherModelFromJson(json);
}
