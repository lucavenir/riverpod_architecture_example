import 'package:isar/isar.dart';

import '../../domain/entities/current_weather.model.dart';
import '../interfaces/current_weather_interface.dart';
import 'condition.model.dart';
import 'current.model.dart';

part 'local_current_weather.model.g.dart';

@collection
class LocalCurrentWeatherModel implements CurrentWeatherInterface {
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

  @ignore
  @override
  CurrentModel get current => CurrentModel(
        condition: ConditionModel(text: weather, icon: image),
        lastUpdated: updatedAt,
        tempC: temp.toDouble(),
        windKph: wind,
        humidity: humidity,
        feelslikeC: perceivedTemp,
      );
}
