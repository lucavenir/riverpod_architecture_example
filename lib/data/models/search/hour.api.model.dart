import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json.dart';
import '../current_weather/condition.api.model.dart';

part 'hour.api.model.freezed.dart';
part 'hour.api.model.g.dart';

@freezed
class HourApiModel with _$HourApiModel {
  const factory HourApiModel(
    int? timeEpoch,
    String? time,
    double? tempC,
    double? tempF,
    int? isDay,
    // TODO: decouple this one out
    ConditionApiModel? condition,
    double? windMph,
    double? windKph,
    double? windDegree,
    String? windDir,
    double? pressureMb,
    double? pressureIn,
    double? precipMm,
    double? precipIn,
    double? humidity,
    double? cloud,
    double? feelslikeC,
    double? feelslikeF,
    double? windchillC,
    double? windchillF,
    double? heatindexC,
    double? heatindexF,
    double? dewpointC,
    double? dewpointF,
    double? willItRain,
    double? chanceOfRain,
    double? willItSnow,
    double? chanceOfSnow,
    double? visKm,
    double? visMiles,
    double? gustMph,
    double? gustKph,
    double? uv,
  ) = _HourApiModel;
  factory HourApiModel.fromJson(Json json) => _$HourApiModelFromJson(json);
}
