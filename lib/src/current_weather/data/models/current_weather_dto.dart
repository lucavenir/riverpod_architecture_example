import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../base/json.dart';
import 'current_dto.dart';
import 'current_weather_location_dto.dart';

part 'current_weather_dto.freezed.dart';
part 'current_weather_dto.g.dart';

@freezed
class CurrentWeatherDto with _$CurrentWeatherDto {
  const factory CurrentWeatherDto({
    required CurrentDto current,
    CurrentWeatherLocationDto? location,
  }) = _CurrentWeatherDto;
  factory CurrentWeatherDto.fromJson(Json json) => _$CurrentWeatherDtoFromJson(json);
}
