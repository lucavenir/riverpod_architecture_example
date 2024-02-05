import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';
import 'condition.model.dart';

part 'current.model.freezed.dart';
part 'current.model.g.dart';

@freezed
class CurrentModel with _$CurrentModel {
  const factory CurrentModel({
    required ConditionModel condition,
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
  }) = _CurrentModel;

  factory CurrentModel.fromJson(Json json) => _$CurrentModelFromJson(json);
}
