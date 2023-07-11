import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_architecture_example/base/json.dart';

import '../../../shared/data/models/location_dto.dart';
import 'current_dto.dart';

part 'current_weather_dto.freezed.dart';
part 'current_weather_dto.g.dart';

@freezed
class CurrentWeatherDto with _$CurrentWeatherDto {
  const factory CurrentWeatherDto({
    required CurrentDto current,
    LocationDto? location,
  }) = _CurrentWeatherDto;
  factory CurrentWeatherDto.fromJson(Json json) => _$CurrentWeatherDtoFromJson(json);
}
