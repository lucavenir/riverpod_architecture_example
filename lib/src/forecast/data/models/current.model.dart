import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';
import 'condition.model.dart';

part 'current.model.freezed.dart';
part 'current.model.g.dart';

@freezed
class CurrentForecastModel with _$CurrentForecastModel {
  const factory CurrentForecastModel({
    required ConditionModel condition,
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
  }) = _CurrentForecastModel;

  factory CurrentForecastModel.fromJson(Json json) => _$CurrentForecastModelFromJson(json);
}
