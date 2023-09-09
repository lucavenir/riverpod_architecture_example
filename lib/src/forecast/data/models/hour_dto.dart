import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../base/json.dart';

import '../../../current_weather/data/models/condition_dto.dart';

part 'hour_dto.freezed.dart';
part 'hour_dto.g.dart';

@freezed
class HourDto with _$HourDto {
  const factory HourDto(
    int? timeEpoch,
    String? time,
    double? tempC,
    double? tempF,
    int? isDay,
    ConditionDto? condition,
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
  ) = _HourDto;
  factory HourDto.fromJson(Json json) => _$HourDtoFromJson(json);
}
