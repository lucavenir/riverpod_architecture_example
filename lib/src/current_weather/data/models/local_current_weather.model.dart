import 'package:isar/isar.dart';

import '../../domain/entities/current_weather.model.dart';

part 'local_current_weather.model.g.dart';

@collection
class LocalCurrentWeatherModel {
  LocalCurrentWeatherModel({
    required this.weather,
    required this.image,
    required this.updatedAt,
    required this.temp,
    required this.wind,
    required this.humidity,
    required this.perceivedTemp,
    this.id = 0,
  });
  factory LocalCurrentWeatherModel.fromEntity(CurrentWeather entity) {
    return LocalCurrentWeatherModel(
      weather: entity.weather,
      image: entity.image,
      temp: entity.temp,
      updatedAt: entity.updatedAt,
      wind: entity.wind,
      perceivedTemp: entity.perceivedTemp,
      humidity: entity.humidity,
    );
  }

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

  final Id id;
  final String weather;
  final String image;
  final DateTime updatedAt;
  final int temp;
  final double wind;
  final double humidity;
  final double perceivedTemp;
}
