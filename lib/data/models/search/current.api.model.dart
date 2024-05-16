import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json.dart';
import 'condition.api.model.dart';

part 'current.api.model.freezed.dart';
part 'current.api.model.g.dart';

@freezed
class CurrentForecastApiModel with _$CurrentForecastApiModel {
  const factory CurrentForecastApiModel({
    required ConditionApiModel condition,
    required DateTime lastUpdated,
    int? lastUpdatedEpoch,
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
  }) = _CurrentForecastApiModel;

  factory CurrentForecastApiModel.fromJson(Json json) => _$CurrentForecastApiModelFromJson(json);
}
