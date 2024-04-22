import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/json.dart';
import 'condition.api.model.dart';

part 'day.api.model.freezed.dart';
part 'day.api.model.g.dart';

@freezed
class DayApiModel with _$DayApiModel {
  const factory DayApiModel({
    required ConditionApiModel condition,
    required double avgtempC,
    double? maxtempC,
    double? maxtempF,
    double? mintempC,
    double? mintempF,
    double? avgtempF,
    double? maxwindMph,
    double? maxwindKph,
    double? totalprecipMm,
    double? totalprecipIn,
    double? totalsnowCm,
    double? avgvisKm,
    double? avgvisMiles,
    double? avghumidity,
    double? dailyWillItRain,
    double? dailyChanceOfRain,
    double? dailyWillItSnow,
    double? dailyChanceOfSnow,
    double? uv,
  }) = _DayApiModel;
  factory DayApiModel.fromJson(Json json) => _$DayApiModelFromJson(json);
}
