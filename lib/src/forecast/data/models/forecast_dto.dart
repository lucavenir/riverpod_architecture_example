import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../base/json.dart';

import 'forecast_day_dto.dart';

part 'forecast_dto.freezed.dart';
part 'forecast_dto.g.dart';

@freezed
class ForecastDto with _$ForecastDto {
  const factory ForecastDto({
    @Default([]) Iterable<ForecastDayDto> forecastday,
  }) = _ForecastDto;

  factory ForecastDto.fromJson(Json json) => _$ForecastDtoFromJson(json);
}
