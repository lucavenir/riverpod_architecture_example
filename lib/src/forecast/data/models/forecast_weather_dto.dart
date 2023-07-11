import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_architecture_example/base/json.dart';

import '../../../shared/data/models/location_dto.dart';
import 'current_dto.dart';
import 'forecast_dto.dart';

part 'forecast_weather_dto.freezed.dart';
part 'forecast_weather_dto.g.dart';

@freezed
class ForecastWeatherDto with _$ForecastWeatherDto {
  const factory ForecastWeatherDto({
    required CurrentDto current,
    required ForecastDto forecast,
    LocationDto? location,
  }) = _ForecastWeatherDto;

  factory ForecastWeatherDto.fromJson(Json json) => _$ForecastWeatherDtoFromJson(json);
}
