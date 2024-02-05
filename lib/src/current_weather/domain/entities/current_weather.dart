import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/current_weather_dto.dart';

part 'current_weather.freezed.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    /// our current temperature
    required int temp,

    /// a human-readable text about the current weather
    required String weather,

    /// latest update of the weather condition
    required DateTime updatedAt,

    /// a string containing the image url
    required String image,

    /// a number for the perceived temperature
    required double perceivedTemp,

    /// a number for the humidity percentage
    required double humidity,

    /// a number for the wind in km/h
    required double wind,
  }) = _CurrentWeather;

  factory CurrentWeather.fromModel(CurrentWeatherDto dto) {
    final truncatedUrl = dto.current.condition.icon.substring(2);
    final imageUrl = 'https://$truncatedUrl';

    return CurrentWeather(
      temp: dto.current.tempC.toInt(),
      weather: dto.current.condition.text,
      updatedAt: dto.current.lastUpdated,
      image: imageUrl,
      wind: dto.current.windKph,
      perceivedTemp: dto.current.feelslikeC,
      humidity: dto.current.humidity,
    );
  }
}
