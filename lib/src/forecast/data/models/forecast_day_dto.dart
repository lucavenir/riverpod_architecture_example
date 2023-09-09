import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../base/json.dart';

import 'astro_dto.dart';
import 'day_dto.dart';
import 'hour_dto.dart';

part 'forecast_day_dto.freezed.dart';
part 'forecast_day_dto.g.dart';

@freezed
class ForecastDayDto with _$ForecastDayDto {
  const factory ForecastDayDto({
    required DateTime date,
    required DayDto day,
    int? dateEpoch,
    AstroDto? astro,
    List<HourDto>? hour,
  }) = _ForecastDayDto;

  factory ForecastDayDto.fromJson(Json json) => _$ForecastDayDtoFromJson(json);
}
