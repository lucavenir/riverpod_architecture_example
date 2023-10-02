import 'package:isar/isar.dart';

part 'local_current_weather_dto.g.dart';

@collection
class LocalCurrentWeatherDto {
  LocalCurrentWeatherDto({
    required this.weather,
    required this.image,
    required this.updatedAt,
    required this.temp,
    required this.wind,
    required this.humidity,
    required this.perceivedTemp,
    this.id = 0,
  });

  final Id id;
  final String weather;
  final String image;
  final DateTime updatedAt;
  final int temp;
  final double wind;
  final double humidity;
  final double perceivedTemp;
}
