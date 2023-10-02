import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/current_weather.dart';
import '../adapters/isar_current_weather_adapter.dart';
import '../models/isar_current_weather_dto.dart';

part 'current_weather_local.g.dart';

@riverpod
CurrentWeatherLocal currentWeatherLocal(CurrentWeatherLocalRef ref) {
  throw UnimplementedError('This source has yet to be created ');
}

class CurrentWeatherLocal {
  const CurrentWeatherLocal(this.db);
  final Isar db;

  IsarCurrentWeatherDto saveCurrentWeather(CurrentWeather currentWeather) {
    final dto = currentWeather.toDto();
    db.writeTxn(() => db.isarCurrentWeatherDtos.put(dto));
    return dto;
  }

  CurrentWeather? getCurrentWeatherFromDb() {
    final dto = db.isarCurrentWeatherDtos.getSync(0);
    return dto?.toEntity();
  }
}
