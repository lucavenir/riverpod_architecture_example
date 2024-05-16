import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json.dart';

part 'current_weather_location.api.model.freezed.dart';
part 'current_weather_location.api.model.g.dart';

@freezed
class CurrentWeatherLocationApiModel with _$CurrentWeatherLocationApiModel {
  const factory CurrentWeatherLocationApiModel({
    required String name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeepoch,
    String? localtime,
  }) = _CurrentWeatherLocationApiModel;

  factory CurrentWeatherLocationApiModel.fromJson(Json json) =>
      _$CurrentWeatherLocationApiModelFromJson(json);
}
