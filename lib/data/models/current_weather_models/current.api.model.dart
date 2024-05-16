import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json.dart';
import 'condition.api.model.dart';

part 'current.api.model.freezed.dart';

@freezed
class CurrentApiModel with _$CurrentApiModel {
  const factory CurrentApiModel({
    required ConditionApiModel condition,
    required DateTime lastUpdated,
    required double tempC,
    required double windKph,
    required double humidity,
    required double feelslikeC,
    int? lastUpdatedEpoch,
    double? tempF,
    int? isDay,
    double? windMph,
    double? windDegree,
    String? windDir,
    double? pressureMb,
    double? pressureIn,
    double? precipMm,
    double? precipIn,
    double? cloud,
    double? feelslikeF,
    double? visKm,
    double? visMiles,
    double? uv,
    double? gustMph,
    double? gustKph,
  }) = _CurrentApiModel;

  factory CurrentApiModel.fromJson(Json json) => _$CurrentApiModelFromJson(json);
}
