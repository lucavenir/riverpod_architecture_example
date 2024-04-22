import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/json.dart';
import 'condition.model.dart';

//import 'condition_dto.dart';

part 'day.model.freezed.dart';
part 'day.model.g.dart';

@freezed
class DayModel with _$DayModel {
  const factory DayModel({
    required double avgtempC,
    required ConditionModel condition,
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
  }) = _DayModel;
  factory DayModel.fromJson(Json json) => _$DayModelFromJson(json);
}
