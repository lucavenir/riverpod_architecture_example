import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../data/api/current_weather/models/current_weather.api.model.dart';
import '../../../data/db/current_weather/models/local_current_weather.model.dart';

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
}

extension CurrentWeatherViews on CurrentWeather {
  String get formattedHumidity {
    final integerHumidity = humidity.round();
    return '$integerHumidity %';
  }

  String get formattedWind {
    final twoDecimalFormat = NumberFormat('###.##');
    final formattedWind = twoDecimalFormat.format(wind);
    return '$formattedWind km/h';
  }

  String get formattedTemp {
    final oneDecimalFormat = NumberFormat('##0.#');
    final formattedTemp = oneDecimalFormat.format(temp);
    return '$formattedTemp °C';
  }

  String get imageUrl {
    final url = 'https:$image';
    return url;
  }
}

extension CurrentWeatherEntityMapper on CurrentWeather {
  CurrentWeatherDbModel toDbModel() {
    return CurrentWeatherDbModel(
      weather: weather,
      image: image,
      temp: temp,
      updatedAt: updatedAt,
      wind: wind,
      perceivedTemp: perceivedTemp,
      humidity: humidity,
    );
  }
}

extension CurrentWeatherApiMapper on CurrentWeatherApiModel {
  CurrentWeather toEntity() {
    return CurrentWeather(
      weather: current.condition.text,
      image: current.condition.icon,
      temp: current.tempC.toInt(),
      updatedAt: current.lastUpdated,
      wind: current.windKph,
      perceivedTemp: current.feelslikeC,
      humidity: current.humidity,
    );
  }
}

extension CurrentWeatherDbMapper on CurrentWeatherDbModel {
  CurrentWeather toEntity() {
    return CurrentWeather(
      weather: weather,
      image: image,
      temp: temp,
      updatedAt: updatedAt,
      wind: wind,
      perceivedTemp: perceivedTemp,
      humidity: humidity,
    );
  }
}
