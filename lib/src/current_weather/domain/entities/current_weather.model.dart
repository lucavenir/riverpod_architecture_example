import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/interfaces/current_weather_interface.dart';

part 'current_weather.model.freezed.dart';

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

  factory CurrentWeather.fromModel(CurrentWeatherInterface model) {
    final truncatedUrl = model.current.condition.icon.substring(2);
    final imageUrl = 'https://$truncatedUrl';

    return CurrentWeather(
      temp: model.current.tempC.toInt(),
      weather: model.current.condition.text,
      updatedAt: model.current.lastUpdated,
      image: imageUrl,
      wind: model.current.windKph,
      perceivedTemp: model.current.feelslikeC,
      humidity: model.current.humidity,
    );
  }
}
