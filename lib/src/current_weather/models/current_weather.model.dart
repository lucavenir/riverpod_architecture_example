import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../clients/local_db.client.dart';
import '../../../data/models/current_weather/current_weather.api.model.dart';

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
  CurrentWeatherDbModelCompanion toDbModel() {
    return CurrentWeatherDbModelCompanion(
      weather: drift.Value(weather),
      image: drift.Value(image),
      temp: drift.Value(temp),
      updatedAt: drift.Value(updatedAt),
      wind: drift.Value(wind),
      perceivedTemp: drift.Value(perceivedTemp),
      humidity: drift.Value(humidity),
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

extension CurrentWeatherDbMapper on List<CurrentWeatherDbModelData> {
  CurrentWeather toEntity() {
    final list = [
      ...map(
        (e) => CurrentWeather(
          humidity: e.humidity,
          image: e.image,
          perceivedTemp: e.perceivedTemp,
          temp: e.temp,
          updatedAt: e.updatedAt,
          weather: e.weather,
          wind: e.wind,
        ),
      ),
    ];
    return list.first;
  }
}
