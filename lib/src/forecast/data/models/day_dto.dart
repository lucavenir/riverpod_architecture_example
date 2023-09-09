import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../base/json.dart';

import 'condition_dto.dart';

//import 'condition_dto.dart';

part 'day_dto.freezed.dart';
part 'day_dto.g.dart';

@freezed
class DayDto with _$DayDto {
  const factory DayDto({
    required double avgtempC,
    required ConditionDto condition,
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
  }) = _DayDto;
  factory DayDto.fromJson(Json json) => _$DayDtoFromJson(json);
}
