import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../base/json.dart';

import 'condition_dto.dart';

part 'current_dto.freezed.dart';
part 'current_dto.g.dart';

@freezed
class CurrentDto with _$CurrentDto {
  const factory CurrentDto({
    required ConditionDto condition,
    required DateTime lastUpdated, int? lastUpdatedEpoch,
    double? tempC,
    double? tempF,
    int? isDay,
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
    double? visKm,
    double? visMiles,
    double? uv,
    double? gustMph,
    double? gustKph,
  }) = _CurrentDto;

  factory CurrentDto.fromJson(Json json) => _$CurrentDtoFromJson(json);
}
