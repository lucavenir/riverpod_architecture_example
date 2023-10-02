import 'package:isar/isar.dart';

@collection
class IsarCurrentWeatherDto {
  IsarCurrentWeatherDto({
    required this.text,
    required this.icon,
    required this.lastUpdated,
    required this.tempC,
    required this.windKph,
    required this.humidity,
    required this.feelslikeC,
    this.lastUpdatedEpoch,
    this.tempF,
    this.isDay,
    this.windMph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.cloud,
    this.feelslikeF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  final String text;
  final String icon;
  final DateTime lastUpdated;
  final double tempC;
  final double windKph;
  final double humidity;
  final double feelslikeC;
  final int? lastUpdatedEpoch;
  final double? tempF;
  final int? isDay;
  final double? windMph;
  final double? windDegree;
  final String? windDir;
  final double? pressureMb;
  final double? pressureIn;
  final double? precipMm;
  final double? precipIn;
  final double? cloud;
  final double? feelslikeF;
  final double? visKm;
  final double? visMiles;
  final double? uv;
  final double? gustMph;
  final double? gustKph;
}
