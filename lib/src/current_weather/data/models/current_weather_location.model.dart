import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';

part 'current_weather_location.model.freezed.dart';
part 'current_weather_location.model.g.dart';

@freezed
class CurrentWeatherLocationModel with _$CurrentWeatherLocationModel {
  const factory CurrentWeatherLocationModel({
    required String name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeepoch,
    String? localtime,
  }) = _CurrentWeatherLocationModel;

  factory CurrentWeatherLocationModel.fromJson(Json json) =>
      _$CurrentWeatherLocationModelFromJson(json);
}
