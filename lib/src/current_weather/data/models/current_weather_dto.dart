import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';
import '../../domain/entities/current_weather.dart';
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
  const CurrentWeatherDto._();

  CurrentWeather toEntity() {
    final truncatedUrl = current.condition.icon.substring(2);
    final imageUrl = 'https://$truncatedUrl';

    return CurrentWeather(
      temp: current.tempC.toInt(),
      weather: current.condition.text,
      updatedAt: current.lastUpdated,
      image: imageUrl,
      wind: current.windKph,
      perceivedTemp: current.feelslikeC,
      humidity: current.humidity,
    );
  }
}
