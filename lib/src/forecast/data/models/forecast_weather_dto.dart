import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../base/json.dart';

import 'current_dto.dart';
import 'forecast_dto.dart';
import 'forecast_location_dto.dart';

part 'forecast_weather_dto.freezed.dart';
part 'forecast_weather_dto.g.dart';

@freezed
class ForecastWeatherDto with _$ForecastWeatherDto {
  const factory ForecastWeatherDto({
    required CurrentDto current,
    required ForecastDto forecast,
    ForecastLocationDto? location,
  }) = _ForecastWeatherDto;

  factory ForecastWeatherDto.fromJson(Json json) => _$ForecastWeatherDtoFromJson(json);
}
