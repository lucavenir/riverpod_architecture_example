import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../current_weather/data/models/condition.model.dart';
import '../../../shared/data/json.dart';

part 'hour.model.freezed.dart';
part 'hour.model.g.dart';

@freezed
class HourModel with _$HourModel {
  const factory HourModel(
    int? timeEpoch,
    String? time,
    double? tempC,
    double? tempF,
    int? isDay,
    ConditionModel? condition,
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
  ) = _HourModel;
  factory HourModel.fromJson(Json json) => _$HourModelFromJson(json);
}
